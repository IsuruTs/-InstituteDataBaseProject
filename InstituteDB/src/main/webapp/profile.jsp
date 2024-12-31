<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
<style>
			body {
			font-family: Arial, Helvetica, sans-serif;
			background-image: url("Backgroundimage.avif");

  			height: 100%; 

  			background-position: center;
  			background-repeat: no-repeat;
  			background-size: cover;
			}
			
			
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
			  width: 10%;
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
	<h1> User Profile</h1>
	<h2> ID : ${user.id}</h2>
	<h2> Name : ${user.name}</h2>
	<h2> Password : ${user.password}</h2>
	<h2> Phone : ${user.phone}</h2>

	<a href="updateprofile.jsp?id=${user.id}&name=${user.name}&password=${password}&phone=${phone}">
		<button>Update</button>
	</a>
	
	<form action ="AccountDeleteServlet" method = "post">
	<input type="hidden" name="id" value ="${user.id}"/>
		<button>Delete</button>
	</form>
	
</div>

</body>
</html>