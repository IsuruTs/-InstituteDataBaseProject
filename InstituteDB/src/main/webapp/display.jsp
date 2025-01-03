<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Institute Data Table</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  height: 100%;
  margin: 0;

  background-image: url("Backgroundimage.avif");

  height: 100%; 

  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
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

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
  float: right;
}


table, th, td {
  border:3px solid black;
}
td,th {
  text-align: center;
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
  <a href="register.jsp">New User Registration</a>
  <a href="profile.jsp">User Setting</a>
  <a class="active" href="login.jsp">Sign Out</a>
</div>
	<br>
<div align="center">
<h2>Institute Data Table</h2>

<br>
<input type="text" id="searchInput" placeholder="search...">
<button><a href="insert.jsp">Add New Customer</a></button>
<br>
<br>

<table style="width:80%">
	<tr>
		<th>ID</th>
		<th>Region</th>
		<th>Customer Name</th>
		<th>Lab</th>
		<th>Section</th>
		<th>Phone No</th>
		<th>Principal</th>
		<th>Model</th>
		<th>Serial No</th>
		<th colspan="2">Action</th>
		
		
	</tr>
	<c:forEach var="instituteDB" items="${allInstituteDBs}">
	<tr>
		<td>${instituteDB.id}</td>
		<td>${instituteDB.region}</td>
		<td>${instituteDB.customername}</td>
		<td>${instituteDB.lab}</td>
		<td>${instituteDB.section}</td>
		<td>${instituteDB.phone}</td>
		<td>${instituteDB.principal}</td>
		<td>${instituteDB.model}</td>
		<td>${instituteDB.serialno}</td>
		
		<td>
			<a href="update.jsp?id=${instituteDB.id}&region=${instituteDB.region}&customername=${instituteDB.customername}&lab=${instituteDB.lab}&section=${instituteDB.section}&phone=${instituteDB.phone}&principal=${instituteDB.principal}&model=${instituteDB.model}&serialno=${instituteDB.serialno}">
				<button>Update</button>
			</a>
		</td>
		
		<td>
			<form action ="DeleteServlet" method = "post">
			<input type="hidden" name="id" value ="${instituteDB.id}"/>
				<button>Delete</button>
			</form>
		</td>
		
	</tr>
	
	</c:forEach>

</table>
</div>

<script>

function filterTable(){
	var input,filter,table,tr,td,i,txtValue;
	input = document.getElementById("searchInput");
	filter = input.value.toUpperCase();
	table =document.querySelector("table");
	tr=table.getElementsByTagName("tr");
	
	for(i=0;i<tr.length;i++){
		td = tr[i].getElementsByTagName("td");
		for(var j=0;j<td.length;j++){
			if(td[j]){
				txtValue = td[j].textContenct || td[j].innerText;
				if(txtValue.toUpperCase().indexOf(filter)>-1){
					tr[i].style.display="";
					break
				}else{
					tr[i].style.display="None";
				}
			}
		}
	}
}

document.getElementById("searchInput").addEventListener("input",filterTable);

</script>

</body>
</html>