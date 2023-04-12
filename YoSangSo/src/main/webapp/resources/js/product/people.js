// people-bg로 제목, 서브제목, 배경색
const leftTitle = document.querySelector(".people-bg h2");
const leftSubTitle = document.querySelector(".people-bg p:nth-of-type(2)");
const rightTitle = document.querySelector(".right-title");
const rightSubTitle = document.querySelector(".right-sub-title");

window.onload = function() {
    rightTitle.innerText = leftTitle.innerText;
    rightSubTitle.innerText = leftSubTitle.innerText;
};

