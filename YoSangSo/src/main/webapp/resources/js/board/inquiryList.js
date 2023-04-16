//===========================================================================================================

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


//===========================================================================================================



//===========================================================================================================

// 삭제기능
function deleteBoard(e, boardNo){
    if(!confirm("삭제하시겠습니까?")){ // 삭제 취소
        swal('게시글 수정 완료!', '취소되었습니다! :-) ', 'success')
        .then(function(){
            location.reload();                   
        })
    }
    else{ // 삭제 확인
        $.ajax({
            url: "inquiryDelete",
            data: {"boardNo" : boardNo},
            type: "GET",
            success : function(result){
                if(result != 0){
                    swal('게시글 삭제 완료!', '삭제되었습니다! :-) ', 'success')
                    .then(function(){
                        location.reload();                   
                    })
                }else{
                    swal('게시글 삭제 실패!', '삭제가 안됐어요! :-( ', 'error')
                    .then(function(){
                        location.reload();                   
                    })
                }
            },
            error: function(){
                alert("에러발생");
            }
        });
    }
}


//===========================================================================================================


//===========================================================================================================


// 수정하기 기능
    //const boardNo = document.getElementById("mapBoardNo");


function updateBoard(e, boardNo) {
    let questionPChild = e.parentElement.previousElementSibling.lastElementChild.firstElementChild; // 기존 질문을 담고있는 span태그
    let questionPValue = questionPChild.innerText; // 기존 질문 값

    e.parentElement.previousElementSibling.lastElementChild.style.display = "none"; // 기존 질문 디스플레이 논으로 바꾸기
    
    

    e.parentElement.previousElementSibling.append(textAreaP);

    textAreaP.setAttribute('placeholder', '수정하실 문의를 작성해주세요.');
    textAreaP.innerText = questionPValue;
    textAreaP.className ="answerBoxTextArea";

   
    e.parentElement.append(updateConfirm);
    updateConfirm.innerText = "확인";
    updateConfirm.setAttribute('type', 'button');
    updateConfirm.className = "btnUpdate";


    // 업데이트 취소 버튼도 생기게 하기
    e.parentElement.append(cancleUpdateConfirm);
    cancleUpdateConfirm.innerText = "취소";
    cancleUpdateConfirm.setAttribute('type', 'button');
    cancleUpdateConfirm.className = "btnCancel";
    cancleUpdateConfirm.setAttribute('onclick', 'cloneP(this)');

    
    // 업데이트 확인 버튼 생기게 하기
    // 답변 박스쪽에 생기게 하기
 
    

    e.parentElement.append(updateConfirm);
    updateConfirm.innerText = "확인";
    updateConfirm.setAttribute('type', 'button');
    updateConfirm.className = "btnUpdate";


    // 업데이트 취소 버튼도 생기게 하기
    e.parentElement.append(cancleUpdateConfirm);
    cancleUpdateConfirm.innerText = "취소";
    cancleUpdateConfirm.setAttribute('type', 'button');
    cancleUpdateConfirm.className = "btnCancel";
    cancleUpdateConfirm.setAttribute('onclick', 'cloneP(this)');

    e.previousElementSibling.remove();
    e.remove();

    // 수정확인 버튼을 누르면 글이 수정될 수 있게 해야함

    if(updateConfirm != null){ // 업데이트 확인 버튼이 null이 아닐 때,
        updateConfirm.addEventListener("click", function() {
            if(textAreaP.value == ""){
                swal('입력 누락!', '내용을 입력해주세요! :-) ', 'warning')
                .then(function(){
                textAreaP.focus();
                textAreaP.scrollIntoView({ behavior: 'smooth', block: 'center' });
                })

            }else{
                console.log("에이젝스 전")
                $.ajax({
                    url : "inquiryUpdate",
                    data : {"textAreaP" : textAreaP.value, "boardNo" : boardNo },
                    type : "GET",
                    success : function(result){
                        if(result > 0 ){
                            swal('게시글 수정 완료!', '게시글이 수정되었습니다! :-) ', 'success')
                            .then(function(){
                                location.reload();                   
                            })
                            } else {
                                swal('게시글 수정 실패!',"게시글 수정이 실패됐어요! :-( ",'error');
                                location.reload(); 
                                textAreaP.value = "";
                            };
                    },
                    error : function(){
                        console.log("에러발생");
                    }
                }); // ajax 구문 끝
                
            } //else 문 끝
        }); // 수정 확인 버튼 클릭 이벤트 구문 끝
    } // 수정확인 if문 끝 
}


//===========================================================================================================




//===========================================================================================================

// 수정 취소 버튼을 눌렀을 때, 기존 문의내용 불러오는 함수
function cloneP(e){
    if(e.parentElement.previousElementSibling.lastElementChild != null){
        textAreaP.remove();
        console.log(e.parentElement.previousElementSibling.lastElementChild);
        let questionP = e.parentElement.previousElementSibling.lastElementChild
        questionP.style.display = "block"
        e.parentElement.previousElementSibling.append(questionP);
        e.parentElement.append(inquiryDelete);
        e.parentElement.append(inquiryUpdate);

        
        updateConfirm.remove();
        cancleUpdateConfirm.remove();
        
    }
    else{
        alert("실패!");
    }
}

//===========================================================================================================





