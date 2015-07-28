<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java"
	import="java.util.*,java.sql.*,javax.sql.*,javax.naming.*"
	pageEncoding="ISO-8859-1"%>
<%
	String un = request.getParameter("username");
	String pass = request.getParameter("password");
	session.setAttribute("oname", un);
	session.setAttribute("opass", pass);
	int temp = 0;
	try {

		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:XE", "ravi", "ravi");
		Statement stmt = conn.createStatement();
		//System.out.println("hi");
		String qc = "select * from officerlogin where oid='" + un
				+ "' and password='" + pass + "'";
				//System.out.println("hi1");
		
		ResultSet rs = stmt.executeQuery(qc);
				//System.out.println("hi2");
		
		while (rs.next()) {
			temp++;
		}
				//System.out.println("hi3");
		
		if (temp == 1) {
%>
<html>
<head>
<title>OFFICER</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="js.js"></script>
</head>
<body>
	<div id="header" align="center">
		<h1>E-Voting Systems</h1>
	</div>
	<div id="page" align="center">
		<br /> <br /> <br /> <br />

		<h3>Select the requird action</h3>
		<br /> <br /> <a href="addCandi.jsp">Register Candidate</a> <br /> <br /> <a
			href="addElection.jsp">Add Election</a><br /> <br /> <a href="index.jsp">Log Out</a> 
	</div>
</body>
</html>

<%			
	}
		else {

			out.println("You have written wrong username and password");
			RequestDispatcher rd = request
					.getRequestDispatcher("officer.jsp");
			rd.include(request, response);
		}
	} catch (Exception e) {
		System.out.println("error found");
		System.out.println(e);
		// TODO: handle exception
	}
%>
