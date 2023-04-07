const toggleBG = document.getElementsByClassName("toggleBG");
const toggleFG = document.getElementsByClassName("toggleFG");

let isOn1 = false;
toggleBG[0].addEventListener("click", function() {
    if(isOn1) {
        toggleBG[0].classList.remove("on");
        console.log('off');
        toggleFG[0].style.left = "0px";
    } else {
        toggleBG[0].classList.add("on");
        console.log("on");
        toggleFG[0].style.left = "25px";
    }
    isOn1 = !isOn1;
});
let isOn2 = false;
toggleBG[1].addEventListener("click", function() {
    if(isOn2) {
        toggleBG[1].classList.remove("on");
        console.log('off');
        toggleFG[1].style.left = "0px";
    } else {
        toggleBG[1].classList.add("on");
        console.log("on");
        toggleFG[1].style.left = "25px";
    }
    isOn2 = !isOn2;
});

