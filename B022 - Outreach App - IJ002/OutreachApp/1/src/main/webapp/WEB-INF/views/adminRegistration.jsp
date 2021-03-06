<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
.third {
	

	background-repeat: no-repeat;
	margin-top: 150px;
	border-style: dashed;
	margin-left: 550px;
	margin-right: 400px;
	border-radius: 50px;
	border: 5px solid yellow;
	padding: 50px;
	margin-bottom: 300px;
}
radio {
	radius: 20px;
}

.header {
	font-size: 70px;
	font-style: bold;
	background-color: green;
	margin-top: 10px;
}
.btn {
  background-color: DodgerBlue;
  border: none;
  color: white;
  padding: 12px 16px;
  font-size: 16px;
  cursor: pointer;
}
.glow {
  font-size: 40px;
  color: #fff;
  text-align: center;
  -webkit-animation: glow 1s ease-in-out infinite alternate;
  -moz-animation: glow 1s ease-in-out infinite alternate;
  animation: glow 1s ease-in-out infinite alternate;
}

@-webkit-keyframes glow {
  from {
    text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
  }
  to {
    text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
  }
}
h2 {
	margin: 3px 3px;
}

#submit{

  font-size: 30px;
  color: #fff;
  text-align: center;
  -webkit-animation: glow 1s ease-in-out infinite alternate;
  -moz-animation: glow 1s ease-in-out infinite alternate;
  animation: glow 1s ease-in-out infinite alternate;
  
}

@-webkit-keyframes glow {
  from {
    text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
  }
  to {
    text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
  }


}
#volunteerId {
	height: 25px;
}

#password {
	height: 25px;
}
body{
background-image: url(../images/adminRegistration.jpg);
}
</style>
<body id="bo">

<button class="btn"><i class="fa fa-home"></i> Home</button>
	
		
<center class="third">
        <h1 class="glow">Registration Form for Admin</h1>
		<form:form action="/registerAdmin" method="post"
			modelAttribute="admin">
			<table>

				<tr>
					<td><h2>Admin Id:</h2></td>
					<td><form:input path="adminId" id="volunteerId"
							name="volunteerId" required="required" /></td>
				</tr>
				<tr>
					<td><h2>First Name:</h2></td>
					<td><form:input path="firstName" id="firstName"
							name="firstName" required="required" /></td>
				</tr>
				<tr>
					<td><h2>Last Name:</h2></td>
					<td><form:input path="lastName" id="lastName" name="lastName"
							required="required" /></td>
				</tr>
				<tr>
					<td><h2>Age:</h2></td>
					<td><form:input path="age" id="age" name="age"
							required="required" /></td>
				</tr>
				<tr>
					<td><h2>Contact Number:</h2></td>
					<td><form:input path="contactNumber" id="contactNumber"
							name="contactNumber" required="required" maxlength="10"
							pattern="[7-9]{1}[0-9]{9}" /></td>
				</tr>
				<tr>
					<td><h2>Gender:</h2></td>
					<td><form:radiobutton path="gender" name="gender" value="Male"
							required="required" />Male <form:radiobutton path="gender"
							name="gender" value="Female" /> Female</td>
				</tr>
				<tr>
					<td><h2>Password:</h2></td>
					<td><form:password path="password" id="password"
							name="password" required="required" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Register" name="submit"
						id="submit" /></td>
				</tr>

			</table>
		</form:form>

	</center>

</body>
</html>
