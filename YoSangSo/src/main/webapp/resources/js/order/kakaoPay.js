$(function() {
	$("#pay-btn").click(function() {
		
		$.ajax({
			url : "kakaoPay",
			dataType : "JSON",
			success : function() {
				alert("결제 성공!");
			},
			error : function() {
				alert("결제 실패!");
			}
			
			
		});
		
		
	});
});