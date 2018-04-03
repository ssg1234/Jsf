<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri= "http://java.sun.com/jsf/core" prefix="f" %>
    <%@taglib uri= "http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html>
<html>
	<f:view>
		<head>
			<title>Interest Calculation</title>
		</head>
		<body>
		<h1 align="center">Interest Calculation</h1>
		
		<hr size="2"/>
		<h:form id="ifrm">
		<h:panelGrid id="pg1" columns="3" cellpadding="10" bgcolor="wheat">
				<f:facet name="header">
				<h:outputText value="Interest Form">Tax Form</h:outputText>
				</f:facet>
				<h:outputText value ="Amount"></h:outputText>
				<h:inputText id="amt" value="#{ibean.amt}" required="true" 
								requiredMessage="Amount is mandatory"
								validatorMessage="Amount must be minimum 5000">
					<f:validateDoubleRange minimum="5000"></f:validateDoubleRange>				
				</h:inputText>
						<h:message for="amt"/>
					
				<h:outputText value ="Rate"></h:outputText>
				<h:inputText id="rate" value="#{ibean.rate}" required="true"
							requiredMessage="Rate is mandatory"
							validatorMessage="rate must be 1 and 30">
					<f:validateDoubleRange minimum="1" maximum="30"></f:validateDoubleRange>			
				</h:inputText>
						<h:message for="rate"/>
							
				<h:outputText value ="Years"></h:outputText>
				<h:inputText id="years" value="#{ibean.years}" required="true"
							requiredMessage="Years is mandatory"
							validatorMessage="rate must be 1 and 30">
					<f:validateLongRange minimum="1" maximum="30"></f:validateLongRange>			
				</h:inputText>
						<h:message for="years"/>
			<f:facet name="footer">
			<h:panelGroup>
				<h:commandButton value="Simple Interest" action="#{ibean.calcSI}"></h:commandButton>
				
				<h:commandButton value="Compound Interest" action="#{ibean.calcCI}"></h:commandButton>
				</h:panelGroup>
			</f:facet>
			</h:panelGrid>
		</h:form>
		</body>
	</f:view>
</html>