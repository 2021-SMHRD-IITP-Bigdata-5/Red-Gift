<%@page import="vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

</head>
<body>
<%
	UserVO uservo = (UserVO)session.getAttribute("uservo");
%>
    <section id="result">
        <div>

            <div>
<!--             제안 영역                     -->
            </div>
            <div>
<!--             제안 영역                     -->
            </div>
           

        </div>
    
    </section>
    <section id="sign">
        <div id="signUp" style="height:80px; display:block;">
            <form action="signUp.do" method="post">
                <input type="text"     name="email" placeholder="red-gif@email.com">
                <input type="password" name="pw" placeholder="password"><br>
                <input type="password" name="pw2" placeholder="password check">
                <%if(uservo!=null){ %>
                <button class="b1" type="submit" onClick="enrollment()">등록하기</button>
                <%} else {%> 
                <button class="b1" type="submit" onClick="login.jsp">등록하기</button>
                <button class="b2" type="button" onClick="loginform()">로그인</button>
                <%} %>
            </form>
        </div>	
        <div id="login" style="height:80px; display:none;">
            <form action="login.do" method="post">
                <input type="text"     name="email" placeholder="red-gif@email.com">
                <input type="password" name="pw">
                <button class="b1" type="submit" onClick="">로그인</button>
                <button class="b2" type="button" onClick="signform()">회원가입</button> 
            </form>
        </div>
	
	
    </section>
    <!-- ------------------------------------------------------------------------ -->
    <script src="asset/js/jquery-3.6.0.min.js"></script>
    <script>
        function loginform(){
            $('#login').css('display','block')
            $('#signUp').css('display','none')
            window.scrollTo(0,document.body.scrollHeight)
        }
        function signform(){
            $('#signUp').css('display','block')
            $('#login').css('display','none')
            window.scrollTo(0,document.body.scrollHeight)
        }
        
        function enrollment() {
        	$.ajax({
        		dat
        	});
			
		}
    </script>

</body>
</html>