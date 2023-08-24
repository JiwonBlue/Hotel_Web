// 슬라이드 이미지들을 선택하여 배열로 저장
var slides = document.querySelectorAll('#container > img');

// 이전 버튼과 다음 버튼을 선택
var prev = document.querySelector('#prev');
var next = document.querySelector('#next');

// 현재 보여지고 있는 슬라이드의 인덱스를 저장하는 변수
var current = 0;

// 슬라이드 이미지를 보여주는 함수
function showSlide(n) {
  // 모든 슬라이드의 클래스 제거
  for (var i = 0; i < slides.length; i++) {
    slides[i].classList.remove('active');
  }
  // 현재 슬라이드에 'active' 클래스 추가
  slides[n].classList.add('active');
}

// 초기에 첫 번째 슬라이드를 보여줌
showSlide(current);

// 이전 버튼을 클릭했을 때 실행할 함수
function prevSlide() {
  // current가 0보다 크면 1 감소, 아니면 마지막 슬라이드로 이동
  current = current > 0 ? current - 1 : slides.length - 1;
  showSlide(current);
}
prev.onclick = prevSlide;

// 다음 버튼을 클릭했을 때 실행할 함수
function nextSlide() {
  // current가 마지막 슬라이드보다 작으면 1 증가, 아니면 첫 번째 슬라이드로 이동
  current = current < slides.length - 1 ? current + 1 : 0;
  showSlide(current);
}
next.onclick = nextSlide;

// 자동으로 슬라이드를 넘기는 함수
function autoSlide() {
  nextSlide(); // 다음 슬라이드로 이동
}

// 3초마다 자동으로 슬라이드를 넘기도록 설정
setInterval(autoSlide, 3000);
