function idCheck(){
	if(document.regForm.u_id.value.length == ""){
		alert("아이디를 입력해주세요");
		document.regForm.u_id.focus();
		return;
	}else{
		url="idcheck?u_id="+document.regForm.u_id.value; // idCheckServlet
		window.open(url, "post", "width=420,height=230");
	;
	}
}

function idok(userid) {
	opener.regForm.u_id.value = document.regForm.u_id.value;
	opener.regForm.u_id2.value = document.regForm.u_id.value;
	self.close();
}

function joinCheck() {
	if (document.regForm.u_id.value.length == 0) {
		alert("아이디를 써주세요");
		regForm.u_id.focus();
		return false;
	}
	
	if (document.regForm.u_id2.value.length == 0) {
		alert("중복 체크를 하지 않았습니다.");
		regForm.u_id.focus();
		return false;
	}
	
	if (document.regForm.u_id.value.length < 4) {
		alert("아이디는 4글자이상이어야 합니다.");
		regForm.u_id.focus();
		return false;
	}
	if (document.regForm.u_pwd.value == "") {
		alert("암호는 반드시 입력해야 합니다.");
		regForm.u_pwd.focus();
		return false;
	}
	if (document.regForm.u_pwd.value != document.regForm.u_pwd2.value) {
		alert("암호가 일치하지 않습니다.");
		regForm.u_pwd2.focus();
		return false;
	}
	
	if (document.regForm.u_name.value.length == 0) {
		alert("이름을 써주세요.");
		regForm.u_name.focus();
		return false;
	}
	
	if (document.regForm.u_phone.value.length == 0) {
		alert("전화번호를 입력하지 않았습니다.");
		regForm.u_phone.focus();
		return false;
	}
	
	if (document.regForm.u_email.value.length == 0) {
		alert("이메일을 입력하지 않았습니다.");
		regForm.u_email.focus();
		return false;
	}
	return true;
}

function reservationCheck(){
	if (document.regForm.r_checkin.value.length == 0) {
		alert("체크인 날짜를 선택해주세요.");
		regForm.r_checkin.focus();
		return false;
	}
	
	if (document.regForm.r_checkout.value.length == 0) {
		alert("체크아웃 날짜를 선택해주세요.");
		regForm.r_checkout.focus();
		return false;
	}
	
	if (document.regForm.r_adults.value < 1) {
		alert("성인 인원수를 선택해주세요");
		regForm.r_adults.focus();
		return false;
	} 
	
	if (document.regForm.r_checkout.value <= document.regForm.r_checkin.value) {
		alert("체크아웃 날짜를 다시 선택해주세요");
		return false;
	}
	
	return true;
}

function breakfastCheck(diffday){
	document.regForm.r_price.value = parseInt(document.regForm.price.value) + parseInt(diffday)*(20000*document.regForm.breakfast.value);
	
}


function boardCheck(){
	if(document.regForm.b_title.value==""){
		alert("제목을 입력해주시기 바랍니다");
		document.regForm.b_title.focus();
		return false;
	}
	
	if(document.regForm.b_content.value==""){
		alert("내용을 입력해주시기 바랍니다");
		document.regForm.b_content.focus();
		return false;
	}
	return true;
}

function cancelCheck(){
	var cancel = document.getElementsByName("reserve");
	var checkedNum = 0;
	
	for(var i=0;i<cancel.length;i++){
		if(cancel[i].checked==true){
			checkedNum += 1;
		}
	}
	
	if(checkedNum == 0){
		alert("최소 1개 이상의 내역을 선택하여 주세요");
		return false;
	}
	return true;
}

/*inquiryDetail.jsp*/
var isOpen = false;
function showDesc(num){
	if(isOpen == false){
		document.querySelector("#hideContent"+num).style.display="block";
		var showContent = document.querySelectorAll("#showContent"+num);
		for(var i=0;i<showContent.length;i++){
			showContent[i].style.display = "none";
		}
		isOpen = true;
	}else{
		document.querySelector("#hideContent"+num).style.display="none";
		var showContent = document.querySelectorAll("#showContent"+num);
		for(var i=0;i<showContent.length;i++){
			showContent[i].style.display = "block";
		}
		isOpen = false;
	}
}

/* room-roomInfo.jsp */
var slides = document.querySelectorAll("#Img > img"); // 이미지들 선택하여 배열로 반환
var prev = document.querySelector("#imgPrev");	// 이전 버튼
var next = document.querySelector("#imgNext");	// 다음 버튼
var current = 0;

/* login - main.jsp */
// showSlide() 함수 이용하여 current에 보여줄 이미지
function showSlide(n){
	for(var i=0;i<slides.length;i++){
		slides[i].style.display = "none";
	}
	slides[n].style.display = "block";
}
showSlide(current);

// prev 버튼 클릭시 실행할 함수
function prevSlide(){
	if(current > 0){
		current--;
	}else{
		current = slides.length-1;
	}
	showSlide(current);
}
prev.onclick = prevSlide;

// next 버튼 클릭시 실행할 함수
function nextSlide(){
	if(current < slides.length-1){
		current += 1;
	}else{
		current=0;
	}
	showSlide(current);
}
next.onclick = nextSlide;

/* user -reserveCancel.jsp  */
