<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div id="wrap" align="center">
		<hr class="hr">
		<table border="1">
			<caption>
				<h2>커뮤니티</h2>
			</caption>
			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>제목</th>
				<th>날짜</th>
				<th>조회수</th>
				<th>이미지 이름</th>
			</tr>

			<tr>
				<td colspan="6">
					<button type="button" onclick="location.href='${contextPath }/writeForm'">글작성</button>
				</td>
			</tr>
		</table>
	</div>
	<c:import url="../default/footer.jsp" />
</body>
</html>