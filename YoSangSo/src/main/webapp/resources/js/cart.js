
// cart slider

$(document).ready(function(){
    $('.post-wrap').slick({
        
        arrows : true,
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3,
        nextArrow: "<button type='button' class='slick-next'><img src='../resources/image/cart/right.png' style='width:30px;'></button>",
        prevArrow: "<button type='button' class='slick-prev'><img src='../resources/image/cart/left.png' style='width:30px;'></button>"
    })
});


function plusCount(index) {
	
	let countArr = document.getElementsByClassName("counting-input");
	let productArr = document.getElementsByClassName("productNo");
	
	let memberNo = document.getElementById("memberNo").value;
	let count = countArr[index].value;
	let product = productArr[index].value;
	
	$.ajax({
		url: "plusCount",
		type:  "post",
		data: {"memberNo": memberNo, "count":count, "product":product },
		success: function(result){
			if(result>0){
				document.location.reload();
				console.log("성공");
			}
		}
	});
	
	
}


function minusCount(index) {
	let countArr = document.getElementsByClassName("counting-input");
	let productArr = document.getElementsByClassName("productNo");

	let memberNo = document.getElementById("memberNo").value;
	let count = countArr[index].value;
	let product = productArr[index].value;
	
		$.ajax({
		url: "minusCount",
		type:  "post",
		data: {"memberNo": memberNo, "count":count, "product":product },
		success: function(result){
			if(result>0){
				document.location.reload();
				console.log("성공");
			}else{
				document.location.reload();
			}
		}
	});

}