<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE >
<html>
	<link rel="stylesheet" href="/css/roomCSS.css">
<head>
	<meta charset="UTF-8">
	
	<title>호텔 에베레스트 - 객실 정보</title>
	
</head>  

<body>
	<header class="header"><%@ include file="../main/header.jsp" %></header>


	<div class="roomList" >
		<table class="table">
			<tr>
				</td><th>ROOM</th>
			</tr>
			<tr>
				<td><a href="standardroom.do">Standard</a></td>
			</tr>
			<tr>
				<td id="select"><a href="deluxeroom.do">Deluxe<button id="next">&#10095;</button></a></td>
			</tr>
			<tr>
				<td><a href="sweetroom.do">Sweet</a></td>
			</tr>
			
		</table>
	</div>
	
		<div class="roomImg">
			<div id="Img">
				<img src="../data/dlx1.jpg">
				<img src="../data/dlx2.jpg">
				<img src="../data/dlx3.jpg">
				<img src="../data/dlx4.jpg">
				<button id="imgPrev">&#10094;</button>
				<button id="imgNext">&#10095;</button>
			</div>
		</div >
		
		<div class="roomInfo">
			<div id="roomContent">
				<h1 style="color:#6e583e;">디럭스 룸</h1><br />
				디럭스 룸에서 최고급 침구류와 <br />
				함께 생애 최고의 휴식을 경험해보시기 바랍니다.
			</div>
	

				<div id="infoContent">
					<h4>객실정보</h4>
					<ul>
					<li>크기&nbsp;${dto.getRoom_size()}&nbsp;&nbsp;|&nbsp;&nbsp;수용인원&nbsp;${dto.getRoom_capacity() }</li>
					<li>구성&nbsp;&nbsp;침실1, 욕실1, 화장실1</li>
					<li>전망 &nbsp;시티뷰 또는 빌리지뷰</li>
					<li>침대&nbsp;&nbsp;더블(킹 사이즈), 트윈</li>
					</ul>
				</div>
				
				
				<div id="amenityContent">
					<h4>부대시설</h4>
					<ul>
					<li>피트니스 센터 무료 이용</li>
					<li>피트니스 센터는 매월 세 번쨰 수요일 정기 휴일입니다.</li>
					<li>실내 수영장 무료 이용(만 13세 이상 입장 가능)</li>
					<li>사우나 이용 시 유료</li>
					<li>투숙 기간 내 무료 주차 가능</li>
					</ul>
				</div>
				
	
		</div >
		
		<div class="hotelInfo">
			<table id="hotelTable">
				<tr>
					<td align="center"><h2>Hotel Info</h2></td>
				</tr>
				<tr>
					<td>
						<h4>조식 이용 안내</h4>
						<ul>
							<li>다이닝 존(뷔페) : 07:30 ~ 10:30</li>
						</ul>
					</td>
				</tr>
				
				<tr>
					<td>
						<h4>체크인 / 체크아웃 시간</h4>
						<ul>
							<li>체크인 : 오후 2시 이후</li>
							<li>체크아웃 : 11시</li>
						</ul>
					</td>
				</tr>
				
				<tr>
					<td>
						<h4>예약 취소/변경 및 No-Show 안내</h4>
						<ul>
							<li>숙박 예정일 7일 전: 위약금 없음</li>
							<li>숙박 예정일 6일 전 ~ 1일 전 : <br />1박 요금의 20%</li>
							<li>숙박 예정일 1일 전(18시 이후 취소 및 변경): 1박 요금의 80%</li>
						</ul>
					</td>
				</tr>
			</table>
		</div >
	
	
		<footer class="footer"><%@ include file="../main/footer.jsp" %></footer>
	<script type="text/javascript" src="../script/script.js"></script>
</body>
</html>