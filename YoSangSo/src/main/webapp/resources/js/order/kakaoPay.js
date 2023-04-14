
function kakaopay() {
	
	// 유효성 검사
	const memName = document.getElementsByClassName("memName");
	const memTel = document.getElementsByClassName("memTel");
	const zip = document.getElementsByClassName("zip");
	const add = document.getElementsByClassName("add");
	const addDetail = document.getElementsByClassName("addDetail");
	
	const checkObj = {
		"memName" : false,
		"memTel" : false,
		"zip" : false,
		"add" : false,
		"addDetail" : false
	}
	
	
	// 이름 유효성 검사
	regExpName = /^[가-힣a-zA-Z]{2,18}$/;
	if(regExpName.test(memName[0].value)) {
		checkObj.memName = true;
	} else {
		checkObj.memName = false;
	}
	
	// 전화번호 유효성 검사
	regExp = /^0(1[01679])\d{4}\d{4}$/;
	if(regExp.test(memTel[0].value)) {
		checkObj.memTel = true;
	} else {
		checkObj.memTel = false;
	}
	
	// 우편번호 유효성 검사
	regExp = /^\d{5,6}$/;
	if(regExp.test(zip[0].value)) {
		checkObj.zip = true;
	} else {
		checkObj.zip = false;
	}
	
	// 주소 유효성 검사
	if(add[0].value.length != 0) {
		checkObj.add = true;
	} else {
		checkObj.add = false;
	}
	
	// 주소 상세 유효성 검사
	if(addDetail[0].value.length != 0) {
		checkObj.addDetail = true;
	} else {
		checkObj.addDetail = false;
	}
	
	
	function validate() {
		let str;
		
		for(let key in checkObj) {
			if(!checkObj[key]) {
				switch(key) {
					case "memName": str="이름이"; break;
					case "memTel": str="휴대폰번호 형식이"; break;
					case "zip": str="우편번호가"; break;
					case "add": str="주소가"; break;
					case "addDetail": str="상세주소가"; break;
				}
				
				str += " 유효하지 않습니다.";
				
				// alert(str);
				swal('결제 실패!', str, 'warning');
				
				document.getElementsByClassName(key[0]).focus();
				
				return false;
			}
		}
		
		return true;
	}
	
	
	
	if( !validate() )  {
	// 유효성검사 실패 
		return false; 
		
	} else {
		// 유효성검사 성공 

	
	
	
	// 결제 로딩
	const main = document.getElementsByTagName("main");
	main[0].style.pointerEvents = "none";
	main[0].classList.add("filter-blur");
	const loaderFix = document.getElementsByClassName("loader-fix");
	loaderFix[0].style.display = "block";
	
	
	setTimeout(function() {
		main[0].classList.remove("filter-blur");
		main[0].style.pointerEvents = "auto";
		loaderFix[0].style.display = "none";
	}, 3000);



	// DB 정보 저장과 카카오 결제에 필요한 정보 추출
    // 회원 번호
    const memberNo = document.getElementById("memNo");
	console.log(memberNo.innerText);
	    
	function generateOrderNumber() {
	  // 현재 시간을 기반으로 주문번호를 생성합니다.
	  const now = new Date();
	  const year = now.getFullYear().toString().slice(2);
	  const month = (now.getMonth() + 1).toString().padStart(2, '0');
	  const date = now.getDate().toString().padStart(2, '0');
	  const hours = now.getHours().toString().padStart(2, '0');
	  const minutes = now.getMinutes().toString().padStart(2, '0');
	  const seconds = now.getSeconds().toString().padStart(2, '0');
	  const milliseconds = now.getMilliseconds().toString().padStart(3, '0');
	  
	  // 주문번호를 문자열 형태로 생성합니다.
	  const orderNumberString = `${year}${month}${date}${hours}${minutes}${seconds}${milliseconds}`;
	  
	  // 주문번호를 숫자형으로 변환합니다.
	  const orderNumber = Number(orderNumberString);
	  
	  return orderNumber;
	}
	
	// 주문번호 생성 예시
	const orderNum = generateOrderNumber();
	console.log(orderNum); // 예시 출력: 230408112154951
		
	// 주문 이름
	const memberName = document.getElementById("memberName");
	console.log(memberName.value);
	
	// 주문 전화번호
	const memberTel = document.getElementById("memberTel");
	console.log(memberTel.value);
    
    // 우편번호
	const sample6Postcode = document.getElementById("sample6_postcode");
	console.log(sample6Postcode.value);
	
	// 주소
	const sample6Address = document.getElementById("sample6_address");
	const sample6DetailAddress = document.getElementById("sample6_detailAddress");
	const address = sample6Address.value + " " + sample6DetailAddress.value;
	console.log(address);
	
	// 요청사항
	const request = document.getElementById("request");
	console.log(request.value);
	
	
	//최종 결제 금액(카카오)
	const totalPrice = document.getElementById("totalPrice");
	console.log(totalPrice.innerText);
	const numRegExp = /\d+/;
	const totalPriceValue = totalPrice.innerText;
	const total = totalPriceValue.match(numRegExp);
	console.log(total[0]);
	
	


	// 상품 번호(주문상세)
	const productNo = document.getElementsByClassName("productNo");
	// 상품명(카카오)
	const productName = document.getElementsByClassName("productName");
	// 상품 개수(카카오, 주문상세)
	const productCount = document.getElementsByClassName("productCount");
	let totalProductName = "";
	let totalCount = 0;
	
	const productCountPrice = document.getElementsByClassName("productCountPrice");
	
	// 구매하는 목록(카카오)
	for(let i = 0; i < productNo.length; i++) {
		const numRegExp = /\d+/;
		const count = productCount[i].innerText.match(numRegExp);
		const countPrice = productCountPrice[i].innerText.match(numRegExp);
		// 상품번호
		console.log(productNo[i].innerText);
		// 상품 명
		console.log(productName[i].innerText);
		totalProductName += productName[i].innerText + " " + productCount[i].innerText + ", ";
		// 수량
		console.log(count[0]);
		totalCount += count[0];
		// 개수에 맞는 상품 가격
		console.log(countPrice[0]);
	}


	// 주문자 정보 ORDER테이블에 정보 추가
	$.ajax({
		url : "order",
		data : {"memberNo": memberNo.innerText,
				"orderNum" : orderNum,
				"orderName" : memberName.value,
				"orderPhone" : memberTel.value,
				"zipCode" : sample6Postcode.value,
				"address" : address
				},
		type : "POST",
		dataType : "JSON",
		success : function() {
			
			addOrderDetail();
			console.log("구매자 정보 order테이블 추가 성공");
		},
		error : function() {
			alert("구매자 정보 order테이블 추가 실패");
		}
	});
		
		
		
	function addOrderDetail() {
	
		// 주문자 정보 추가시 주문번호에 맞는 상품 상세 정보 ORDER_DETAIL테이블 상품정보 추가
		for(let i = 0; i < productNo.length; i++) {
			const numRegExp = /\d+/;
			const productNo = document.getElementsByClassName("productNo");
			const count = productCount[i].innerText.match(numRegExp);
			const countPrice = productCountPrice[i].innerText.match(numRegExp);
			$.ajax({
				url : "orderDetail",
				data : {"productNo" : productNo[i].innerText,
						"count" : count[0],
						"countPrice" : countPrice[0],
						"request" : request.value,
						"orderNum" : orderNum,
						},
				type : "POST",
				dataType : "JSON",
				success : function(result) {
					console.log("구매한 상품정보 등록 성공");
					
				},
				error : function() {
					alert("상품 구매정보 추가 실패");
				}
			});		
		}	
	}
		
			
	
			
	setTimeout(function() {
				
	// 결제정보 모두 추가 후 카카오 결제 시도		
	const memberEmail = document.getElementById("memEmail");
	console.log(memEmail.innerText);
	// 백단에서 상품 데이터 긁어오기 선행 후 카카오페이 결제 요청
	const adminkey = "04b08a0a8e9e9c287f976e2d26497612";
	$.ajax({
		url : "https://kapi.kakao.com/v1/payment/ready",
		type: "post",
		headers : {Authorization : "KakaoAK " + adminkey},
		dataType : "json",
		data: {
			cid: "TC0ONETIME",
			partner_order_id: orderNum,
			partner_user_id: memberEmail.innerText,
			item_name: totalProductName,
			quantity: totalCount,
			total_amount: total[0],
			tax_free_amount: 500,
			approval_url: "http://localhost:8080/YoSangSo/order/approval_url",
			cancel_url: "http://localhost:8080/YoSangSo/order/pay",
			fail_url: "http://localhost:8080/YoSangSo/order/pay"
		},
		success: function(result) {
			console.log("카카오페이 결제 성공");
			window.open(result.next_redirect_pc_url);
		},
		error: function() {
			alert("카카오페이 결제 실패");
		}
	});

	}, 3000);
	




	}// 유효성검사 else 
} // kakaopay()
	
	
	