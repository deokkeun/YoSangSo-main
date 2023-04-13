// 검색창
const searchForm = document.querySelector("#search-area fieldset");

document.getElementById("query").addEventListener("focus", e => {
    searchForm.style.border = "1px solid #2678F3";
});
document.getElementById("query").addEventListener("focusout", e => {
    searchForm.style.border = "";
    // e.target.value = "";
});
document.getElementById("query").addEventListener("mouseover", e => {
    searchForm.style.border = "1px solid rgba(0, 0, 0, 0.2)";
});

/* ----------------------------------------------------------- */

// 메인페이지 top버튼 숨김/나타남 스크립트

$(function() {
    $(window).scroll(function() { 
      if ($(this).scrollTop() > 200) { 
        $('#topBtn').fadeIn(); } 
      else { $('#topBtn').fadeOut(); }
    }); 
    $("#topBtn").click(function() { 
       $('html, body').animate({ scrollTop : 0  }, 300); 
      return false; });
  });
  
  
/* ----------------------------------------------------------- */

// 퀵메뉴 선택 효과

// 첫번째 버튼(전제품) 누르면
// mainFont가진 모든 클래스에 붙은 select 클래스명 제거
// 전제품에 select 클래스명 추가  

//첫번째 mainFont를 누르면 안에 코드 실행해줌

/*let quick = $('.mainFont');*/

//퀵메뉴 전제품효과
$('.mainFont').eq(0).on('click', function(){
    $('.mainFont').removeClass('select');
    $('.mainFont').eq(0).addClass('select');
});

//퀵메뉴 신상품효과
$('.mainFont').eq(1).on('click', function(){
    $('.mainFont').removeClass('select');
    $('.mainFont').eq(1).addClass('select');
});

//퀵메뉴 베스트효과
$('.mainFont').eq(2).on('click', function(){
    $('.mainFont').removeClass('select');
    $('.mainFont').eq(2).addClass('select');
});
