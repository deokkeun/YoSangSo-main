const titleBtn = document.getElementsByClassName("title-btn");

let clickSuccess1 = false;
titleBtn[0].addEventListener("click", function() {
    if(clickSuccess1) {
        titleBtn[1].style.borderBottom = "1px solid black";
        titleBtn[0].style.borderBottom = "1px solid rgba(0, 0, 0, 0.2)";
    } else {
        titleBtn[0].style.borderBottom = "1px solid black";
        titleBtn[1].style.borderBottom = "1px solid rgba(0, 0, 0, 0.2)";
    }
    clickSuccess1 = !clickSuccess1;
});
let clickSuccess2 = false;
titleBtn[1].addEventListener("click", function() {
    if(clickSuccess2) {
        titleBtn[0].style.borderBottom = "1px solid black";
        titleBtn[1].style.borderBottom = "1px solid rgba(0, 0, 0, 0.2)";
    } else {
        titleBtn[1].style.borderBottom = "1px solid black";
        titleBtn[0].style.borderBottom = "1px solid rgba(0, 0, 0, 0.2)";
    }
    clickSuccess2 = !clickSuccess2;
});
