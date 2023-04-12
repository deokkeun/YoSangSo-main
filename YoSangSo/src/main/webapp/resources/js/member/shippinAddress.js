const titleBtn = document.getElementsByClassName("title-btn");

titleBtn[0].addEventListener("click", function() {
    titleBtn[0].style.borderBottom = "1px solid black";
    titleBtn[1].style.borderBottom = "1px solid rgba(0, 0, 0, 0.2)";
});
titleBtn[1].addEventListener("click", function() {
    titleBtn[1].style.borderBottom = "1px solid black";
    titleBtn[0].style.borderBottom = "1px solid rgba(0, 0, 0, 0.2)";
});
