<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<%@ include file="/WEB-INF/common/style.jspf" %>
    <style>

  .store {
  	color: #35C5F0;
  	font-weight: bold;
  }
  .community {
  	color: black;
  }
  .category {
  	color: #35C5F0;
  	font-weight: bold;
  }
  .best, .home, .discount {
  color: black;
  }
  
 .text-left{
 	font-size: 1.3em;
 	font-weight: bold;
 	margin-left:20%;
 	color: black;
 	
 }

#catesm{
 	font-size: 0.8em;
 	margin-left:20%;
 }

 

  </style>
</head>
<body>
<div class="container">
<c:if test="${empty id }">
		<%@ include file="/WEB-INF/common/guestMenu.jspf" %>
	</c:if>
	<c:if test="${not empty id }">
		<%@ include file="/WEB-INF/common/memberMenu.jspf" %>
	</c:if>
<%@ include file="/WEB-INF/common/storeMenu.jspf" %>


<br>

 

<div class="container">
<div class="row">
<div class="col-3">
		
<div class="accordion" id="accordionExample">
    <div id="headingOne">
    	<a href="category.do?categoryNum=1">
	        <p class="text-left" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
	          	가구
	        </p>
        </a>
    </div>
    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div>
        	<ul id="catesm">
        		<a href="categorydt.do?categoryNum=1&categoryDetail=침대" class="catedt"><li>침대</li></a>
        		<a href="categorydt.do?categoryNum=1&categoryDetail=소파" class="catedt"><li>소파</li></a>
        		<a href="categorydt.do?categoryNum=1&categoryDetail=테이블·식탁·책상" class="catedt"><li>테이블·식탁·책상</li></a>
        	</ul>
      </div>
    </div>
    
    <div id="headingTwo">
    	<a href="category.do?categoryNum=2">
	        <p class="text-left collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
	          패브릭
	        </p>
        </a>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
        <ul id="catesm">
        	<li>침구세트</li>
        	<li>커튼·부자재</li>
        	<li>러그·카페트</li>
        </ul>
    </div>
    
    <div id="headingThree">
    	<a href="category.do?categoryNum=3">
	        <p class="text-left collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="#collapseThree">
	          주방용품
	        </p>
        </a>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
        <ul id="catesm">
        	<li>냄비·프라이팬·솥</li>
        	<li>그릇·홈세트</li>
        	<li>컵·잔·텀블러</li>
        </ul>
    </div>
    
    <div id="headingFour">
    	<a href="category.do?categoryNum=4">
	        <p class="text-left collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="#collapseFour">
	          데코·식물
	        </p>
        </a>
    </div>
    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
        <ul id="catesm">
        	<li>캔들·디퓨저</li>
        	<li>인테리어소품</li>
        	<li>홈갤러리</li>
        </ul>
    </div>

	
	<div id="headingfive">
    	<a href="category.do?categoryNum=5">
	        <p class="text-left collapsed" data-toggle="collapse" data-target="#collapsefive" aria-expanded="false" aria-controls="#collapsefive">
	          조명
	        </p>
        </a>
    </div>
    <div id="collapsefive" class="collapse" aria-labelledby="headingfive" data-parent="#accordionExample">
        <ul id="catesm">
        	<li>장스탠드</li>
        	<li>단스탠드</li>
        	<li>무드등·장식조명</li>
        </ul>
    </div>
    
    <div id="headingSix">
    	<a href="category.do?categoryNum=6">
	        <p class="text-left collapsed" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="#collapseSix">
	          수납·정리
	        </p>
        </a>
    </div>
    <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordionExample">
        <ul id="catesm">
        	<li>서랍장·트롤리</li>
        	<li>행거</li>
        	<li>선반</li>
        </ul>
    </div>
    
    <div id="headingSeven">
    	<a href="category.do?categoryNum=7">
	        <p class="text-left collapsed" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="false" aria-controls="#collapseSeven">
	          생활용품
	        </p>
        </a>
    </div>
    <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordionExample">
        <ul id="catesm">
        	<li>욕실용품</li>
        	<li>청소용품</li>
        	<li>세탁용품</li>
        </ul>
    </div>
    
    <div id="headingEight">
    	<a href="category.do?categoryNum=8">
	        <p class="text-left collapsed" data-toggle="collapse" data-target="#collapseEight" aria-expanded="false" aria-controls="#collapseEight">
	          반려동물
	        </p>
        </a>
    </div>
    <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordionExample">
        <ul id="catesm">
        	<li>강아지</li>
        	<li>고양이</li>
        	<li>관상어</li>
        </ul>
    </div>
    
    <div id="headingNine">
    	<a href="category.do?categoryNum=9">
	        <p class="text-left collapsed" data-toggle="collapse" data-target="#collapseNine" aria-expanded="false" aria-controls="#collapseNine">
	          캠핑용품
	        </p>
        </a>
    </div>
    <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#accordionExample">
        <ul id="catesm">
        	<li>캠핑가구</li>
        	<li>텐트·타프</li>
        	<li>침낭·매트·해먹</li>
        </ul>
    </div>
    
    <div id="headingTen">
    	<a href="category.do?categoryNum=10">
	        <p class="text-left collapsed" data-toggle="collapse" data-target="#collapseTen" aria-expanded="false" aria-controls="#collapseTen">
	          유아·아동
	        </p>
        </a>
    </div>
    <div id="collapseTen" class="collapse" aria-labelledby="headingTen" data-parent="#accordionExample">
        <ul id="catesm">
        	<li>유아·아동식기</li>
        	<li>완구·교구</li>
        	<li>유아침구</li>
        </ul>
    </div>
		
	</div>

</div>

	<div class="col-9">
	
	<%@ include file="/WEB-INF/store/store_slide.jspf" %>
	
	
	<br>
	<table style="width: 100%;">
		<tr>
			<td>전체 ${list.size() }개</td>
			<td style="text-align: right;">
				<div class="btn-group">
  <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
    인기순
  </button>
  <c:forEach var="vo" items="${list}">
  <div class="dropdown-menu">
    <a class="dropdown-item" href="#">인기순</a>
    <a class="dropdown-item" href="#">낮은가격순</a>
    <a class="dropdown-item" href="#">높은가격순</a>
    <a class="dropdown-item" href="#">최신순</a>
  </div>
  </c:forEach>
</div>
			</td>
		</tr>
	</table>
	<%@ include file="/WEB-INF/category/cate_card.jspf" %>
	
	
	</div>


</div>
</div>


<br><br>
<%@ include file="/WEB-INF/common/footer.jspf" %>
</div>
</body>
</html>