<%@ page language="java"
	import="java.util.*,java.sql.*,javax.sql.*,javax.naming.*"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String a = request.getParameter("cname");
	System.out.println(a);
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("11");

		Connection con = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:XE", "ravi", "ravi");
		Statement stmt = con.createStatement();

		String q1 = "select * from electionup where CID='" + a + "'";
		//System.out.println(q1);

		ResultSet rs = stmt.executeQuery(q1);
		rs.next();

		String name = rs.getString(4);

		out.println("Vote Given to " + name);
		out.println("<br><a href=\"index.jsp\">Log Out</a>");
	} catch (Exception e) {
		System.out.println(e);
	}
%>
<%
	//CODE FOR INCREMENT IN DATABASE 

	try {
		System.out.println("HI");
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:XE", "ravi", "ravi");
		Statement stmt = con.createStatement();
		String q = "select * from results where candidateid=(select cid from electionup where cid='"
				+ a + "')";
		System.out.println("HI2");

		ResultSet rs = stmt.executeQuery(q);
		System.out.println("HI3");
		int total = 0;
		while (rs.next()) {
			total = rs.getInt(2);
		}
		total++;
		String qu1 = "insert into results values ('" + a + "'," + total
				+ ")";
		String qu2 = "delete from results where candidateid='"+a+"' and votes="+(total-1)+"";
		System.out.println(qu2);
		rs = stmt.executeQuery(qu1);
		rs = stmt.executeQuery(qu2);
		//System.out.println("Voting done");
		
	} catch (Exception e) {
		System.out.println(e);
	}
%>
