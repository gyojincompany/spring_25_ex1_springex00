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
	<h1>로그인해주세요. loginForm.jsp</h1>
	
	<c:url value="j_spring_security_check" var="loginUrl"></c:url>
	<form action="${loginUrl}" method="post">
		<c:if test="${param.ng != null }">
			<p>
				아이디 인증에 실패하였습니다.<br>
				<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != NULL}">
					error message : <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />					
				</c:if>			
			</p>		
		</c:if>
	
	
		아이디 : <input type="text" name="j_username"><br>
		비밀번호 : <input type="password" name="j_password"><br>
		<input type="submit" value="로그인">	
	</form>
</body>
</html>