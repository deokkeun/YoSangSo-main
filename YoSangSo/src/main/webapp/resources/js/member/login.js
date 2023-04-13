function kakaoLogin() {
    // kakao 객체를 로드합니다.
    Kakao.init("653f11883bd61343f8e4e1624a58ae08");


    Kakao.Auth.login({
        scope: 'profile_nickname, account_email, gender',
        success: function(authObj) {
            console.log(authObj);
            // 사용자 엑세스 토큰
            console.log(authObj);
            console.log(authObj.access_token);
    
            Kakao.API.request({
                url : '/v2/user/me',
                success : function(res) {
                    const kakao_account = res.kakao_account;
                    console.log(kakao_account);
                    // 사용자 이메일
                    console.log(kakao_account.email);
                    // 사용자 이름
                    console.log(kakao_account.profile.nickname);

                        Kakao.Auth.authorize({
                            redirectUri: 'http://localhost:8080/YoSangSo'
                        });
                }
            });
        }
    });
 
}