<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri= "http://java.sun.com/jsf/core" prefix="f" %>
    <%@taglib uri= "http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html>
<html>
	<f:view>
		<head>
			<title>View by Department</title>
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
		<h1 align="center">View By Department</h1>
		<h5 align="center"><a href="Main.jsf"></a></h5>
		<hr size="2" />
		<div align="center">
			<h:form id="frm">
				<h:outputText value="Choose Department"></h:outputText>
				<h:selectOneMenu onchange="this.form.submit()" 
								 valueChangeListener="#{dbean.viewStudentsByDept}">
					<f:selectItem itemLabel="---Select dept---" itemValue=""/>
					<f:selectItems value="#{dbean.depts}"/>
				</h:selectOneMenu>
			</h:form>
		</div>
		
		<h:dataTable value="#{requestScope.slist}" var="s" cellpadding="10" 
				headerClass="head" rowClasses="even,odd" rendered="#{requestScope.slist ne null}">
		<h:column>
			<f:facet name="header">
				<h:outputText value="Student Id"></h:outputText>
			</f:facet>
				<h:outputText value="#{s.stuId}"></h:outputText>
		</h:column>
		
		<h:column>
			<f:facet name="header">
				<h:outputText value="Student Name"></h:outputText>
			</f:facet>
				<h:outputText value="#{s.stuName}"></h:outputText>
		</h:column>
		
		<h:column>
			<f:facet name="header">
				<h:outputText value="Marks"></h:outputText>
			</f:facet>
				<h:outputText value="#{s.marks}"></h:outputText>
		</h:column>
		
		<h:column>
			<f:facet name="header">
				<h:outputText value="Department"></h:outputText>
			</f:facet>
				<h:outputText value="#{s.dept}"></h:outputText>
		</h:column>
		
		<h:column>
			<f:facet name="header">
				<h:outputText value="Date of Birth"></h:outputText>
			</f:facet>
				<h:outputText value="#{s.dob}">
					<f:convertDateTime pattern="dd-MMM-yyyy"/>
				</h:outputText>
		</h:column>
		
		</h:dataTable>
		</body>
	</f:view>

	
</html>