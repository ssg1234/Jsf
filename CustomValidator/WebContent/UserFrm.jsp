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
			<h:form>
				<h:panelGrid id="pg1" columns="3" columnClasses="css1,css2,css3" cellpadding="10" >
				
					<h:outputText value ="Email"></h:outputText>
					<h:inputText id="txtemail" value="#{ubean.email}" required="true" 
					     requiredMessage="Email is mandatory">
						<f:validator validatorId="emailid"/>
					</h:inputText>
					<h:message for="txtemail"/>
					
					<h:outputText value ="dob"></h:outputText>
					<h:inputText id="txtdob" value="#{ubean.dt}" required="true" 
					     requiredMessage="dob is mandatory" converterMessage="use dd-MM-yyyy pattern">
						<f:converter converterId="dobid"/>
					</h:inputText>
					<h:message for="txtdob"/>
			
					<f:facet name="footer">
					<h:commandButton value="submit" action="#{ubean.processFrm}"></h:commandButton>
					</f:facet>
			
				</h:panelGrid>
						</h:form>
		
		</body>

		

	</f:view>
</html>