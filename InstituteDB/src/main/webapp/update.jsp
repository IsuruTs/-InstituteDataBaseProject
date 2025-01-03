<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update the Institute Details</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
			body {
			font-family: Arial, Helvetica, sans-serif;
			background-image: url("Backgroundimage.avif");

  			height: 100%; 

  			background-position: center;
  			background-repeat: no-repeat;
  			background-size: cover;
			}
			form {border: 3px solid #f1f1f1;}
			
			input[type=text], input[type=password] {
			  width: 100%;
			  padding: 12px 20px;
			  margin: 8px 0;
			  display: inline-block;
			  border: 1px solid #ccc;
			  box-sizing: border-box;
			}
			
			button {
			  background-color: #40B5AD;
			  color: blue;
			  padding: 14px 20px;
			  margin: 8px 0;
			  cursor: pointer;
			  font-weight : bold ;
			border: 2px solid black;
			border-radius:10px;
			width: 100%;
			}
			
			button:hover {
			  opacity: 0.8;
			}
			.imgcontainer {
			  text-align: center;
			  margin: 12px 0 12px 0;
			}
			
			img.avatar {
			  width: 10%;
			  border-radius: 50%;
			}
			
			.container {
			  padding: 16px;
			}
			.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}



.topnav a.active {
  background-color: #04AA6D;
  color: white;
  float: right;
}
		</style>
</head>
<body>
<header>
	<nav class="navbar navbar-expand-md navbar-dark"
	style="background-color:blue">
	<div>
	<a href="http://www.xadmin.net" class="navbar-brand"> Institute DataBase Management Application</a>
	</div>
	</header>
	<div class="topnav">
  <a class="active" href="display.jsp">Home Page</a>
</div>
	<br>
<div align="center">
<h2>Please Enter the Update Details</h2>
	<%
		String id = request.getParameter("id");
		String region= request.getParameter("region");
		String customername= request.getParameter("customername");
		String lab= request.getParameter("lab");
		String section= request.getParameter("section");
		String phone= request.getParameter("phone");
		String principal= request.getParameter("principal");
		String model= request.getParameter("model");
		String serialno= request.getParameter("serialno");
	%>
	
	<form action="UpdateServlet" method="post">
		<table>
			<tr>
				<td>Id:</td>
				<td><input type="text" id="id" name="id" value="<%=id%>" readonly></td>
			</tr>
			<tr>
				<td>Reigon:</td>
				<td><input type="text" id="region" name="region" value="<%=region%>" required></td>
			</tr>
			<tr>
				<td>Customer Name:</td>
				<td><input type="text" id="customername" name="customername" value="<%=customername%>" required></td>
			</tr>
			<tr>
				<td>Lab:</td>
				<td><input type="text" id="lab" name="lab" value="<%=lab%>" required></td>
			</tr>
			<tr>
				<td>Section:</td>
				<td><input type="text" id="section" name="section" value="<%=section%>" required></td>
			</tr>
			<tr>
				<td>Phone No:</td>
				<td><input type="text" id="phone" name="phone" value="<%=phone%>" required></td>
			</tr>
			<tr>
				<td>Principal:</td>
				<td><input type="text" id="principal" name="principal" value="<%=principal%>" required></td>
			</tr>
			<tr>
				<td>Model:</td>
				<td><input type="text" id="model" name="model" value="<%=model%>" required></td>
			</tr>
			<tr>
				<td>Serial No:</td>
				<td><input type="text" id="serialno" name="serialno" value="<%=serialno%>" required></td>
			</tr>
			<tr>
				<td colspan="2"><button>Submit</button></td>
			</tr>
		</table>
	
	</form>

</div>
</body>
</html>