<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>        
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문/결제</title>
<%@ include file="../common/style.jspf" %>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <style>

  .store {
  	color: black;
  }
  .community {
  	color: black;
  }
  .category, .home, .discount, .best {
  color: black;
  }
 
 .ship {
 	font-size: 0.8em;
 }
 
 .pname {
 	font-weight: bold;
 }
 
 .opt {
 	width: 100%;
 	border-radius: 10px;
 }
 
 .opt > th,td {
 	padding-top: 10px;
    padding-bottom: 10px;
 	padding-left: 30px;
    padding-right: 40px;
 }
 
 #total {
 	width: 100%;
 }
 
 #total th, #total td {
 	padding-top: 10px;
    padding-bottom: 10px;
 	padding-left: 10px;
    padding-right: 10px;
 }
 
 #lastP {
 	font-weight: bold;
 }
 
 #totalP {
 	font-size: 1.3em;
 }
 
 .boldtext{
 	font-size: 1.3em;
 	font-weight: 900;
 }
 
 .oname {
 	font-size: 1.2em;
 	font-weight: bold;
 }
 
  </style>
</head>
<body>
<script>
	$(document).ready(function(){
		$('#self_insert').hide();
		$('#orderRequest').on('change', function(){
			if($("#orderRequest").val() == "4"){
				$('#self_insert').show();
			}else{
				$('#self_insert').hide();
			}
			
		});
	});
	
	
	$(document).ready(function(){
		$('#point').on('change', function(){
			if($("#point").val() > 1111){
				alert("포인트가 부족합니다😥");
				$('#point').value = "";
				$('#point').focus();
				parent.document.location.reload();
			}
		});
	});
	
	
	function pointuse() {
		var myPoint = ${list.get(0).point};
		console.log(myPoint);
		$('#point').val(myPoint);
		
		var usepoint = document.getElementById('point').value;
	}
	
</script>
<div class="bg-white">
<div class="container"><%@ include file="/WEB-INF/common/memberMenu.jspf" %></div>
</div>
<br>
<div class="container">

<div class="container">
			<div class="row">
				<div class="col-7">
<!-- ------------------복제코드시작------------------------- -->
<p class="boldtext">주문/결제</p><br>
<table style="width: 100%;">
	<tr>
		<td class="oname" style="padding: 0;">배송지</td>
		<td style="padding:0; text-align: right;"><a href="#" style="font-weight: bold; color: #35C5F0;">변경</a></td>
	</tr>
</table>
<hr>
<form name="thisForm" method="post">
<p style="font-weight: 500; margin-bottom: 0">${list.get(0).addr }</p>
<span style="color: gray; font-size: 0.9em;">${list.get(0).name }</span>&nbsp;<span style="color: gray; font-size: 0.9em;">${list.get(0).phone }</span>
<br>

<select id="orderRequest" name="orderRequest" class="custom-select custom-select-sm mb-3" style="margin-top: 5px;">
  <option value="" selected disabled hidden>배송시 요청사항을 선택해주세요</option>
  <option value="부재시 문앞에 놓아주세요">부재시 문앞에 놓아주세요</option>
  <option value="배송 전에 미리 연락주세요">배송 전에 미리 연락주세요</option>
  <option value="부재시 경비실에 맡겨주세요">부재시 경비실에 맡겨주세요</option>
  <option value="4" id="self">직접 입력</option>
<input type="text" placeholder="요청사항을 입력하세요" id="self_insert" style="width: 100%;">
</select>


<br><br>
<p class="oname">주문상품</p>
<hr>
<c:forEach var="vo" items="${list }">
<div class="card">
  <ul class="list-group list-group-flush">
    <li class="list-group-item bg-light text-dark">
    <table style="width: 100%;">
    	<tr>
    		<td style="padding: 0; font-weight: bold; font-size: 0.9em;">${vo.companyName }</td>
    		<td style="padding: 0; text-align: right; font-size: 0.9em; color: gray;">
    		배송비 
    		<span>
    		<c:if test="${vo.shipping > vo.totp }">
    			<c:set var= "shipp" value="${shipp + 3000}"/>
    				<span style="text-align: right; padding: 0;">3000원</span>
    		</c:if>
    		<c:if test="${vo.shipping <= vo.totp }">
    			<span style="text-align: right; padding: 0;">0원</span>
    		</c:if>
    		</span></td>
    	</tr>
    </table>
    
    </li>
    <li class="list-group-item">
    <table style="width: 100%;">
    	<tr>
    		<td style="padding: 0; width: 100px;"><img alt="상품이미지" src="${vo.imagefile }" width="80px;" height="80px;"></td>
    		<td style="padding : 0; font-size: 0.8em; text-align: left;"><span>${vo.productName }</span><br>
    			<span style="font-weight: bold;">${vo.productPrice*vo.count}<span>원</span></span> | <span style="color: gray;">${vo.count}<span>개</span></span>
    		</td>
    	</tr>
    </table>
    </li>
  </ul>
