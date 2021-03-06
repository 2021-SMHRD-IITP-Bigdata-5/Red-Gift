<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    
    <style>
        /* @import url(css/???.css); */
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
    height: 100vh; /*만든코드고정 위험*/
    /*width: 400px; 가로 고정*/

    justify-content: space-between;/*(정렬).set1중심축기준_space-between간격*/
    align-items: center;/*(정렬).set2_교차축의 중앙에 정렬 수직*/
    margin: 0 auto;/*중앙정렬*/
    background-image: url('asset/img/배경/배경2-1.jpg');
    background-size: cover;
}
/*배경어둡게*/
/*body::before{
    content: "";
    position: absolute; z-index: 2;
    top: 0; right: 0; bottom: 0; left: 0;
    background-color: hsla(0, 0%, 0%, 0.0);
}*/
/*입력하는 곳 글자 흰색 검정색*/
input{
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
main>section.Login-from{
    position: relative; z-index: 2;
}
/*회원가입 색상외*/
main>section>h1{
    position: relative; z-index: 2;
    font-size: 20px; /*color: #fff;*/color: darkslategray;
    text-align: center;
    /*border: 1.5px solid black;테두리 확인용*/
}
body>main{  
    justify-content: space-between;/*(정렬).set1중심축기준_space-between간격*/
    align-items: center;/*(정렬).set2_교차축의 중앙에 정렬 수직*/
    margin: 0 auto;/*중앙정렬*/
    /*박스색 분홍색*/
    background:mistyrose;
    color: darkslategray;
    padding: 50px;
    border: 10px solid white;/*테두리 적용*/
}
body > section > form > div.btn-login>button{
   
    display: flex;/*(정렬)한줄로 만듬*/
    justify-content: space-between;/*(정렬)같은 중심축_space-between간격*/
    align-items: center;/*(정렬)수직*/  
}
/*버튼 간격*/
body > main > section > form > div.btn-login{
    padding: 15px 0px 0px 0px;
}
/*버튼*/
body > main > section > form > div.btn-login > button{
    padding: 10px;
    /*color: white;black*/
    color: white;
    /*background-color: crimson;*/
    background-color: lightcoral;
    border: 0px;/*경계선*/
    border-radius: 25px;/*모서리둥글게*/
    width:100%; left: 10px;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-weight: bold;

}

    </style>
    <script src="asset/js/jquery-3.6.0.min.js"></script>
    <title>회원가입</title>
</head>
<body>
    <!---->
    <main>
        <section class="Login-from">
            <th><h1><label for="id-input-text">회원가입</label></h1></th>
            <form action="SignUp.do" method="post">

                <div class="infor">
                <table>
                    <!-- <label for="id-input-text" align="">로그인을 하시오</label> -->
                    <tr>
                        <td><input type="text" id="id" name="id" placeholder="red-gif@email.com"></td>
                    </tr>
                    <td><font id=idCheck size="2.5"></font></td>
                    <br>
                    <tr>
                        <td><input type="password" id="pw" name="pw" placeholder="비밀번호입력"></td>
                    </tr>
                    <tr>
                        <td><input type="password" id="pw2" name="pw2" placeholder="비밀번호확인"></td>
                    </tr>
                    </table>
                    <table>
                   <tr>
                   <td><font id=pwCheck size="2.5"></font></td>
                   </tr> 
                    </table>
                    <table>
                    <tr>
                        <td><input type="text" id="" name="nickname" placeholder="닉네임"></td>
                    </tr>
                    <tr>
                        <td><input type="text" id="" name="name" placeholder="이름"></td>
                    </tr>
                    <tr align="center">
                        <td style="height: 30px;"><a id="a1"  style="width : 55%; height: 15px;">생일<input type="date" name="birth"></a></td>
                    </tr>
                    <tr align="center">
                        <td><a id="a2">남<input type="radio" name="gender"  style="width : 10%; height: 15px;"></a>
                        <a id="a2" >여<input type="radio" name="gender" style="width : 10%; height: 15px;"></a></td>
                    </tr>
                    <tr>
                        <td><input id="" name="gnb" value="gnb" type="hidden"></td>
   
                    </tr>
                    <tr>
                        <td><input type="text" id="" name="phone" placeholder="폰번호"></td>
                    </tr>
                    
                </table>

                </div>
                <div class="btn-login">
                    <button id="sub1" onClick="" disabled="disabled">회원가입</button>
                </div>
            </form>

        </section>
    </main>
    <script src="asset/js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
    $(function() {
		$('#pw').keyup(function() {
			$('#pwCheck').html('');
		});
		$('#pw2').keyup(function() {
			
			let pw = $('#pw').val();
			let pw2 = $('#pw2').val();
		
			console.log(typeof(pw));
			console.log(typeof(pw2));
			console.log(pw == pw2);
			
			if(pw == pw2){
			
				$('#pwCheck').html('<tr><td>비밀번호가 일치합니다.</td></tr>');
				$('#pwCheck').attr('color','#58acfa');
			}else{
				$('#pwCheck').html('<tr><td>비밀번호가 일치하지 않습니다.</td></tr>');
				$('#pwCheck').attr('color','#fa5858');
			}
		});	
		
		
	});
    $('input[name=id]').on("blur", function (event) {
    	let inputEmail = $('#id').val();
    	$.ajax({
			 url : "CheckUserId.do",
			 method : "post",
			 data : {
				 "inputEmail" : inputEmail
			 },
			 success : function(res){
				 console.log(res)
				 	if( res !='true' ){
						$('#idCheck').html('<tr><td>이미 사용중인 이메일입니다.</td></tr>');
						$('#idCheck').attr('color','#fa5858');
						$('#sub1').attr('disabled',true);
					}else{	
						$('#idCheck').html('<tr><td>사용가능한 이메일입니다.</td></tr>');
						$('#idCheck').attr('color','#58acfa');
						$('#sub1').attr('disabled',false);
					}
			 },
			 error : function(){
				 alert('아이디체크요청실패')
			 }
    	})
    })
	</script>
</body>
</html>