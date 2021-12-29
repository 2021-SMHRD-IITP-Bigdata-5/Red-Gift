<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* @import url(css/login.css); */
    </style>
    <style>
        *{
  margin: 0; padding: 0px; box-sizing: border-box;
}
body{
    display: flex;
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    justify-content: center;
    align-items: center;
    height: 100vh;
    /* width: 400px; */

    justify-content: space-between;/*(정렬).set1중심축기준_space-between간격*/
    align-items: center;/*(정렬).set2_교차축의 중앙에 정렬 수직*/
    margin: 0 auto;/*중앙정렬*/
    background-image: url('asset/img/배경/이미지a-3.jpg');
    background-size: cover;
}
/*배경어둡게*/
/*body::before{
    content: "";
    position: absolute; z-index: 1;
    top: 0; right: 0; bottom: 0; left: 0;
    background-color: hsla(0, 0%, 0%, 0.7);
}*/
main>section.Login-from{
position: relative; z-index: 2;
}
/*로그인 색상외*/
main>section>h1{
    margin-bottom: 20px;
    position: relative; z-index: 2;
    font-size: 20px; color: darkslategray;
    text-align: center;
    /*border: 1.5px solid black;테두리 확인용*/
}
body>main{
    
    justify-content: space-between;/*(정렬).set1중심축기준_space-between간격*/
    align-items: center;/*(정렬).set2_교차축의 중앙에 정렬 수직*/
    margin: 0 auto;/*중앙정렬*/
    /* font-size: 16px; */
    /*박스색*/
    background:mistyrose;
    color: #fff;
    padding: 50px;
    border: 10px solid white;/*테두리 적용*/
}
body > section > form > div.btn-login>button{
   
    display: flex;/*(정렬)한줄로 만듬*/
    justify-content: space-between;/*(정렬)같은 중심축_space-between간격*/
    align-items: center;/*(정렬)수직*/  
}
/*메일,비번입력하는곳*/
div.infor > input{
    
    width:100%;
    height:40px;
    /*background-color: transparent;*/
    /* border: none; */
    border-bottom: 1px sold #999;
    font-size: 16px; /*color: #fff;*/
    color: darkslategray;
    padding: 10px;
    /* outline: none; */
}
/*버튼 간격*/
body > main > section > form > div.btn-login{
    padding: 15px 0px 0px 0px;
}
/*버튼*/
body > main > section > form > div.btn-login > button{
    padding: 10px;
    color: white;
    /*background-color: crimson;*/
    background-color: lightcoral;
    border: 0px;/*경계선*/
    border-radius: 25px;/*모서리둥글게*/
    width:100%; left: 10px;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-size: 16px;
    font-weight: bold;
}
/*비밀번호를 잊으셨나요?*/
body > main > section > div.forgot{
    padding: 0px;
    font-size: 14px;
    margin: 10px 0px 0px 0px;
    /*border: 1.5px solid rgb(199, 17, 17);테두리 확인용*/
    /*border: 1.5px solid rgb(199, 17, 17);테두리 확인용*/
}
/*비밀번호를 잊으셨나요? 색상*/
body > main > section > div.forgot>a{
    /* color: #fff; */
    /*color: rgba(255, 255, 255, 0.65);*/
    color: darkslategray;
}
    </style>
    <title>로그인</title>
    <script src="asset/js/jquery-3.6.0.min.js"></script>
</head>
<body>
    <main>
        <section class="Login-from">
            <h1><label for="id-input-text">로그인</label></h1>
            
            <form action="LogInGnb.do" method="post">
                <div class="infor">
                    <!-- <label for="id-input-text" align="">로그인을 하시오</label> -->
                    <input type="text" id="id-input-text" name="id" placeholder="red-gif@email.com">
                    <br>
                    <label for="pw-input-text"></label>
                    <input type="password" id="pw-input-text" name="pw" placeholder="비밀번호">
                </div>
                <div class="btn-login">
                    <button type="submit">로그인</button>
                </div>
            </form>
            <div class="forgot">
                <a href="#">비밀번호를 잊으셨나요?</a><br>
                <a href="signUp.jsp">회원가입</a>
            </div>
            
            
        </section>
    </main>


    </body>
    </html>