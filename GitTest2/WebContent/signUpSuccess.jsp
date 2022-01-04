<%@page import="vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    
    
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
            <th><h1><label for="id-input-text">회원가입완료</label></h1></th>
<%
	UserVO user=(UserVO)request.getAttribute("uservo");
%>
                <div class="infor">
                <table>
                    <tr>
                        <td>아이디:<%=user.getUser_id()%></td>
                       
                    </tr>
                    <td></td>
                    <br>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                    </table>
                    <table>
                   <tr>
                   <td></td>
                   </tr> 
                    </table>
                    <table>
                    <tr><%if(user.getUser_nick()!=null){ %>
                        <td>닉네임:<%=user.getUser_nick()%></td>
                    </tr><%} %>
                    <tr><%if(user.getUser_name()!=null){ %>
                        <td>이름:<%=user.getUser_name()%></td>
                    </tr><%} %>
                    <tr><%if(user.getUser_birth()!=null){ %>
                        <td>생일:<%=user.getUser_birth()%></td>
                    </tr><%} %>
                    <tr><%if(user.getUser_sex()!=null){ %>
                        <td>성별:<%=user.getUser_sex()%></td>
                    </tr><%} %>
                    <tr><%if(user.getUser_phone()!=null){ %>
                        <td>연락처:<%=user.getUser_phone()%></td>
                    </tr><%} %>
                    <tr>
                        <td></td>
                    </tr>
                    
                </table>

                </div>
                <div class="btn-login">
                    <button id="sub1" onClick="location.href='main.jsp'">메인으로</button>
                </div>
         

        </section>
    </main>
    <script src="asset/js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
 
	</script>
</body>
</html>