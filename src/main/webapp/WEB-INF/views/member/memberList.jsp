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
		<div>
			<h1>회원리스트 확인용</h1>
		</div>
	</div>
	<c:import url="../default/footer.jsp" />
</body>
</html>