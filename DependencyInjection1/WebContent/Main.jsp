<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
     <%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html>
<html>
<f:view>
	<head>
		<title>Home Page</title>
	</head>
	<body>
		<h1 align="center">Home Page</h1>
		<hr size="2"/>
		
		<div align="center">
		<a href="StudentDisplay.jsf">View all Students</a>
		<a href="StudentFrm.jsf">View Students By Id</a>
		<a href="StudentFrm.jsf">View Students By Dept</a>
		</div>
	</body>
  </f:view>

</html>