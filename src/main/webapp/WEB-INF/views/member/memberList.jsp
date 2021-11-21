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
	<div id="wrap" align="center">
		<hr class="hr">
		<div>
			<table border="1" style="width: 500px;">
				<caption align="center"><h3>회원리스트 확인용</h3></caption>
				<tr>
					<td>아이디</td>
					<td>이름</td>
					<td>패스워드</td>
					<td>주소</td>
				</tr>
				<c:forEach var="dto" items="${list }">
					<tr>
						<td>${dto.id }</td>
						<td>${dto.name }</td>
						<td>${dto.pwd }</td>
						<td>${dto.addr }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<c:import url="../default/footer.jsp" />
</body>
</html>