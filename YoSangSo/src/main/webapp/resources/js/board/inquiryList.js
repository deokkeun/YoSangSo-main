// 게시물을 클릭했을 시, 내가 등록한 글이면 (1)
// 수정, 삭제 버튼을 통해서 수장, 삭제 구현 (2)
const questionP = document.getElementById("questionP"); // 답변 박스안에 문의 내용
const answerInnerBox = document.getElementById("answerInnerBox");  // 답변박스
const inquiryUpdate = document.querySelector(".inquiryUpdate"); // 수정버튼
const inquiryDelete = document.querySelector(".inquiryDelete"); // 삭제버튼

// 업데이트 확인 버튼 생겨야함 
const updateConfirm = document.createElement("button"); // 업데이트 확인 버튼 (새로운 요소))
const cancleUpdateConfirm = document.createElement("button"); // 업데이트 취소버튼 (새로운 요소))
const textAreaP = document.createElement("textarea"); // 텍스트 에리어 (새로운 요소))

const questionInnerBox = document.querySelector(".questionInnerBox");
//const questionInnerBox = document.getElementById("questionInnerBox"); // 앤서 박스 안 답변박스
const quetionInnerBoxBtn = document.getElementById("quetionInnerBoxBtn"); // 앤서 박스 안 기존 버튼박스





// 삭제기능
function deleteBoard(boardNo){
    if(!confirm("삭제하시겠습니까?")){ // 삭제 취소
        alert("취소되었습니다.");
        location.reload();
    }
    else{ // 삭제 확인
        $.ajax({
            url: "inquiryDelete",
            data: {"boardNo" : boardNo},
            type: "GET",
            success : function(result){
                if(result != 0){
                    alert("게시글이 삭제되었습니다.");
                    location.reload();
                }else{
                    alert("게시글 삭제가 실패되었습니다.");
                    location.reload();
                }
            },
            error: function(){
                alert("에러발생");
            }
        });
    }
}

// 수정하기 기능
    //const boardNo = document.getElementById("mapBoardNo");


function updateBoard(e, boardNo) {

    console.log(e);


    e.parentElement.previousElementSibling.lastElementChild.remove(); // 기존 질문 삭제
    
    

    e.parentElement.previousElementSibling.append(textAreaP);

    textAreaP.setAttribute('placeholder', '수정하실 문의를 작성해주세요.');
    
    textAreaP.className ="answerBoxTextArea";

   
    
    

    // 기존에 삭제버튼,수정 버튼 삭제하고 업데이트 확인 버튼 생기게 하자
    e.previousElementSibling.remove();
    e.remove();
    
    // 업데이트 확인 버튼 생기게 하기
    // 답변 박스쪽에 생기게 하기
    console.log(e.parentElement);


    // if(e.parentElement == null){
    //     console.log("if 문 진입");
    //     // e.parentNode가 null이 아니면 e의 부모 엘리먼트를 추가해줍니다.
    //     if(e.parentNode) {
    //         e.parentNode.append(quetionInnerBoxBtn);
    //     } else {
    //         console.log("e.parentNode가 null입니다.");
    //     }
    // }else{
    //     console.log("else 문 진입");
    //     alert("asd");
    // }
    



    e.append(updateConfirm);
    updateConfirm.innerText = "확인";
    updateConfirm.setAttribute('type', 'button');
    updateConfirm.className = "btnUpdate";


    // 업데이트 취소 버튼도 생기게 하기
    e.parentElement.append(cancleUpdateConfirm);
    cancleUpdateConfirm.innerText = "취소";
    cancleUpdateConfirm.setAttribute('type', 'button');
    cancleUpdateConfirm.className = "btnCancel";
    cancleUpdateConfirm.setAttribute('onclick', 'cloneP()');

    // 수정확인 버튼을 누르면 글이 수정될 수 있게 해야함

    if(updateConfirm != null){ // 업데이트 확인 버튼이 null이 아닐 때,
        updateConfirm.addEventListener("click", function() {
            if(textAreaP.value == ""){
                alert("내용을 입력해주세요.");
            }else{
                console.log("에이젝스 전")
                $.ajax({
                    url : "inquiryUpdate",
                    data : {"textAreaP" : textAreaP.value, "boardNo" : boardNo },
                    type : "GET",
                    success : function(result){
                        console.log(result);
                        if(result > 0){
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
}





// 수정 취소 버튼을 눌렀을 때, 기존 문의내용 불러오는 함수
function cloneP(){
    if(questionP != null){
        questionInnerBox.append(questionP);
        quetionInnerBoxBtn.append(inquiryDelete);
        quetionInnerBoxBtn.append(inquiryUpdate);

        textAreaP.remove();
        updateConfirm.remove();
        cancleUpdateConfirm.remove();
    }
    else{
        alert("실패!");
    }
}



