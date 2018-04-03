<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri= "http://java.sun.com/jsf/core" prefix="f" %>
    <%@taglib uri= "http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html>
<html>
	<f:view>
		<head>
			<title>Student Form</title>
			<style>
			table{
				margin: 0 auto;
				border-collapse: collapse;
			}
			.css1{
				background-color: orange;
			}
			.css2{
				background-color: wheat;
			}
			tfoot,thead{
				background-color: red;
				text-align: center;
				color:white;
				}
			</style>
		</head>
		<body>
			<h1 align="center">View By Student ID</h1>
			<h5 align="center"><a href="Main.jsf"></a></h5>
			<hr size="2"/>
			<h:form id="sfrm">
			<div align="center">
				<h:outputText value ="Enter Student Id"></h:outputText>
				<h:inputText id="name" value="#{sbean.sid}"/>	
				<h:commandButton value="Search" actionListener="#{sbean.viewById}"></h:commandButton>
				</div>
			</h:form>
			<hr size="2"/>
			
			<h:panelGrid columns="2" columnClasses="css1,css2" cellpadding="10" 
			bgcolor="wheat" rendered="#{sbean.stu ne null}">
			<f:facet name="header">
				<h:outputText value="Student Details"></h:outputText>
				</f:facet>
				<h:outputText value="Student ID"></h:outputText>
				<h:outputText value="#{sbean.stu.stuId}"></h:outputText>
				
				<h:outputText value="Student Name"></h:outputText>
				<h:outputText value="#{sbean.stu.stuName}"></h:outputText>
				
				<h:outputText value="Marks"></h:outputText>
				<h:outputText value="#{sbean.stu.marks}"></h:outputText>
				
				<h:outputText value="Department"></h:outputText>
				<h:outputText value="#{sbean.stu.dept}"></h:outputText>
				
				<h:outputText value="Date of Birth"></h:outputText>
				<h:outputText value="#{sbean.stu.dob}">
					<f:convertDateTime pattern="dd-MMM-yyyy"/>
				</h:outputText>
			</h:panelGrid>
			<h:panelGrid bgcolor="wheat" rendered="#{sbean.panelFlag}">
				<f:facet name="header">
					<h:outputText value="Student Details"></h:outputText>
				</f:facet>
				<h:outputText value="No students found"></h:outputText>
			</h:panelGrid>
		</body>
	</f:view>
</html>