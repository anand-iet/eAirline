<html>
	<head>
		<title>Login</title>
		<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
		<script type="text/javascript" src="js.js"></script>
	</head>
	<body>
		<div id="header" align="center">
			<h1>
				E-Voting Systems
			</h1>
		</div>
		<div id="page" align="center">
			<br />
			<br />
			<br />
			<br />
			<%! String[] months=new String[]{"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"}; %>

			<html>
				<head>
					<title>Employee Registration</title>
					<link href="style.css" rel="stylesheet" type="text/css"
						media="screen" />
					<script type="text/javascript">
					function validateForm(frm)
					{
					var firstName=document.forms["registration"]["firstName"].value;
					var lastName=document.forms["registration"]["lastName"].value;
					var fatherName=document.forms["registration"]["fatherName"].value;
					var email=document.forms["registration"]["email"].value;
					var mobile=document.forms["registration"]["mobileNo"].value;
					var localAddress=document.forms["registration"]["localAddress"].value;
					var permanentAddress=document.forms["registration"]["permanentAddress"].value;
					var salary=document.forms["registration"]["salary"].value;
					var dateOfJoining=document.forms["registration"]["dateOfJoining"].value;
					if(firstName.length<1)
					{
						alert('First Name is required.')
					}
					else if(lastName.length<1)
					{
						alert('Last Name is required.')
					}
					else if(fatherName.length<1)
					{
						alert('Father Name is required.')
					}
					else if(localAddress.length<1)
					{
						alert('Local Address is required.')
					}
					else if(permanentAddress.length<1)
					{
						alert('Permanent Address is required.')
					}
					else if(email.length<1)
					{
						alert('Email is required.')
					}
					else if(mobile.length<1)
					{
						alert('Mobile No is required.')
					}
					else if(salary.length<1)
					{
						alert('Salary is required.')
					}
					else if(dateOfJoining.length<1)
					{
						alert('Date of joining is required.')
					}
					else
					{
						document.registration.action="addEmployee.jsp";
						document.registration.submit();
					}
				}
			</script>
				</head>
				<body>
					<br />
					<br />

					<div id="menu-wrapper">
						<div id="menu">
							<h2>
								new voter registration
							</h2>
						</div>
					</div>
					<div id="page" align="center">
						<form method="POST" action="VoterReg.jsp">
							<table>
								<tr>
									<td>
										<span id="text">First Name</span>
									</td>
									<td>
										<input type="text" name="firstName">
									</td>
								</tr>
								<tr>
									<td>
										<span id="text">Middle Name</span>
									</td>
									<td>
										<input type="text" name="middleName">
									</td>
								</tr>
								<tr>
									<td>
										<span id="text">Last Name</span>
									</td>
									<td>
										<input type="text" name="lastName">
									</td>
								</tr>
								<tr>
									<td>
										<span id="text">Father Name</span>
									</td>
									<td>
										<input type="text" name="fatherName">
									</td>
								</tr>
								<tr>
									<td>
										<span id="text">Mother Name</span>
									</td>
									<td>
										<input type="text" name="motherName">
									</td>
								</tr>
								<tr>
									<td>
										<span id="text">Gender</span>
									</td>
									<td>
										<input type="radio" name="gender" value="Male"
											checked="checked">
										<span id="text">Male</span>
										</input>
										<input type="radio" name="gender" value="Female">
										<span id="text">Female</span>
										</input>
									</td>
								</tr>
								<tr>
									<td>
										<span id="text">Date Of Birth</span>
									</td>
									<td>
										<span id="text">Day</span>
										<select name="day">

											<c:forEach var="d" begin="1" end="31">
												<option value="<c:out value="${d}"/>">
													<c:out value="${d}" />
												</option>
											</c:forEach>
										</select>

										<span id="text">Month</span>
										<select name="month">

											<option value="Jan">
												Jan
											</option>
											<option value="Feb">
												Feb
											</option>
											<option value="Mar">
												Mar
											</option>
											<option value="Apr">
												Apr
											</option>
											<option value="May">
												May
											</option>
											<option value="Jun">
												Jun
											</option>
											<option value="Jul">
												Jul
											</option>
											<option value="Aug">
												Aug
											</option>
											<option value="Sep">
												Sep
											</option>
											<option value="Oct">
												Oct
											</option>
											<option value="Nov">
												Nov
											</option>
											<option value="Dec">
												Dec
											</option>
										</select>
										<span id="text">Year</span>
										<select name="year">

											<c:forEach var="y" begin="1970" end="1996">
												<option value="<c:out value="${y}"/>">
													<c:out value="${y}" />
												</option>
											</c:forEach>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										<span id="text">Pan Card No</span>
									</td>
									<td>
										<input type="text" name="pan_no" />
									</td>
								</tr>
								<tr>
									<td>
										<span id="text">Adhaar Card No</span>
									</td>
									<td>
										<input type="text" name="aadhar_no" />
									</td>
									
								</tr>
								
								<tr>
									<td>
										<span id="text">Area</span>
									</td>
									<td>
										<input type="text" name="area_code">
									</td>
								</tr>
								
								<tr>
									<td>
										<span id="text">Local Address</span>
									</td>
									<td>
										<textarea name="localAddress" rows="2" cols="16"></textarea>
									</td>
								</tr>
								<tr>
									<td>
										<span id="text">Permanent Address</span>
									</td>
									<td>
										<textarea name="permanentAddress" rows="2" cols="16"></textarea>
									</td>
								</tr>
								<tr>
									<td>
										<span id="text">Email</span>
									</td>
									<td>
										<input type="text" name="email" />
									</td>
								</tr>
								<tr>
									<td>
										<span id="text">Mobile</span>
									</td>
									<td>
										<input type="text" name="mobileNo" />
									</td>
								</tr>
								<tr>
									<td>
										<span id="text">Height(c.m.)</span>
									</td>
									<td>
										<input type="text" name="height" />
									</td>
								</tr>
								<tr>
									<td>
										<span id="text">Weight</span>
									</td>
									<td>
										<input type="text" name="weight" />
									</td>
								</tr><tr>
									<td></td>
									<td>
										<input type="button" value="Register"
											onclick="validateForm(this);" />
									</td>
								</tr>
								<br>

							</table>
							<input type="submit" value="submit" onclick="validateForm(this)"/>
						</form>


					</div>

				</body>
			</html>