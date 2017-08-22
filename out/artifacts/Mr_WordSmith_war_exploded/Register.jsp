<%--
  Created by IntelliJ IDEA.
  User: TonyZheng
  Date: 22/8/17
  Time: 2:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Register</title>
</head>
<body>
	<h1>Register</h1>
<form name="myForm" action="index.jsp" method="POST">
	<table border="0">
		<tbody>
		<tr>
			<td>
				First Name:
			</td>
			<td>
				<input type="text" name="first" value="" size="50"/>
			</td>
		</tr>
		<tr>
			<td>
				Last Name:
			</td>
			<td>
				<input type="text" name="last" value="" size="50"/>
			</td>
		</tr>
		</tbody>
	</table>
	<input type="reset" value="Clear" name="clear"/>
	<input type="submit" value="Submit" name="submit"/>
</form>

</body>
</html>
