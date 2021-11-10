<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login.jsp</title>
</head>
<body>
	<h1>�α��� �����Ǿ����ϴ�.</h1>
	�� ������ login.jsp �Դϴ�.<br>
	
	<!-- 
	<c:if test="${not empty pageContext.request.userPrincipal}">
		<p>
		�α��� ������<br>
		�α����� ���̵� : ${pageContext.request.userPrincipal.name }<br>
		<a href="<c:url value="j_spring_security_logout" />">logout</a>
		</p>			
	</c:if>
	 -->
	
	<s:authorize ifAnyGranted="ROLE_USER">
		<p>
		�α��� ������<br>
		�α����� ���̵� : <s:authentication property="name"/> <br>
		<a href="<c:url value="j_spring_security_logout" />">logout</a>
		</p>
	</s:authorize>
	 
	 	
	<!-- 
	<c:if test="${empty pageContext.request.userPrincipal}">
		<p>
		�α׾ƿ� ������
		</p>	
	</c:if>
	 -->
	
	<s:authorize ifNotGranted="ROLE_USER">
		<p>
		�α׾ƿ� ������
		</p>	
	</s:authorize> 
	 
	
	
	
</body>
</html>