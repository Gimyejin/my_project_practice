<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<head>
<meta charset="UTF-8">
<title>글쓰기창</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript"> 
  function submit(){
	  fo.sumbit();
  }
  
</script>

</head>
<body id="fo">
<c:import url="../default/header.jsp" />
<div id="wrap" style="width: 400px; margin: 0 auto; ">
   <h1 style="text-align: center">글쓰기</h1>
   <form  action="${contextPath}/writeSave" method="post"
                                enctype="multipart/form-data">
      <b>작성자</b><br>  
      <input type="text" name="id" value="${loginuser}" readonly />
      <hr>
      <b>제목</b> <br> <input type="text" size="50" name="title" /><hr>
       <b>내용</b> <br>
      <textarea name="content" rows="10" cols="50"></textarea><hr>
      <b>이미지파일 첨부</b><br>
      <input type="file" name="image_file_name" onchange="readURL(this);" /> 
      <img id="preview" src="#" width=100 height=100 alt="선택된 이미지가 없습니다" />
      <hr> 
      <button type="submit" onclick="submit()">글쓰기</button>
      <button type=button onClick="location.href='${contextPath}/boardAllList'">목록보기</button>
   </form>
</div>
<c:import url="../default/footer.jsp" />
</body>
</html>

