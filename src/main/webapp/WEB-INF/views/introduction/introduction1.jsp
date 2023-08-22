<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE >
<html>
	<link rel="stylesheet" href="/css/introductionCSS.css">
<head>
	<meta charset="UTF-8">
	
	<title>호텔 에베레스트 - 호텔 소개</title>
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
	<header class="header"><%@ include file="../main/header.jsp" %></header>




	<div class="roomList" >
		<table class="table">
			<tr>
				</td><th>호텔 소개</th>
			</tr>
			<tr>
				<td id="select"><a href="introduction1.do">개요<button id="next">&#10095;</button></a></td>
			</tr>
			<tr>
				<td><a href="introduction2.do">오시는길</a></td>
			</tr>
		</table>
	</div>
	
    <div class="roomImg">
        <div id="Img">
            <img src="../data/introduction.jpg">
        </div>
    </div >
		
		<div class="roomInfo">
			<div id="roomContent">
				<h1 style="color:#6e583e;">개요</h1><br/>
        Everest Hotel
			</div>
				<div id="infoContent">
					<h4>Everest Group Affiliate</h4>
					<ul>
                        <p>Everest Hotel은 수많은 국빈의 방문과 국제행사를 치러내며‘Everest Group을 대표하는 얼굴’,
                            <br>‘한국을 대표하는 호텔’로서 자부심과 책임감을 가지고 우리나라 서비스 산업의 견인차 역할을 해오고 있습니다.
                        </p>
                    </ul>
				</div>
				
				
				<div id="amenityContent">
					<h4>The Best Hospitality Company</h4>
					<ul>
                        <p>Everest Hotel은‘최고의 호스피탈리티 기업’을 목표로 오랜 세월동안 품위와 전통을 유지하며 고객들의 마음을 사로잡아 왔습니다.
                            <br>Everest Hotel은 앞으로도 최상의 가치를 선사하는 글로벌 호스피탈리티 
				            명문 기업으로 성장할 것을 약속드립니다.
                        </p>
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