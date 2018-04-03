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
				background-color:orange;
				}
				thead,tfoot{
				background-color:black;
				color:white;
				}
			</style>
			
		</head>
		<body>
		<h1 align="center">Tax Result</h1>
		<hr size="3"/>
			<h:panelGrid id="pg" columns="2" columnClasses="css1" bgcolor="wheat" cellpadding="10">
			<f:facet name="header">
			<h:outputText value= "TaxResult"></h:outputText>
			</f:facet>
				<h:outputText value="Employee Name" />
				<h:outputText value="#{tbean.ename}" />
				
				<h:outputText value="Annual Income" />
				<h:outputText value="#{tbean.income}" />
				
				<h:outputText value="Tax to be paid" />
				<h:outputText value="#{tbean.tax}" />
				<f:facet name="footer">
				</f:facet>
			</h:panelGrid>
		</body>
	</f:view>
</html>