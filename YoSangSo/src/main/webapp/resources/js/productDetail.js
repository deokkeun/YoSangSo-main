let curPos = 0; // 현재 보이는 요소의 인덱스 번호

function prev(){
    if(curPos > 0){
        $("button").removeAttr("disabled") // 모든 버튼 사용할 수 있게!
        // toggleClass : 클래스가 있으면 제거, 없으면 생성!
        $($(".item")[curPos]).toggleClass("active")
        $($(".step")[curPos]).toggleClass("active-step")
        $(".item").hide();
        curPos -= 1;
        $($(".item")[curPos]).toggleClass("active")
        $($(".step")[curPos]).toggleClass("active-step")
        $(".active").fadeIn(800); // 새로운 액티브 요소만 스르륵 나타난다
    }
    if(curPos == 0){
        $(".prev")[0].setAttribute("disabled",'true')
    }
}
function next(){
    if(curPos < 3){
        $("button").removeAttr("disabled")
        $($(".item")[curPos]).toggleClass("active")
        $($(".step")[curPos]).toggleClass("active-step")
        $(".item").hide();
        curPos += 1;
        $($(".item")[curPos]).toggleClass("active")
        $($(".step")[curPos]).toggleClass("active-step")
        $(".active").fadeIn(800); 
    }
    if(curPos == 3){
        $(".next")[0].setAttribute("disabled",'true')
    }
}
function init(){
    $(".item").hide()
    $(".active").show()
    $(".prev").click(prev)
    $(".next").click(next)
}
$(document).ready(function() {
    init();
})


$(".que").click(function() {
    $(this).next(".anw").stop().slideToggle(300);
   $(this).toggleClass('on').siblings().removeClass('on');
   $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
 });

 $(document).ready(function(){
    $('.post-wrap').slick({
        
        arrows : true,
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3,
        nextArrow: "<button type='button' class='slick-next'><img src='${contextPath}/resources/image/product/right.jpg' style='width:30px;'></button>",
        prevArrow: "<button type='button' class='slick-prev'><img src='${contextPath}/resources/image/product/left.jpg' style='width:30px;'></button>"
    })
});

const price = document.getElementById("price");
const count = document.getElementById("countbox");
const totalcost = document.getElementById("totalcost");
const delcost = document.getElementById("delcost");

count.addEventListener("click", function() {


    const n1 = Number(price.innerText) * count.value
    const n2 = delcost.value

    totalcost.innerText = Number(n1)+Number(n2)
});

function addcart() {
	const count = document.getElementById("countbox").value;
	const pro = document.getElementById("proNo").value;
	var signIn = sessionStorage.getItem('loginmember');
	console.log(count);
	console.log(pro);
	console.log(loginmember);
	

		$.ajax({
		url: "addcart",
		type: "get",
		data: {"count" : count, "productNo" : pro},
		success: function(result){
			alert("장바구니에 추가됨");;
		},
		error: function() {
			alert("수량을 선택해주세요");
			
			
		}
	});
		
}

function login() {
	location.href="http://localhost:8080/yosangso/member/login"
	
}









