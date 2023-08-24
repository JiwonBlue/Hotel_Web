/**
 * main.jsp에서 슬라이드 쇼 기능해주는 js
 */

var slides = document.querySelectorAll("#container > img"); // 이미지들 선택하여 배열로 반환
var prev = document.querySelector("#prev");	// 이전 버튼
var next = document.querySelector("#next");	// 다음 버튼
var current = 0;

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