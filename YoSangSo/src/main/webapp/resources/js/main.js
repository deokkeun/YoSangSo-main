

function noSpace(){
	
	
	let query = document.getElementById("query");
	
	query.value = query.value.replaceAll(' ','');
	
	if(query.value=="" || query.value == null){
		alert("공백은 검색할 수 없습니다.")
		return false;
	}
	
}

