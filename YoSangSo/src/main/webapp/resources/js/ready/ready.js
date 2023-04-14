$(document).ready(function() {
    // 페이지 로드가 완료되면 실행될 함수
  
    // 화면 중앙으로 포커스 이동
    $("html, body").animate({
      scrollTop: $(document).height() / 2 - $(window).height() / 2
    }, 0);
  
  });
  