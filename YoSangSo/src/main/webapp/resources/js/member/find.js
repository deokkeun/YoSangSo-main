const memId = document.getElementById("memId");
const memPw = document.getElementById("memPw");
const mainBtn = document.getElementsByClassName("main-btn");

mainBtn[0].addEventListener("mouseover", function() {
    memId.style.color = "#2678f3";
    memId.style.fontSize = "20px";
});
mainBtn[0].addEventListener("mouseout", function() {
    memId.style.color = "black";
    memId.style.fontSize = "16px";
});
mainBtn[1].addEventListener("mouseover", function() {
    memPw.style.color = "#2678f3";
    memPw.style.fontSize = "20px";
});
mainBtn[1].addEventListener("mouseout", function() {
    memPw.style.color = "black";
    memPw.style.fontSize = "16px";
});
