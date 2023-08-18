<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE >
<html>
	<link rel="stylesheet" href="/css/roomCSS.css">
<head>
	<meta charset="UTF-8">
	
	<title>호텔 에베레스트 - 호텔 오시는길</title>
  <style>
    #container {overflow:hidden;height:300px;position:relative;}
    #btnRoadview,  #btnMap {position:absolute;top:5px;left:5px;padding:7px 12px;font-size:14px;border: 1px solid #dbdbdb;background-color: #fff;border-radius: 2px;box-shadow: 0 1px 1px rgba(0,0,0,.04);z-index:1;cursor:pointer;}
    #btnRoadview:hover,  #btnMap:hover{background-color: #fcfcfc;border: 1px solid #c1c1c1;}
    #container.view_map #mapWrapper {z-index: 10;}
    #container.view_map #btnMap {display: none;}
    #container.view_roadview #mapWrapper {z-index: 0;}
    #container.view_roadview #btnRoadview {display: none;}
    </style>
</head>  

<body>
	<%@ include file="header.jsp" %>
	<div class="roomList" >
		<table class="table">
			<tr>
				</td><th>호텔 소개</th>
			</tr>
			<tr>
				<td><a href="standardroom.do">개요</a></td>
			</tr>
			<tr>
				<td id="select"><a href="kakaoCome.do">오시는길<button id="next">&#10095;</button></a></td>
			</tr>
		</table>
	</div>
	
  <div id="container" class="view_map" style="width:50%;height:50%;position: relative;top:10%;left:20%;">
    <div id="mapWrapper" style="width:100%;height:100%;position: relative;top:0%;left:0%;">
        <div id="map" style="width:100%;height:100%"></div> <!-- 지도를 표시할 div 입니다 -->
        <input type="button" id="btnRoadview" onclick="toggleMap(false)" title="로드뷰 보기" value="로드뷰">
    </div>
    <div id="rvWrapper" style="width:100%;height:100%;position: absolute;top:0%;left:0%;">
        <div id="roadview" style="width:100%;height:100%"></div> <!-- 로드뷰를 표시할 div 입니다 -->
        <input type="button" id="btnMap" onclick="toggleMap(true)" title="지도 보기" value="지도">
    </div>
</div>
		
		<div class="roomInfo">
			<div id="roomContent">
				<h1 style="color:#6e583e;">오시는길</h1><br />
        대중교통 및 자가용 이용
			</div>
	

				<div id="infoContent">
					<h4>대중교통 이용</h4>
					<ul>
					<li>크기&nbsp;${dto.getRoom_size()}&nbsp;&nbsp;|&nbsp;&nbsp;수용인원&nbsp;${dto.getRoom_capacity() }</li>
					<li>구성&nbsp;&nbsp;침실1, 욕실1, 화장실1</li>
					<li>전망 &nbsp;시티뷰 또는 빌리지뷰</li>
					<li>침대&nbsp;&nbsp;더블(킹 사이즈), 트윈</li>
					</ul>
				</div>
				
				
				<div id="amenityContent">
					<h4>자가용 이용</h4>
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
	
	
	<%@ include file="footer.jsp" %>
	<script type="text/javascript" src="../script/script.js"></script>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=34c862789cfca57e5f48d73a205c9ac2"></script>
<script>
var container = document.getElementById('container'), // 지도와 로드뷰를 감싸고 있는 div 입니다
    mapWrapper = document.getElementById('mapWrapper'), // 지도를 감싸고 있는 div 입니다
    btnRoadview = document.getElementById('btnRoadview'), // 지도 위의 로드뷰 버튼, 클릭하면 지도는 감춰지고 로드뷰가 보입니다 
    btnMap = document.getElementById('btnMap'), // 로드뷰 위의 지도 버튼, 클릭하면 로드뷰는 감춰지고 지도가 보입니다 
    rvContainer = document.getElementById('roadview'), // 로드뷰를 표시할 div 입니다
    mapContainer = document.getElementById('map'); // 지도를 표시할 div 입니다

// 지도와 로드뷰 위에 마커로 표시할 특정 장소의 좌표입니다 
var placePosition = new kakao.maps.LatLng(37.476800, 126.879468);

// 지도 옵션입니다 
var mapOption = {
    center: placePosition, // 지도의 중심좌표 
    level: 3 // 지도의 확대 레벨
};

// 지도를 표시할 div와 지도 옵션으로 지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption);

// 로드뷰 객체를 생성합니다 
var roadview = new kakao.maps.Roadview(rvContainer);
var roadviewClient = new kakao.maps.RoadviewClient(); //좌표로부터 로드뷰 파노ID를 가져올 로드뷰 helper객체

// 특정 위치의 좌표와 가까운 로드뷰의 panoId를 추출하여 로드뷰를 띄운다.
roadviewClient.getNearestPanoId(placePosition, 100, function(panoId) {
    roadview.setPanoId(panoId, placePosition); //panoId와 중심좌표를 통해 로드뷰 실행
});

// 특정 장소가 잘보이도록 로드뷰의 적절한 시점(ViewPoint)을 설정합니다 
// Wizard를 사용하면 적절한 로드뷰 시점(ViewPoint)값을 쉽게 확인할 수 있습니다
roadview.setViewpoint({
    pan: 321,
    tilt: 0,
    zoom: 0
});

// 지도 중심을 표시할 마커를 생성하고 특정 장소 위에 표시합니다 
var mapMarker = new kakao.maps.Marker({
    position: placePosition,
    map: map
});

// 로드뷰 초기화가 완료되면 
kakao.maps.event.addListener(roadview, 'init', function() {

    // 로드뷰에 특정 장소를 표시할 마커를 생성하고 로드뷰 위에 표시합니다 
    var rvMarker = new kakao.maps.Marker({
        position: placePosition,
        map: roadview
    });
});

// 지도와 로드뷰를 감싸고 있는 div의 class를 변경하여 지도를 숨기거나 보이게 하는 함수입니다 
function toggleMap(active) {
    if (active) {

        // 지도가 보이도록 지도와 로드뷰를 감싸고 있는 div의 class를 변경합니다
        container.className = "view_map"
    } else {

        // 지도가 숨겨지도록 지도와 로드뷰를 감싸고 있는 div의 class를 변경합니다
        container.className = "view_roadview"   
    }
}
</script>
</body>
</html>