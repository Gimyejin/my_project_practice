<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${contextPath}/resources/css/css.css" rel="stylesheet"/> 
<link href="${contextPath}/resources/css/slider.css" rel="stylesheet"/> 
<link href="${contextPath}/resources/css/login.css" rel="stylesheet"/> 
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="wrap">
		<footer>
			<hr class="hr">
			<div class="up_icon">
				<a href="#" id="btn_top" class="on"><img alt="upfall"
					src="${contextPath }/resources/resources/up_w.png"></a>
			</div>
			<div style="display: flex;">
				<a href="https://www.facebook.com/" target="_bank"><img
					src="${contextPath }/resources/resources/sns1.png" class="sns"></a> <a
					href="https://www.instagram.com/?hl=ko" target="_bank"><img
					src="${contextPath }/resources/resources/sns2.png" class="sns"></a> <a
					href="https://twitter.com/home?lang=ko" target="_bank"><img
					src="${contextPath }/resources/resources/sns3.png" class="sns"></a>
				<p style="margin-left: 30px;">
					법인명: (주)Jin Cafe | 사업자등록번호: 122-91-75368 [사업자정보확인]<br> 주소: 서울
					종로구 319 8/11층 | 대표번호 : 02-9516-9988 | 팩스 : 02-456-7891 | 마케팅 제휴
					이메일: jincafe@naver.com<br> COPYRIGHT JINCAFE 2021 ALL RIGHTS
					RESERVED.
				</p>
			</div>
		</footer>
	</div>
</body>
</html>