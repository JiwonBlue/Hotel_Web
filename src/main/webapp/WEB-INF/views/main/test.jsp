<%@ page contentType="text/html;charset=utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
  <head>
    <style>
      .slideshow-container {
        max-width: 400px;
        position: relative;
        margin: auto;
        overflow: hidden;
      }

      .slide-wrapper {
        display: flex;
        transition: transform 0.5s ease-in-out; /* 부드러운 전환을 위한 transition 추가 */
        width: 300%; /* 슬라이드 전체 너비 설정 */
      }

      .slide {
        flex: 0 0 33.33%; /* 3개의 슬라이드가 33.33%씩 차지하도록 설정 */
      }

      .slide img {
        width: 100%;
        height: auto;
      }
    </style>
  </head>
  <body>
    <div class="slideshow-container">
      <div class="slide-wrapper">
        <div class="slide">
          <img src="../data/main02.jpg" alt="Image 1" />
        </div>

        <div class="slide">
          <img src="../data/main07.jpg" alt="Image 2" />
        </div>

        <div class="slide">
          <img src="../data/main05.jpg" alt="Image 3" />
        </div>
      </div>
    </div>

    <script>
      let slideIndex = 0;
      showSlides();

      function showSlides() {
        let slideWrapper = document.querySelector('.slide-wrapper');
        slideIndex++;
        if (slideIndex >= 3) {
          slideIndex = 0;
        }
        slideWrapper.style.transform = `translateX(-${slideIndex * 100}%)`;
        setTimeout(showSlides, 2000); // 2초마다 이미지 전환
      }
    </script>
  </body>
</html>
