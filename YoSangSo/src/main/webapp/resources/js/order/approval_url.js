onload = function() {
	
    this.alert("즉시 실행");

	$.ajax({
		url : "payResult",
		type : "POST",
		success : function() {
			alert("성공");
		},
		error : function() {
			alert("실패");
		}
	});

}