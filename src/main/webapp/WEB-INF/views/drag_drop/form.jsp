<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>drag_drop</title>
<style type="text/css">
	.dragDropDiv {
		width: 650px;
		height: 300px;
		text-align: center;
		padding: 10px 0px 10px 10px;
		border: 2px solid green;
	}
	#tabFileName{
		width: 470px;
		text-align: left;
	}
	
	#tabFileSize{
		width: 70px;
	}
	
	#tabFileDel{
		width: 50px;
	}
	table , tr , td{
		border: 1px solid black;
		border-collapse: collapse;
	}
</style>

<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="../js/map.js"></script>
<script type="text/javascript" src="../js/stringBuffer.js"></script>

<script type="text/javascript">
	//폼에 데이터를 추가하기 위해 (파일을 전송하기 전 정보 유지)
	var fd = new FormData();
	//파일 중복 업로드 방지용 맵을 선언한다.
	var map = new Map();
	//submit 버튼을 눌렀을 때 
	function submitFile(){
		//추가적으로 보낼 파라미터가 있으면 formData에 넣어준다. 
		//예를들어 , 게시판의 경우 게시글 제목 , 게시글 내용 등등
		fd.append('temp',$('#temp').val());
		//ajax로 이루어진 파일 전송 함수를 수행시킨다.
		sendFileToServer();
	}
	//파일 전송 함수이다.
	var sendFileToServer = function() {
		$.ajax({
			type : "POST",
			url : "upload.do", //Upload URL
			data : fd,
			contentType : false,
			processData : false,
			cache : false,
			success : function(data) {
				if(data) {
					alert('성공');
					location.href='list.do';
				}else {
					alert('실패');
				}
			}
		});
	}
	function handleFileUpload(files) {
		//파일의 길이만큼 반복하며 formData에 셋팅해준다.
		var megaByte = 1024*1024;
		for (var i = 0; i < files.length; i++) {
			if(map.containsValue(files[i].name) == false && (files[i].size/megaByte) <= 20 ){
				fd.append(files[i].name, files[i]);
				//파일 중복 업로드를 방지하기 위한 설정
				map.put(files[i].name, files[i].name);
				// 파일 이름과 정보를 추가해준다.
				var tag = createFile(files[i].name, files[i].size);
				$('#fileTable').append(tag);
			}else{
				//중복되는 정보 확인 위해 콘솔에 찍음
				if((files[i].size/megaByte) > 20){
					alert(files[i].name+"은(는) \n 20메가 보다 커서 업로드가 할 수 없습니다.");
				}else{
					alert('파일 중복 : ' + files[i].name);
				}
			}
	    }
	}
	// 태그 생성
	function createFile(fileName, fileSize) {
		var file = {
				name : fileName,
				size : fileSize,
				format : function() {
					var sizeKB = this.size / 1024;
					if (parseInt(sizeKB) > 1024) {
						var sizeMB = sizeKB / 1024;
						this.size = sizeMB.toFixed(2) + " MB";
					} else {
						this.size = sizeKB.toFixed(2) + " KB";
					}
					//파일이름이 너무 길면 화면에 표시해주는 이름을 변경해준다.
					if(name.length > 70){
						this.name = this.name.substr(0,68)+"...";
					}
					return this;
				},
				tag : function() {
					var tag = new StringBuffer();
					tag.append('<tr>');
					tag.append('<td>'+this.name+'</td>');
					tag.append('<td>'+this.size+'</td>');
					tag.append("<td><button id='"+this.name+"' onclick='delFile(this)'>취소</button></td>");
					tag.append('</tr>');
					return tag.toString();					
				}
		}
		return file.format().tag();
	}
	//업로드 할 파일을 제거할 때 수행되는 함수
	function delFile(e) {
		//선택한 창의 아이디가 파일의 form name이므로 아이디를 받아온다.
		var formName = e.id;
		
		//form에서 데이터를 삭제한다.
		fd.delete(formName);
		
		//맵에서도 올린 파일의 정보를 삭제한다.
		map.remove(formName);
		// tr을 삭제하기 위해
		$(e).parents('tr').remove();
		alert('삭제 완료!');		
	}
	$(document).ready(function() {
		var objDragDrop = $(".dragDropDiv");
		// div 영역으로 드래그 이벤트호출
		$(".dragDropDiv").on("dragover",
			function(e) {
				e.stopPropagation();
				e.preventDefault();
				$(this).css('border', '2px solid red');
		});
		// 해당 파일 드랍시 호출 이벤트
		$(".dragDropDiv").on("drop", function(e) {
			$(this).css('border', '2px solid green');
			//브라우저로 이동되는 이벤트를 방지하고 드랍 이벤트를 우선시 한다.
			e.preventDefault();
			//DROP 되는 위치에 들어온 파일 정보를 배열 형태로 받아온다.
			var files = e.originalEvent.dataTransfer.files;
			//DIV에 DROP 이벤트가 발생 했을 때 다음을 호출한다.
			handleFileUpload(files);
			
			//sendFileToServer(); //테스팅 20200108
			submitFile(); //테스팅 20200108
		});
		// div 영역빼고 나머지 영역에 드래그 원래색변경
		$(document).on('dragover', function(e) {
			e.stopPropagation();
			e.preventDefault();
			objDragDrop.css('border', '2px solid green');
		});
	});
</script>
</head>
<body>
   <center>
	   <h1>Drag&Drop</h1> 
	   <a href="../">인덱스</a>&nbsp;&nbsp;
	   <a href="list.do">리스트</a>
	   <br/><br/>
   
	   <div id="fileUpload" class="dragDropDiv">
	   		<table id='fileTable'>
	   			<tr>
		            <td id='tabFileName'>파일명</td>
		            <td id='tabFileSize'>사이즈</td>
		            <td id='tabFileDel'>삭제 </td>
	   			</tr>
	   		</table>
		</div>
		<input type="button" onclick="submitFile()" value="전송">
		<input type="hidden" value="추가데이터테스트!" name='temp' id='temp'>
	</center>
</body>
</html>