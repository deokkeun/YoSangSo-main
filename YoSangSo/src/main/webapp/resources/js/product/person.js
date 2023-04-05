function goTop(){
	document.documentElement.scrollTop = 0;
}

$(".list").click(function() {
	console.log("클릭 성공");
	
    // 선택한 버튼 배경색
    $(this).parent().siblings().removeClass("people-bg");
    $(this).parent().addClass("people-bg");
	
	const leftTitle = $(this).children("h2").text();
	const leftSubTitle = $(this).children("p").next().text();
	
    $.ajax({
		// 현재 :  /yosangso/product/person
		// 목표 :  /yosangso/product/personList
        url : "personList",
        data : {"part" : $(this).val()},
        type : "GET",
        dataType : "JSON",
        success : function(personList) {
			
			console.log("ajax 통신 성공");
			
			const listBox = document.getElementById("list-box");
			
			listBox.innerText = "";
			for(let product of personList) {
			
			console.log($(this).parent());
				
			console.log(product);
			
			console.log(product.productImage);
			console.log(product.productName);

			const rightTitle = document.getElementById("right-title");
			const rightSubTitle = document.getElementById("right-sub-title");
			rightTitle.innerText = leftTitle;
			rightSubTitle.innerText = leftSubTitle;



            // 제품 이미지
            const productImage = document.createElement("img");
            // 이미지 경로는 DB에 경로를 넣어야 하나 String으로 넣어야..
            productImage.setAttribute("src", product.productImage);   
            // 이미지 박스
            const productImageBox = document.createElement("div");
            productImageBox.append(productImage);
            
                 
            // 제품명
            const productName = document.createElement("p");
            productName.innerText = product.productName;
            // 제품명 박스
            const productNameBox = document.createElement("div");
            productNameBox.append(productName);
            
            // 제품 박스
            const productBox = document.createElement("div");
            productBox.classList.add("product");
            productBox.append(productImageBox, productNameBox);
            
            // 제품 링크 연결
            const productLink = document.createElement("a");
            productLink.setAttribute("src", "");              
            // 경로 연결...................
            productLink.append(productBox);
		
            // li
            const list = document.createElement("li");
			list.append(productLink);
			
			// ul에 담기
        	listBox.append(list);
			}
			
            
        },
        error : function() {

            console.log("ajax 통신 실패 ㅜㅜ");

        }
    })


});