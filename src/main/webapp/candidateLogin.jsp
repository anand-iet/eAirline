<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java"
	import="java.util.*,java.sql.*,javax.sql.*,javax.naming.*"
	pageEncoding="ISO-8859-1"%>
<%
	String un = request.getParameter("username");
	String pass = request.getParameter("password");
	int temp = 0, totalVotes = 0;
	try {

		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:XE", "ravi", "ravi");
		Statement stmt = conn.createStatement();
		//System.out.println("hi");
		String qc = "select * from candidatelogin where cid='" + un
				+ "' and password='" + pass + "'";
				//System.out.println("hi1");
		
		ResultSet rs = stmt.executeQuery(qc);
				//System.out.println("hi2");
		
		while (rs.next()) {
			temp++;
		}
				System.out.println("hi3");
		
		if (temp == 1) {
			String q = "select votes from results where candidateid='" + un
					+ "'";
							//System.out.println("hi4");
					
			rs = stmt.executeQuery(q);
					//System.out.println("hi5");
			
			while (rs.next()) {
				totalVotes = rs.getInt(1);
			}
			out.println("<h3>Hello "+un+"</h3><br><br>You Have <h1>"+totalVotes+"</h1> votes till now.");
			out.println("<br><br><a href=\"index.jsp\">Log Out</a>");
		}
		else {

			out.println("You have written wrong username and password");
			RequestDispatcher rd = request
					.getRequestDispatcher("candidate.jsp");
			rd.include(request, response);
		}
	} catch (Exception e) {
		System.out.println("error found");
		System.out.println(e);
		// TODO: handle exception
	}
%>
