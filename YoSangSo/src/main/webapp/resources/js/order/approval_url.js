onload = function() {
	
	// 주문 번호
	const orderNo = document.getElementById("orderNo");
	// 주문 날짜
	const orderDate = document.getElementById("orderDate");

	// 상품명
	const productName = document.getElementsByClassName("productName");
	// 배송 시작 날짜
	const deliveryDate = document.getElementsByClassName("deliveryDate");
	// 구매 수량
	const buyingRate = document.getElementsByClassName("buyingRate");
	// 가격
	const price = document.getElementsByClassName("price");
	// 상품 이미지
	const productImage = document.getElementsByClassName("product-image");


	$.ajax({
		url : "payResult",
		type : "POST",
		dataType : "JSON",
		success : function(approval) {
			
			
			console.log(approval[0].orderNo);
			//orderNo.innerHTML = approval[0].orderNo;
			const package = document.getElementById("package");
			
			for(let app of approval) {
				// 상품담긴 박스
				const deliveryBox = document.createElement("div");
				deliveryBox.classList.add("delivery-box");

				orderNo.innerHTML = app.orderNo;
				orderDate.innerHTML = app.orderDate;

				// 이미지 생성
				const img = document.createElement("img");
				img.setAttribute("src", "/YoSangSo/resources/image/product/" + app.productName + ".jpg");
				img.style.width = "220px";
				img.style.height = "180px";
				// 이미지 공간 크기 할당(이미지 담기)
				const imgBox = document.createElement("div");
				imgBox.classList.add("product-image");
				imgBox.append(img);


				// 상품명
				const productName = document.createElement("div");
				productName.classList.add("productName");
				productName.innerHTML = app.productName;

				// 배송시작날짜
				const deliveryDate = document.createElement("div");
				deliveryDate.classList.add("deliveryDate");
				deliveryDate.innerHTML = "배송 시작 일정 : " + app.deliveryDate;

				// 구매수량
				const buyingRate = document.createElement("div");
				buyingRate.classList.add("buyingRate");
				buyingRate.innerHTML = app.buyingRate + " 개";

				// 가격
				const price = document.createElement("div");
				price.classList.add("price");
				price.innerHTML = app.price + " 원";

				// 구매수량 + 가격
				const row = document.createElement("div");
				row.classList.add("row");
				row.append(buyingRate, price);

				// 상품정보 == 상품명 + 배송시작날짜 + (구매수량 + 가격)
				const productInfo = document.createElement("div");
				productInfo.classList.add("product-info");
				productInfo.append(productName, deliveryDate, row);
				// 이미지 박스 + 상품정보
				
				deliveryBox.append(imgBox, productInfo);
				package.append(deliveryBox);	
			}


			// 주문번호, 주문날짜
			orderNo.style.fontSize = "12px";
			orderNo.style.fontWeight = "bold";
			orderDate.style.fontSize = "12px";
			orderDate.style.fontWeight = "bold";
			
		},
		error : function() {
			alert("실패");
		}
	});

};