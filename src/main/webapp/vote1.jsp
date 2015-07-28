<%@ page language="java"
	import="java.util.*,java.sql.*,javax.sql.*,javax.naming.*"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%!String consti;%>

<%
System.out.println("Hello there");
	out.println("              <h1>WELCOME TO VOTING PANNEL</h1>");
	HttpSession ses = request.getSession(true);
	Object o1 = ses.getAttribute("username");
	String s = (String) o1;
	// Integer i = (Integer)o1;
	System.out.println("username is =" + s);

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("11");

		Connection con = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:XE", "ravi", "ravi");
		Statement stmt = con.createStatement();
		String q = "select * from voterinfo where adhar='" + s + "'";
		System.out.println("12");

		ResultSet rs = stmt.executeQuery(q);
		System.out.println("13");

		while (rs.next()) {
			System.out.println("14");

			consti = rs.getString(16);
			System.out.println("Area is : "+consti);
			//out.println("Your roll no is "+roll);
			//out.println("Your mark is" +name);
		}
	} catch (Exception e) {
		System.out.println("Error found");

		// TODO: handle exception
	}
%>


<%
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("11");

		Connection con = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:XE", "ravi", "ravi");
		Statement stmt = con.createStatement();

		String q1 = "select * from electionup where constituency='"
				+ consti + "'";
		ResultSet rs = stmt.executeQuery(q1);

		//out.println("<br>CAND_ID");

		out.println("<br>CONSTI ");
		out.println("PARTY ");
		out.println("NAME ");

	out.println("<html><head><title>voting</title>"+
			"</head><body><form action='vote2.jsp' method='get'>");
		while (rs.next()) {
			String cid = rs.getString(5);
			String cons = rs.getString(2);
			String party = rs.getString(3);
			String cname = rs.getString(4);

			System.out.println("\n" + cid);
			System.out.println("\n" + cons);
			System.out.println("\n" + party);
			System.out.println("\n" + cname);

			//out.println("<br>             " + cid);
			out.println("<br>                 " + cons);
			out.println("                 " + party);
			out.println("                 " + cname);
			out.println("<input type='radio' name='cname' value='"+cid+"' >");

			//System.out.println(consti);

		}

		out.println("<BR><input type='submit' value='VOTE!'>");
		out.println("</form></body></html>");
	} catch (Exception e) {
		System.out.println("Error found again" + e);

		// TODO: handle exception
	}
%>
