<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
     <%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html>
<html>
<f:view>
	<head>
		<title>Static Navigation</title>
	</head>
	<body>
		<h1 align="center">Main Page</h1>
		<hr size="2"/>
		
		<div align="center">
		<h:form>
		<h:commandButton id="btn1" value="go first" action="first"/>&nbsp;&nbsp;
		<h:commandButton  id="btn2" value="go second" action="second"/>
		</h:form>
		</div>
	</body>
  </f:view>

</html>