function refund(){
	
	const options="width=600, height=400, top=50, left=700";

    window.open("/YoSangSo/popup.jsp", "popupWindow", options);
	
}

function seeDetail(orderNo){
	
	const options="width=800, height=500, top=50, left=700";

    window.open("/YoSangSo/seeDetail?orderNo=" + orderNo, "popupWindow", options);
	
}

