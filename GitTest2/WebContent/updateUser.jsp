<%@page import="vo.UserVO"%>
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
     height: 100vh; /*만든코드고정 위험*/
    width: 400px; /*가로 고정*/

    justify-content: space-between;/*(정렬).set1중심축기준_space-between간격*/
    align-items: center;/*(정렬).set2_교차축의 중앙에 정렬 수직*/
    margin: 0 auto;/*중앙정렬*/
    background-image: url('asset/img/배경/배경2-1.jpg');
    background-size: cover;
}
/*배경어둡게*/
/*body::before{
    content: "";
    position: absolute; z-index: 1;
    top: 0; right: 0; bottom: 0; left: 0;
    background-color: hsla(0, 0%, 0%, 0.7);
}*/
/*입력하는 곳*/
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
/*회원정보수정 색상외*/
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
    /*박스색*/
    background:mistyrose;
    color: darkslategray;
    padding: 50px;
    border: 10px solid white;/*테두리 적용*/
}
body > section > form > div.btn-login > button{
   
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
    color: white;
    background-color: lightcoral;
    border: 0px;/*경계선*/
    border-radius: 25px;/*모서리둥글게*/
    width:100%; left: 10px;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-weight: bold;
}
/*회원 탈퇴*/
#a3{
    /* margin: 100px;*/
    color: darkslategray;
    /* border-radius: 25px;모서리둥글게 */
    width:100%; left: 10px;
    font-size: 12px;
    font-weight: bold;
    margin-top: 5px;
}

    </style>
    <title>회원정보수정</title>
    <script src="asset/js/jquery-3.6.0.min.js"></script>
</head>
<body>

<%
	UserVO uservo = (UserVO)session.getAttribute("uservo");
%>

    <main>
        <section class="Login-from">
            <th><h1><label for="pw-input-text">회원정보수정</label></h1></th>
            <form action="Update.do" method="post">
                <table>
                <div class="infor">
                    <!-- <label for="id-input-text" align="">로그인을 하시오</label> -->
                    <br>
                    <tr>
                        <td><label for="pw"></label></td>
                    </tr>
                    <tr>
                        <td><input type="password" id="pw" name="pw" placeholder="비밀번호수정"></td><br>
                    </tr>
                    <tr>
                        <td><input type="password" id="pw2" name="pw2" placeholder="비밀번호확인"></td>
                        
                    
                    </tr>
                   </table>
                	<button type="button" onClick="pwcheck()">비밀번호 확인</button>
                   <table>
                    <tr>
                        <td><input type="text" id="" name="nick" placeholder=<%=uservo.getUser_nick() %>></td>
                    </tr>
                    <tr>
                        <td><input type="text" id="" name="name" placeholder=<%=uservo.getUser_name() %>></td>
                    </tr>
                    <tr align="center">
                        <td style="height: 30px;"><a id="a1"  style="width : 55%; height: 15px;">생일<input type="date" name="birth"></a></td>
                    </tr>
                    <tr align="center">
                        <td>
                        <a id="a2">남<input type="radio" name="gender" value="남자" style="width : 10%; height: 15px;"></a>
                        <a id="a2" >여<input type="radio" name="gender" value="여자" style="width : 10%; height: 15px;"></a>
                        </td>
                    </tr>
                    <tr>
                        
                        <!-- <input type="text" id="pw-input-text" name="user_sex" placeholder="성별"> -->
                    </tr>
                    <tr>
                        <td><input type="text" id="" name="phone" placeholder=<%=uservo.getUser_phone() %>></td>
                    </tr>
                </table>
					
                </div>
                <div class="btn-login">
                    <button type="submit" onClick="">회원정보수정</button>
                    
                    <a href="Delete.do?id=<%=uservo.getUser_id() %>" id="a3">회원 탈퇴</a>
                    <a href="main.jsp" id="a3">메인으로</a>
                </div>
            </form>

        </section>
    </main>
    <script src="asset/js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	function pwcheck() {
  		var pw = document.getElementById('pw').value;
  		var pw2= document.getElementById('pw2').value;
		
		
        if(pw==pw2){
            alert("비밀번호가 일치합니다");
        }
        else{
            alert("비밀번호가 일치하지 않습니다.");
            }
    }
	</script>
    

    </body>
    </html>