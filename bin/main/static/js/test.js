var slides = document.querySelectorAll('#container > img');
var prev = document.querySelector('#prev');
var next = document.querySelector('#next');
var current = 0;

function showSlide(n) {
  for (var i = 0; i < slides.length; i++) {
    slides[i].classList.remove('active');
  }
  slides[n].classList.add('active');
}
showSlide(current);

function prevSlide() {
  current = current > 0 ? current - 1 : slides.length - 1;
  showSlide(current);
}
prev.onclick = prevSlide;

function nextSlide() {
  current = current < slides.length - 1 ? current + 1 : 0;
  showSlide(current);
}
next.onclick = nextSlide;

function autoSlide() {
  nextSlide();
}
setInterval(autoSlide, 3000);
