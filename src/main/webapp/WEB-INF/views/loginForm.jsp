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
	
	<form action="<c:url value="j_spring_security_check" />" method="post">
		���̵� : <input type="text" name="j_username"><br>
		��й�ȣ : <input type="password" name="j_password"><br>
		<input type="submit" value="�α���">	
	</form>
</body>
</html>