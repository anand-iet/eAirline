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
								New Candidate Registration
							</h2>
						</div>
					</div>
					<div id="page" align="center">
						<form method="POST" action="candidateReg.jsp">
							<table>
								<tr>
									<td>
										<span id="text">Candidate Name</span>
									</td>
									<td>
										<input type="text" name="name">
									</td>
								</tr>
								
								<tr>
									<td>
										<span id="text">CandidateID</span>
									</td>
									<td>
										<input type="text" name="cid" />
									</td>
								</tr>
								<tr>
									<td>
										<span id="text">Password</span>
									</td>
									<td>
										<input type="password" name="pwd" />
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
										<span id="text">Party</span>
									</td>
									<td>
										<input type="text" name="party" />
									</td>
								</tr>
								<tr>	
									<td>
										<input type="submit" value="Register" />
									</td>
									<td>
										<input type="reset" value="Reset" />
									</td>
								</tr>
						</form>
					</div>
<p> Candidate ID formate should be of the type <b>areaCode_serialNumber</b><br>
       Candidate password formate should be of the type <b>areacodeSerialnumber</b><br>
      Areacode should contain only <b>two letters</b> </p>
				</body>
			</html>