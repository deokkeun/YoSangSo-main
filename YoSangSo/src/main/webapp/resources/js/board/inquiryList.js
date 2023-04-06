// 게시물을 클릭했을 시, 내가 등록한 글이면 (1)
// 수정, 삭제 버튼을 통해서 수장, 삭제 구현 (2)

// 삭제하기 기능
(function(){
    const inquiryDelete = document.getElementById("inquiryDelete");
    if(inquiryDelete != null){ // 버튼이 있을 떄,
        inquiryDelete.addEventListener("click", e =>{

            if( confirm("정말로 삭제 하시겠습니까?") ){
                location.href = "inquiryDelete";
            }
        });
    }
})();



// 수정하기 기능
(function(){
    const inquiryUpdate = document.getElementById("inquiryUpdate"); // 수정 버튼 
    const questionP = document.getElementById("questionP"); // 답변 박스안에 문의 내용
    const inquiryDelete = document.getElementById("inquiryDelete"); // 삭제 버튼
    const answerInnerBox = document.getElementById("answerInnerBox");  // 답변박스
    
    if(inquiryUpdate != null){ // 버튼이 있을 때, 
        inquiryUpdate.addEventListener("click" , e =>{
            
            questionP.innerText = "";

            let textAreaP = document.createElement("textarea");
            questionP.append(textAreaP);
            
            textAreaP.setAttribute('cols', 130);
            textAreaP.setAttribute('rows', 10);
            
            // 업데이트 확인 버튼 생겨야함 
            const updateConfirm = document.createElement("button"); // 업데이트 확인 버튼

            // 기존에 삭제버튼,수정 버튼 삭제하고 업데이트 확인 버튼 생기게 하자
            inquiryDelete.remove();
            inquiryUpdate.remove();
            
            // 업데이트 확인 버튼 생기게 하기
            // 답변 박스쪽에 생기게 하기

            answerInnerBox.append(updateConfirm);
            updateConfirm.innerText = "수정확인";
            updateConfirm.setAttribute('type', 'button');

            // 수정확인 버튼을 누르면 글이 수정될 수 있게 해야함

            if(updateConfirm != null){ // 업데이트 확인 버튼이 null이 아닐 때,
                updateConfirm.addEventListener("click", e =>{
                    if(textAreaP.value == ""){
                        alert("내용을 입력해주세요.");
                    }else{
                        console.log("에이젝스 전")
                        $.ajax({
                            url : "inquiryUpdate",
                            data : {"textAreaP" : textAreaP.value},
                            type : "GET",
                            success : function(result){
                                console.log(result);
                                if(result > 0){
                                    console.log(result);
                                    console.log("둔하시네요.");
                                    alert("게시물 수정이 완료되었습니다.");
                                    location.reload();
                                }else{
                                    alert("게시물 수정이 실패되었습니다.");
                                    textAreaP.value = "";
                                    location.reload();
                                }
                            },
                            error : function(){
                                console.log("에러발생");
                            }
                        }); // ajax 구문 끝
                        
                    } //else 문 끝
                }); // 수정 확인 버튼 클릭 이벤트 구문 끝
            } // 수정확인 if문 끝 
        }); // 인쿼리 업데이트 버튼 클릭 이벤트 구문 끝

    } //  수정 if문 끝

})(); // 수정기능 즉시실행 함수 끝 






















// 3