<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${contextPath}/resources/css/css.css" rel="stylesheet" />
<link href="${contextPath}/resources/css/slider.css" rel="stylesheet" />
<link href="${contextPath}/resources/css/login.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div id=wrap>
		<nav>
			<div class="login">
				<ul>
					<c:choose>
						<c:when test="${loginuser !=null}">
							<li><a href="mypage">마이페이지</a></li>
							<li><a href="logout">로그아웃</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="login">로그인</a></li>
							<li><a href="memberinsert">회원가입</a></li>
						</c:otherwise>
					</c:choose>
					<li><a href="memberList">회원리스트</a></li>
					<li><a href="ing">고객센터</a></li>
				</ul>
			</div>
			<div class="category">
				<a href="main" class="category_log"> <img alt="fall"
					src="${contextPath }/resources/resources/logo.png"></a>
				<ul class="category_menu">
					<li><a href="introduce" class="menu"><b>카페 소개</b></a></li>
					<li><a href="#" class="menu"><b>메뉴</b></a></li>
					<li><a href="#" class="menu"><b>매장정보</b></a></li>
					<li><a href="#" class="menu"><b>커뮤니티</b></a></li>
				</ul>
			</div>
		</nav>
	</div>
</body>
</html>