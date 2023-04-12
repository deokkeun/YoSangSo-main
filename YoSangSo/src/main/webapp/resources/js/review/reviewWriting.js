
document.getElementById("upload-file").addEventListener("change", function(){

    let fileName = document.getElementById("fileName");
    if(this.files[0] == undefined){
        fileName.innerText = "선택된 파일이 없습니다.";
        return;
    }else{
        fileName.innerText = "파일명 : " + this.files[0].name;
    }
});