</div>
<br>

</c:forEach>
<p class="oname">포인트</p>
<hr>
<input type="text" id="point" name="point" value="0" onchange="chagepoint()" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
<button type="button" class="btn btn-sm" id="btn" onclick="pointuse()">전액사용</button>
<p>사용 가능 포인트 <span style="color: #35C5F0; font-weight: bold;">${list.get(0).point }<span>p</span></span></p>

<br><br>
<p class="oname">결제수단</p>
<hr>
<div class="card mb-3" style="width: 100%;">
  <div class="row no-gutters">
    <div class="col-md-3">
      <img src="${pageContext.request.contextPath}/imgs/img_card.png" alt="...">
      <p style="text-align: center; size: 0.8em; color: gray;">카드</p>
    </div>
    
    
  </div>
</div>




<!-- ---------------------복제코드끝---------------------- -->
</div>

<c:set var = "totalPrice" value = "0" />
    		<c:forEach var="vo" items="${list }">
			<c:set var= "totalPrice" value="${totalPrice + vo.totp}"/>
			</c:forEach>
			<!--<c:out value="${totalPrice}"/>-->

<div class="col-5">
<div class="position-fixed">
<div class="card" style="width: 25rem;">
  <ul class="list-group list-group-flush">
    <li class="list-group-item"><span style="font-size: 1.2em; font-weight: bold;" >결제금액</span><br><br>
    	<table style="width: 100%;">
    		<tr>
    			<td style="text-align: left; padding: 0; color: gray;">총 상품 금액</td>
    			<td style="text-align: right; padding: 0; font-weight: bold;">${totalPrice}원</td>
    		</tr>
    		<tr>
    			<td style="text-align: left; padding: 0; color: gray;">배송비</td>
    			<td style="text-align: right; padding: 0;">${shipp}원</td>
    		</tr>
    		<tr>
    			<td style="text-align: left; padding: 0; color: gray;">포인트 사용</td>
    			<td style="text-align: right; padding: 0;">0원</td>
    		</tr>
    	</table>
    </li>
    <li class="list-group-item">
    <table style="width: 100%;">
    	<tr>
    		<td style="text-align: left; padding: 0; font-weight: bold; font-size: 1.1em;">최종 결제 금액</td>
    		<td style="text-align: right; padding: 0; font-size: 1.2em; font-weight: bold;">
    		<span style="color:#35C5F0;">${totalPrice+shipp}</span>원<br>
    		<span style="font-size: 0.6em; font-weight: normal;">
				<c:set var= "pointp" value="${Math.ceil((totalPrice)*0.001)}"/>
    		<span style="font-weight: bold;"><fmt:parseNumber value="${pointp}" integerOnly="true" /></span>p 적립 예정</span></td>
    	</tr>
    </table>
  
   </li>
    
    <li class="list-group-item"><input type="checkbox"  id="pv_agree"  name="pv_agree" class="agree_ck"> 아래 내용에 모두 동의합니다(필수)</li>
    <input type="hidden" name="id" value="${id}">
    <input type="hidden" name="orderName" value="${list.get(0).name}">
    <input type="hidden" name="orderPhone" value="${list.get(0).phone}">
    <input type="hidden" name="orderAddr" value="${list.get(0).addr}">
    <input type="hidden" name="totPrice" value="${totalPrice}">
    <input type="hidden" name="pointUse" value="..">
    <input type="hidden" name="paymentType" value="..">
    <c:set var="plist" value="${list }" scope="session" />
</form>
  </ul>
  <div class="card-footer" style="font-size: 0.8em;">
    본인은 만 14세 이상이며, 주문 내용을 확인하였습니다.
(주)버킷플레이스는 통신판매중개자로 거래 당사자가 아니므로, 판매자가 등록한 상품정보 및 거래 등에 대해 책임을 지지 않습니다 (단, ㈜버킷플레이스가 판매자로 등록 판매한 상품은 판매자로서 책임을 부담합니다).

  </div>
</div>
<br>
<button type="button" class="btn btn-lg btn-block" id="btn" style="font-weight: bold;" onclick="chk()">
<span>${totalPrice+shipp}</span>원 결제하기</button>
<script>
    function chk() {
        var f = document.thisForm;
        if(f.pv_agree.checked!==true) {
            alert('필수항목에 체크해 주세요.');
        } else {
        	f.action = "complete.do";
            f.submit();
            //주문완료 페이지로 이동
        }
    }
  </script>
</div>
</div>
</div>
</div>


<br><br>
<%@ include file="/WEB-INF/common/footer.jspf" %>
</div>
</body>
</html>