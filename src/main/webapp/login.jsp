<%@ page language="java"
	import="java.util.*,java.sql.*,javax.sql.*,javax.naming.*"
	pageEncoding="ISO-8859-1"%>
<%
	String un = request.getParameter("username");
	String pass = request.getParameter("password");
	try {

		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("11");

		Connection conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:XE", "ravi", "ravi");
		System.out.println("5");

		//int id=Integer.parseInt(request.getParameter("rno"));System.out.println("6");
		Statement stmt = conn.createStatement();
		System.out.println("7");

		String q = "select * from voterlogin where username='" + un
				+ "' and password='" + pass + "'";
		System.out.println(q);

		ResultSet rs = stmt.executeQuery(q);
		System.out.println("8");

		if (rs.next()) {
			System.out.println("9");

			String uname = rs.getString(1);
			System.out.println("10");

			HttpSession ses = request.getSession(true);
			System.out.println(uname);

			ses.setAttribute("username", uname);
			RequestDispatcher rd = request
					.getRequestDispatcher("vote1.jsp");
			rd.forward(request, response);
			//	out.println("hello "+uname+" you have successfully logged in the system.");
		} else {

			out.println("You have written wrong username and password");
			RequestDispatcher rd = request
					.getRequestDispatcher("voter.jsp");
			rd.include(request, response);
		}
	} catch (Exception e) {
		System.out.println("error found");
		out.println(e);
		// TODO: handle exception
	}
%>
