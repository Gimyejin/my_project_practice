<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
	<c:import url="header.jsp"/>
	<div id="wrap">
		<header class="slider">
			<input type="radio" name="slide" id="slide1" checked> <input
				type="radio" name="slide" id="slide2"> <input type="radio"
				name="slide" id="slide3">
			<ul id="imgholder" class="imgs">
				<li><img alt="img1" src="${contextPath }/resources/resources/header1.jpg"></li>
				<li><img alt="img2" src="${contextPath }/resources/resources/header2.jpg"></li>
				<li><img alt="img3" src="${contextPath }/resources/resources/header3.jpg"></li>
			</ul>
			<div class="bullets">
				<label for="slide1">&nbsp;</label> <label for="slide2">&nbsp;</label>
				<label for="slide3">&nbsp;</label>
			</div>
		</header>
		<div class="content1">
			<div class="new_menu" style="box-sizing: border-box;">
				<div id="menu_title">
					<img alt="dessert_fall" src="${contextPath }/resources/resources/cafe.png" id="logo_menu">
					<b><p id="font">Menu</p></b>
				</div>
				<a href="ing.html"> <img alt="coffee_fall"
					src="${contextPath }/resources/resources/coffee2.png" id="menu_img">
				</a>
			</div>
			<div class="sidemenu">
				<div id="menu_title">
					<img alt="dessert_fall" src="${contextPath }/resources/resources/cafe.png" id="logo_menu">
					<b><p id="font">Side Menu</p></b>
				</div>
				<a href="ing.html"> <img alt="dessert_fall"
					src="${contextPath }/resources/resources/dessert.png" id="menu_img2">
				</a> <a href="ing.html"> <img alt="dessert_fall"
					src="${contextPath }/resources/resources/dessert2.png" id="menu_img2">
				</a> <a href="ing.html"> <img alt="dessert_fall"
					src="${contextPath }/resources/resources/dessert3.png" id="menu_img2">
				</a>
			</div>
		</div>
		<div class="content2 back-image full-page">
			<div id="c2" class="event">
				<p id="font2">event</p>
				<img alt="event" src="${contextPath }/resources/resources/event.png" class="e_img">
			</div>
			<div id="c2" class="ad">
				<p id="font2">ad</p>
				<img alt="event" src="${contextPath }/resources/resources/event.png" class="e_img">
			</div>
			<div id="c2" class="notice">
				<p id="font2">Notice</p>
				<div id="notice">
					<p id="N_content">News</p>
					<p id="N_name">
						<b> Jin Cafe 멤버쉽 이벤트!</b>
					</p>
					<p id="N_content">2021-10-12</p>
				</div>
			</div>
		</div>
	</div>
	<c:import url="footer.jsp"/>
</body>
</html>