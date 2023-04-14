console.log("update js 진입");
//===========================================================================================================

document.getElementById("upload-file").addEventListener("change", function(){

  let fileName = document.getElementById("fileName");
  if(this.files[0] == undefined){
      fileName.innerText = "선택된 파일이 없습니다.";
      return;
  }else{
      fileName.innerText = "파일명 : " + this.files[0].name;
  }
});

//===========================================================================================================



//===========================================================================================================

// input file 옵션 태그 제외하고 나머지만 보내기
function submitForm() {
  var form = document.getElementById("reviewImageContent");
  var formData = new FormData(form);

  // file 타입의 input 태그를 formData에서 제외합니다.
  formData.delete("reviewImgFile");

  // formData에 저장된 데이터를 전송합니다.
  fetch(form.action, {
    method: form.method,
    body: formData
  })
  .then(response => response.json())
  .then(data => {
    alert("소중한 리뷰 감사합니다.");
  })
  .catch(error => {
    console.error(error);
  });
}

//===========================================================================================================

// 평점이 입력 되지 않은 경우 alert창 띄울거임
function handleSubmit(event){
  event.preventDefault();
  
  // 평점 입력 안할 시 코드
  const reviewRateInput = document.getElementById("reviewAddRate");
  const reviewRate = reviewRateInput.value;
  if(!reviewRate){

    swal('입력 누락!', '평점을 입력해주세요! :-) ', 'warning')
    .then(function(){
      reviewRateInput.focus();
      reviewRateInput.scrollIntoView({ behavior: 'smooth', block: 'center' });
    })
    return;
  } // 평점 코드 끝

  // textarea 영역 값 입력 안할 시, 코드
  const reivewTextarea = document.getElementById("reivewTextarea");
  const reivewTextareaVal = reivewTextarea.value;

  if(!reivewTextareaVal){
    swal('입력 누락!', '내용을 입력해주세요! :-) ', 'warning')
    .then(function(){
      reivewTextarea.focus();
      reivewTextarea.scrollIntoView({ behavior: 'smooth', block: 'center' });
    })
    return;
  } // textarea 코드 끝

  // 리뷰 제출하기
  const form = document.getElementById("reviewImageContent");
  
  form.submit();
  swal('리뷰 수정 성공!', '리뷰가 수정되었어요! :-) ', 'success')
  .then(function(){         
    location.href="reviewList";
  })
}


//===========================================================================================================

// 취소하기 버튼을 눌렀을 때, 리다이렉트 시키는 함수

function cancelAndRedirect(){
  swal('취소!',"리뷰 등록을 취소하셨어요! :-) ",'info')
  .then(function(){ 
    location.href="reviewList";       
  })
  
}//===========================================================================================================