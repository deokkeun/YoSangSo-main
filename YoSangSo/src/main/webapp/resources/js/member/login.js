

window.kakao.init("653f11883bd61343f8e4e1624a58ae08");
function kakaoLogin() {
    window.Kakao.Auth.login({
        scope: 'profile_nickname, account_email, gender',
        success: function(authObj) {
            console.log(authObj);
            window.Kakao.API.request({
                url : '/v2/user/me',
                success : function(res) {
                    const kakao_account = res.kakao_account;
                    console.log(kakao_account);
                }
            });
        }
    });
}

