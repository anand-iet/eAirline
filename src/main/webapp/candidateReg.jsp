<%@ page language="java"
	import="java.util.*,java.sql.*,javax.sql.*,javax.naming.*"
	pageEncoding="ISO-8859-1"%>
<%
	String nm = request.getParameter("name");
	//out.println(fn);
	
	String cid = request.getParameter("cid");
	//out.println(g);

	String password = request.getParameter("pwd");
	//out.println(pan_no);

	String area_code = request.getParameter("area_code");
	//out.println(area_code);

	String party = request.getParameter("party");
	//out.println(weight);
%>
<%
	try {
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("1");

		Connection conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:XE", "ravi", "ravi");

		System.out.println("5");
		//int id=Integer.parseInt(request.getParameter("rno"));System.out.println("6");
		Statement stmt = conn.createStatement();
		System.out.println("7");
		//String q = "select * from voterInfo" ;
		String q1 = "insert into electionup values('"+cid+"','"+area_code+"','"+party+"','"+nm+"','"+cid+"')";
		String q2 = "insert into candidatelogin values ('"+cid+"','"+password+"')";
		System.out.println(q1);

		stmt.executeUpdate(q1);
		stmt.executeUpdate(q2);
		
		out.println("Voter Registration Successful");
		out.println("<br>your username is :" + cid);
		out.println("<br>your password is :" + password);
		out.println("<br>&nbsp&nbsp&nbsp<a href=\"officerLogin.jsp?username="+session.getAttribute("oname")+"&password="+session.getAttribute("opass")+"\">Selection Panel</a>");

	}

	catch (Exception e) {
		System.out.println(e);
	}
%>