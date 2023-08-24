const header = document.getElementById('header');
const toggleButton = document.getElementById('toggleButton');

let isHeaderHidden = false;

toggleButton.addEventListener('click', () => {
  if (isHeaderHidden) {
    header.style.top = '0';
    isHeaderHidden = false;
  } else {
    header.headcontainer.position = 'static'; // 헤더를 숨김
    isHeaderHidden = true;
  }
});
