function goTop(){
	document.documentElement.scrollTop = 0;
}

    
$(".list").click(function() {
    
    console.log("클릭 성공");

    // 선택한 버튼 배경색
    // $(this).parent().siblings().removeClass("people-bg");
    // $(this).parent().addClass("people-bg");

    let r = Math.floor(Math.random() * (230 - 180)) + 180;
    let g = Math.floor(Math.random() * (230 - 180)) + 180;
    let b = Math.floor(Math.random() * (230 - 180)) + 180;
    let randomRgb = `rgb(${r}, ${g}, ${b})`;
    $(this).parent().siblings().css('background-color', 'rgb(255, 255, 255)');
    $(this).parent().css('background-color', randomRgb);
    
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
                productImage.setAttribute("src", "${contextPath}/resources/image/product/${product.productName}.jpg"); 
                productImage.style.width = "145px";
                productImage.style.height = "105px";
                
                // 이미지 박스
                const productImageBox = document.createElement("div");
                productImageBox.appendChild(productImage);
                
                    
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
                productLink.setAttribute("href", "");              
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

    const cbrc = document.getElementsByClassName("content-box-right-content");
    cbrc[0].style.backgroundColor = randomRgb;

});