<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login.jsp</title>
</head>
<body>
	<h1>로그인 인증되었습니다.</h1>
	이 파일은 login.jsp 입니다.<br>	
	
	<a href="<c:url value="j_spring_security_logout" />">logout</a>
</body>
</html>