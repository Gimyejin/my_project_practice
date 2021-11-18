<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href="${contextPath}/resources/css/login.css" rel="stylesheet" />
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div id="wrap">
		<hr class="hr">
		<div class="content">
			<h2>회 원 가 입</h2>
			<form action="memberinsert" method="post" id="fo">
				<label>아이디</label><input type="text" name="id" placeholder="input id"><br> 
				<label>패스워드</label><input	type="password" name="pwd" placeholder="input password"><br> 
				<label>이름</label><input	type="text" name="name" placeholder="input name"><br> 
				<label>주소</label><input	type="text" name="addr" placeholder="input address"><br> 
				
				<button type="button"onclick="document.getElementById('fo').submit();">전 송</button>
			</form>
		</div>
	</div>
	<c:import url="../default/footer.jsp" />
</body>
</html>