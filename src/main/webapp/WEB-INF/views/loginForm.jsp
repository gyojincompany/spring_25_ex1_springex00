<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>loginForm.jsp</title>
</head>
<body>
	<h1>�α������ּ���. loginForm.jsp</h1>
	
	<c:url value="j_spring_security_check" var="loginUrl"></c:url>
	<form action="${loginUrl}" method="post">
		<c:if test="${param.ng != null }">
			<p>
				���̵� ������ �����Ͽ����ϴ�.<br>
				<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != NULL}">
					error message : <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />					
				</c:if>			
			</p>		
		</c:if>
	
	
		���̵� : <input type="text" name="j_username"><br>
		��й�ȣ : <input type="password" name="j_password"><br>
		<input type="submit" value="�α���">	
	</form>
</body>
</html>