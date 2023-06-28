
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

function deleteOne(productNo){
	
	$.ajax({
		url: "cartDeleteOne",
		type:  "post",
		data: {"productNo" : productNo},
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

let confirm = function(msg, title, warning) {
		swal({
			title : title,
			text : msg,
			icon : warning,
			buttons: ["아니요", "예"],
			reverseButtons : true
		}).then(function(isConfirm){
			if (isConfirm) {
				$("#deleteCartAll").submit();
			}else{
				swal('취소하였습니다' ,'', "info");
			}
		});
	}

function deleteConfirm(){
	confirm('','정말로 삭제하시겠습니까?','warning');
}

