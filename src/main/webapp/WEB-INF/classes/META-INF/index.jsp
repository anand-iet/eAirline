<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
		<head>
				<title>Login</title>
				<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
				<script type="text/javascript" src="js.js"></script>
		</head>
		<body>
				<div id="header" align="center"><h1>HRMS</h1></div>
				<div id="page" align="center"><br/><br/><br/><br/>
					<form method="post"  action="login" >
						<table>
							<tr>
								<td><span id="text">Username</span> </td><td><input type="text" name="username" onfocus="getDefault();"></td>
								<td></td><td id="errUsername"></td>
							</tr>
							<tr>
								<td><span id="text">Password</span></td><td><input type="password" name="password" onfocus="getDefault();"></td>
								<td></td><td id="errPassword"></td>
							</tr>
							<tr>
								<td><span id="text">Role</span></td><td><select name="role" ><option value="HR">HR</option>
									<option value="Admin">Admin</option>
									<option value="Employee">Employee</option>
								 </select>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td><td><input type="submit" value="Login" onchange="validateLogin(this);"></td>
							</tr>
							<c:if test="${status eq false}">
							<table><tr>
								<td>&nbsp;</td><td id="msg">Invalid Username and Password.</td>
							</tr></table>
							</c:if>
					</table>
				</form>
			</div>
		</body>
</html>