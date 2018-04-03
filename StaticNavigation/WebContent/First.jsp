<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
    <%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html>
<html>
<f:view>
<head>
<title>First Page</title>
</head>
<body>
<h1 align="center">First page</h1>
<hr size="2"/>
<h:form>
	<div align="center">
	 <h:commandLink value="Go to main page" action="Main"></h:commandLink>
	 
	 </div>
</h:form>
</body>
</f:view>
</html>