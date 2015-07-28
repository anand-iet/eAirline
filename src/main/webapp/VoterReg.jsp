<%@ page language="java"
	import="java.util.*,java.sql.*,javax.sql.*,javax.naming.*"
	pageEncoding="ISO-8859-1"%>
<%
	String fn = request.getParameter("firstName");
	//out.println(fn);

	String mn = request.getParameter("middleName");
	//out.println(mn);

	String ln = request.getParameter("lastName");
	//out.println(ln);

	String fan = request.getParameter("fatherName");
	//out.println(fan);

	String mon = request.getParameter("motherName");
	//out.println(mon);

	String g = request.getParameter("gender");
	//out.println(g);

	String day = request.getParameter("day");
	//out.println(day);

	String month = request.getParameter("month");
	//out.println(month);

	String year = request.getParameter("year");
	//out.println(year);

	String pan_no = request.getParameter("pan_no");
	//out.println(pan_no);

	String aadhar_no = request.getParameter("aadhar_no");
	//out.println(aadhar_no);

	String area_code = request.getParameter("area_code");
	//out.println(area_code);

	String localAddress = request.getParameter("localAddress");
	//out.println(localAddress);

	String permanentAddress = request.getParameter("permanentAddress");
	//out.println(permanentAddress);

	String email = request.getParameter("email");
	//out.println(email);

	String mobileNo = request.getParameter("mobileNo");
	//out.println(mobileNo);

	String height = request.getParameter("height");
	//out.println(height);

	String weight = request.getParameter("weight");
	//out.println(weight);
%>
<%
	try {
		/*System.out.println("1");

		Context initContext = new InitialContext();
		System.out.println("2");
		Context envContext = (Context) initContext
				.lookup("java:/comp/env");
		System.out.println("3");
		DataSource ds = (DataSource) envContext.lookup("jdbc/oracledb");
		System.out.println("4");*/
		//Connection conn = ds.getConnection();
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("1");

		Connection conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:XE", "ravi", "ravi");

		System.out.println("5");
		//int id=Integer.parseInt(request.getParameter("rno"));System.out.println("6");
		Statement stmt = conn.createStatement();
		System.out.println("7");
		//String q = "select * from voterInfo" ;
		String q = "insert into voterInfo values('" + fn + "','" + mn
				+ "','" + ln + "','" + fan + "','" + mon + "','" + g
				+ "','" + day + "-" + month + "-" + year + "','"
				+ pan_no + "','" + aadhar_no + "','" + localAddress
				+ "','" + permanentAddress + "','" + email + "',"
				+ mobileNo + "," + height + "," + weight + ",'"
				+ area_code + "')";
		System.out.println(q);

		stmt.executeUpdate(q);

		System.out.println("8");

		String q1 = "insert into voterLogin values('" + aadhar_no
				+ "','" + pan_no + "')";
		stmt.executeUpdate(q1);
		out.println("Registration Successful");
		out.println("<br>your username is :" + aadhar_no);
		out.println("<br>your password is :" + pan_no);
		out.println("<br>&nbsp&nbsp&nbsp<a href=\"voter.jsp\">Login</a>");

	}

	catch (Exception e) {
		System.out.println(e);
	}
%>