<%@page import="com.mystudy.house.model.vo.KnowhowVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문과답변</title>
<%@ include file="/WEB-INF/common/style.jspf" %>
    <style>
    
  .store {
  	color: black;
  }
  .community {
  	color: black;
  }
  
   .bordname{
 	font-size: 1.2em;
 }
 
 
 .card-img-top {
    width: 100%;
    height: 10rem;
    object-fit: cover;
}

 
 #mysp, #myrv, #myupdate,
#picture, #knowhow, #collections{
	color: black;
}


#mypage, #qa	{
	color: #35C5F0;
	}
 

  </style>
</head>
<body>
<div class="container">
<%@ include file="/WEB-INF/common/memberMenu.jspf" %>
<%@ include file="/WEB-INF/common/mypageMenu.jspf" %>
<%@ include file="/WEB-INF/mypage/profile.jspf" %>
<br><br>


<div class="container">
<div class="row">
<div class="col-3">

<%@ include file="/WEB-INF/mypage/profilecard.jspf" %>
</div>


<div class="col-9" id="paa">

<div class="container">
<div class="row">
<div class="col-1"></div>
<div class="col-11">
<!-- 질문답변 네비? -->
<div>
<table style="width: 100%; margin: 0;">
	<tr style="font-weight: bold;">
		<td><a href="#" style="color: #35C5F0;">나의 질문</a></td>
		<td><a href="#" style="color: black;">나의 답변</a></td>
		<td style="text-align: right;">
		<button type="button" class="btn" id="btn" style="font-weight: bold;" onclick="location.href='request.do'">질문과답변 바로가기</button>
		</td>
	</tr>
</table>
</div>
<hr>



<div onclick="location.href='../picture/pictureDetail.jsp';" style="cursor: pointer;">
<table style="width: 100%; margin: 0;">
	<tr>
		<td style="font-weight: bold; font-size: 1.1em;">제목목목~~~~</td>
		<td rowspan="3" style="text-align: right;">
		<img alt="질문사진" src="../imgs/qa.png" style="width: 100px; height: 100px; object-fit:cover; border-radius: 5px;">
		</td>
	</tr>
	<tr>
		<td style="font-size: 0.9em; color: gray;">내용~~~~~~~</td>
	</tr>
	<tr>
		<td style="font-size: 0.9em; color: gray;">
		<img src="../imgs/avatar.png" alt="회원사진" width="25px;" style="border-radius: 50%;">
		<span>아이디</span>
		<span>글작성일 ·</span>
		<span>댓글수 ·</span>
		<span>조회수</span>
		
		<!-- 나중에 해시태그 반복문쓰기 -->
		<span>
		<button type="button" class="btn btn-light btn-sm">
		<span style="color: silver;">#</span> 해시태그</button></span>
		<!-- ===================== -->
		</td>
	</tr>
</table>
<hr>
</div>



</div>
</div>


</div>
</div>

</div>

</div>
<br><br>
<%@ include file="/WEB-INF/common/footer.jspf" %>
</div>
</body>
</html>