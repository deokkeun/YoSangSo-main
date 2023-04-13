
document.getElementById("upload-file").addEventListener("change", function(){

    let fileName = document.getElementById("fileName");
    if(this.files[0] == undefined){
        fileName.innerText = "선택된 파일이 없습니다.";
        return;
    }else{
        fileName.innerText = "파일명 : " + this.files[0].name;
    }
});


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