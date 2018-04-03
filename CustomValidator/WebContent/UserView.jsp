<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri= "http://java.sun.com/jsf/core" prefix="f" %>
    <%@taglib uri= "http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html>
<html>
	<f:view>
		<head>
			<title>Tax Calculation</title>
			<style>
			table{
				margin: 0 auto;
				border-collapse: collapse;
			}
			.css1{
				background-color: orange;
			}
			.css2{
			background-color:white;
			}
			.css3{
				color: red;
			}
			tfoot,thead{
				background-color: red;
				text-align: center;
				color:white;
				}
			</style>
		</head>
		<body>
		<h1 align="center">User Form</h1>
			<hr size="2"/>
				<h:panelGrid id="pg1" columns="2" columnClasses="css1,css2,css3" cellpadding="10" >
				
					<h:outputText value ="Email"></h:outputText>
					<h:outputText value="#{ubean.email}"></h:outputText>
					
					<h:outputText value ="Date Of Birth"></h:outputText>
					<h:outputText value="#{ubean.dt}"></h:outputText>
					
				</h:panelGrid>
		
		</body>

		

	</f:view>
</html>