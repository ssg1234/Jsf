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
			<h1 align="center">Tax Calculation</h1>
			<hr size="2"/>
			<h:form id="tfrm">
				<h:panelGrid id="pg1" columns="3" columnClasses="css1,,css3" cellpadding="10" bgcolor="wheat">
				<f:facet name="header">
				<h:outputText value="Tax Form">Tax Form</h:outputText>
				</f:facet>
					<h:outputText value ="Employee Name"></h:outputText>
					<h:inputText id="name" value="#{tbean.ename}" required="true" 
								requiredMessage="Name is mandatory"
								validatorMessage="only alphabets allowed and it must be between 3 and 10 characters">
						<f:validateLength minimum="3" maximum="10"/>
						<f:validateRegex pattern=""/>	
					</h:inputText>
								<h:message for="name"/>
					
					<h:outputText value ="Annual Income"></h:outputText>
					<h:inputText id="aincome" value="#{tbean.income}" required="true"
							requiredMessage="Income is mandatory"></h:inputText>
							<h:message for="aincome"/>
					<f:facet name="footer">
					<h:commandButton value="calcTax" action="#{tbean.calcTax}"></h:commandButton>
					</f:facet>
				</h:panelGrid>
				</h:form>
		</body>
	</f:view>
</html>