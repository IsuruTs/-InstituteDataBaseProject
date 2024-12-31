<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Institute Data Update Form</title>
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
			  background-color: #04AA6D;
			  color: white;
			  padding: 14px 20px;
			  margin: 8px 0;
			  border: none;
			  cursor: pointer;
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
			
		</style>
</head>
<body>
<div align="center">
<h2>Enter Institute Details</h2>
	<form action="InsertServlet" method="post">
		<table>
			<tr>
				<td>Reigon:</td>
				<td><input type="text" name="region" required></td>
			</tr>
			<tr>
				<td>Customer Name:</td>
				<td><input type="text" name="customername" required></td>
			</tr>
			<tr>
				<td>Lab:</td>
				<td><input type="text" name="lab" required></td>
			</tr>
			<tr>
				<td>Section:</td>
				<td><input type="text" name="section" required></td>
			</tr>
			<tr>
				<td>Phone No:</td>
				<td><input type="text" name="phone" required></td>
			</tr>
			<tr>
				<td>Principal:</td>
				<td><input type="text" name="principal" required></td>
			</tr>
			<tr>
				<td>Model:</td>
				<td><input type="text" name="model" required></td>
			</tr>
			<tr>
				<td>Serial No:</td>
				<td><input type="text" name="serialno" required></td>
			</tr>
			<tr>
				<td colspan="2"><button><input type="submit" value="Submit"></button></td>
			</tr>
		</table>
	
	</form>
</div>
</body>
</html>