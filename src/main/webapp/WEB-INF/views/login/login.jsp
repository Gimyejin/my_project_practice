<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${contextPath}/css/login.css">
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div id="wrap">
		<div class="content">
			<h2>로그인</h2>
			<form action="login" method="post" id="fo">
				<label>아이디</label><input type="text" name="id"><br> 
				<label>패스워드</label><input	type="password" name="pwd"><br> <br>
				<button type="button"onclick="document.getElementById('fo').submit();">전 송</button>
			</form>
		</div>
	</div>
	<c:import url="../default/footer.jsp" />
</body>
</html>