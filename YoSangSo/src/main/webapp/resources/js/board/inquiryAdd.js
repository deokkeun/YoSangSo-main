// 요소 선언
const confirmWritingQ = document.getElementById("confirmWritingQ"); // 추가 버튼
const cancelWritingQ = document.getElementById("cancelWritingQ"); // 삭제 버튼
const inquiryContent = document.getElementById("inquiryContent");

// 추가 버튼 클릭 시, 기능
confirmWritingQ.addEventListener("click", e => {
    // 아무 내용없이 등록하기 눌렀을 떄, 알림창 띄워주기
    if(inquiryContent.value == ""){
     
        alert("문의를 입력해주세요.");
        location.reload();
        
    }else{
        // 내용이 있을 경우, ajax통신으로 
        $.ajax({
            url : "inquiryAdd",
            data : {"inquiryAdd" : inquiryContent.value },
            type : "GET",
            success : function(result){
                // result이 0 초과일 시, 게시글 등록 성공 // result가 0일 때는 게시글 등록 실패
                if(result > 0 ){
                    alert("게시글이 등록 되었습니다.");
                }else{
                    alert("게시글 등록이 실패되었습니다.");
                }
            },
            error : function(){
                console.log("에러발생");
            }
        }); // ajax 구문 끝
    } // else 구문 끝
}); // 이벤트 리스너 구문 끝

// 취소하기 버튼 클릭 시, 기능
cancelWritingQ.addEventListener("click", e => {
    // 취소 버튼이 눌려졌을 때, 안에 기존의 내용들이 다 삭제되고 그 페이지 유지 하게 할 예정
        alert("취소되었습니다.");
        inquiryContent.value = "";
});








