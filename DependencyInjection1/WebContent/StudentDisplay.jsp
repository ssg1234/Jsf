<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri= "http://java.sun.com/jsf/core" prefix="f" %>
    <%@taglib uri= "http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html>
<html>
	<f:view>
		<head>
			<title>Student Details</title>
		<style>
		 	table{
				margin: 0 auto;
				border-collapse: collapse;
				}
				.css1{
				background-color:orange;
				}
				.head{
					background-color: red;
					color:white;
				}
				.odd{
				background-color: wheat;
				}
				.even{
				background-color: orange;
				}
			</style>
		</head>
		<body>
		<h1 align="center">Student Details</h1>
		<hr size="2"/>
		
		<h:dataTable value="#{sbean.slist}" var="s" cellpadding="10" 
				headerClass="head" rowClasses="even,odd">
		<h:column>
			<f:facet name="header">
				<h:outputText value="#{msg.stuId }"></h:outputText>
			</f:facet>
				<h:outputText value="#{s.stuId}"></h:outputText>
		</h:column>
		
		<h:column>
			<f:facet name="header">
				<h:outputText value="#{msg.stuName}"></h:outputText>
			</f:facet>
				<h:outputText value="#{s.stuName}"></h:outputText>
		</h:column>
		
		<h:column>
			<f:facet name="header">
				<h:outputText value="#{msg.marks}"></h:outputText>
			</f:facet>
				<h:outputText value="#{s.marks}"></h:outputText>
		</h:column>
		
		<h:column>
			<f:facet name="header">
				<h:outputText value="#{msg.dept}"></h:outputText>
			</f:facet>
				<h:outputText value="#{s.dept}"></h:outputText>
		</h:column>
		
		<h:column>
			<f:facet name="header">
				<h:outputText value="#{msg.dob}"></h:outputText>
			</f:facet>
				<h:outputText value="#{s.dob}">
					<f:convertDateTime pattern="dd-MMM-yyyy"/>
				</h:outputText>
		</h:column>
		
		</h:dataTable>
		</body>
	</f:view>
</html>