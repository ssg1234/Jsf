<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri= "http://java.sun.com/jsf/core" prefix="f" %>
    <%@taglib uri= "http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html>
<html>
	<f:view>
		<head>
			<title>Tax Calculation</title>
		</head>
		<body>
		<h1 align="center">Tax Result</h1>
		
		<hr size="3"/>
			<h:panelGrid id="pg" columns="2" bgcolor="wheat" cellpadding="10">
			<f:facet name="header">
			<h:outputText value= "SimpleInterest"></h:outputText>
			</f:facet>
				<h:outputText value="Amount" />
				<h:outputText value="#{ibean.amt}" />
				
				<h:outputText value="Rate" />
				<h:outputText value="#{ibean.rate}" />
				
				<h:outputText value="Years" />
				<h:outputText value="#{ibean.amt}" />
				
				<h:outputText value="#{ibean.resCaption}" />
				<h:outputText value="#{ibean.result}">
					<f:convertNumber minFractionDigits="2" maxFractionDigits="2"/>
					</h:outputText>
				<f:facet name="footer">
				</f:facet>
			</h:panelGrid>
		</body>
	</f:view>
</html>