
function refundYes(){
	
	let selectReason = document.querySelectorAll('input[name="refundReason"]:checked');
	
	
	if(selectReason.length == 0){
		swal("하나 이상의 이유를 선택해주세요","","info");
	}else{
	    opener.document.getElementById("main-form").submit();
	    window.close();
	}
	
}

function refundNo(){
    window.close();
}

