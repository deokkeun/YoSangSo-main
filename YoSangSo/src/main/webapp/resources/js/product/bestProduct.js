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
  
  