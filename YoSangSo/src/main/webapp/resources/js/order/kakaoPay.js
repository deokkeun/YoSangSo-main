
function kakaopay() {


	const checkObj = {
		"memberName" : false,
		"memberTel" : false,
		"zipCode" : false,
		"address" : false,
		"memberName" : false,
		"request" : false
	};

	const memberName = document.getElementById("memberName");
	console.log(memberName);
	const totalPrice = document.getElementById("totalPrice");
	console.log(totalPrice.innerText);

	
	
	// 백단에서 상품 데이터 긁어오기 선행 후 카카오페이 결제 요청
	const adminkey = "04b08a0a8e9e9c287f976e2d26497612";
	$.ajax({
		url : "https://kapi.kakao.com/v1/payment/ready",
		type: "post",
		headers : {Authorization : "KakaoAK " + adminkey},
		dataType : "json",
		data: {
			cid: "TC0ONETIME",
			partner_order_id: "partner_order_id",
			partner_user_id: "partner_user_id",
			item_name: "남성비타민",
			quantity: 10,
			total_amount: 50000,
			tax_free_amount: 5000,
			approval_url: "http://localhost:8080/YoSangSo/order/approval_url",
			cancel_url: "http://localhost:8080/YoSangSo/order/cancle_url",
			fail_url: "http://localhost:8080/YoSangSo/order/fail_url"
		},
		success: function(result) {
			console.log(result);
			alert("성공");
			window.open(result.next_redirect_pc_url);
		},
		error: function() {
			alert("실패");
		}
	});
}