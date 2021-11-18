<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../default/header.jsp"/>
	<hr class="hr">
	<div class="content">
		<h2>카페 소개</h2>

		<form action="" method="get">
			<p id="label">
				(주) Jin Cafe는 김예진 학생이 이제까지 배워온 html과 <br>css로 홈페이지를 만들기 위해 꾸민 웹
				페이지입니다.
			</p>
		</form>
	</div>
	<c:import url="../default/footer.jsp"/>
</body>
</html>