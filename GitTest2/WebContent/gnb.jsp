<%@page import="vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
	padding-top: 70px;
}

header {
	background: #e6e6e6;
	height: 70px;
	position: fixed;
	/*opacity: 0.9;*/ top : 0;
	transition: top 0.3s ease-in-out;
	width: 100%;
	top: 0;
}

.nav-up {
	top: -70px;
}

nav {
	padding: 0% 5% 0% 5%;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.menu>li {
	display: inline-block;
	background-color: transparent;
	list-style: none;
	padding: 5px 5px 5px 5px;
}

.menu>li>a {
	text-decoration: none;
	font-family: 'Open Sans', arial, sans-serif;
	color: rgba(41, 41, 41, 0.65);
	font-weight: 700;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
	-webkit-font-smoothing: antialiased;
	-webkit-text-size-adjust: 100%;
}

.menu>li>a:hover {
	font-size: 18px;
	color: rgba(41, 41, 41, 1.65);
}
</style>
<body>
<%
	UserVO uservo = (UserVO)session.getAttribute("uservo");
%>
	<header class="nav-down">
        <nav id="gnb">
            <div class="logo">
                <h1 href="navber_red_logo">스레기</h1><!--클릭시 메인 바로가기-->
            </div>
            <div class="menu">
                <li><a href="#" onClick="">추천</a></li>
                <li><a href="#" onClick="">게시판</a></li>
                <li><a href="myPage.jsp" onClick="">마이페이지</a></li>
                
                <%if(uservo==null){ %>
                <li><a href="login.jsp" onClick="">로그인</a></li>
                <%} %>
            </div>
        </nav>
 	</header>
 <script src="js/jquery-3.6.0.min.js"></script>
 <script>
 
 var didScroll;
 var lastScrollTop = 0;
 var delta = 5;
 var navbarHeight = $('header').outerHeight();

 $(window).scroll(function(event){
     didScroll = true;
 });

 setInterval(function() {
     if (didScroll) {
         hasScrolled();
         didScroll = false;
     }
 }, 250);

 function hasScrolled() {
     var st = $(this).scrollTop();

     if(Math.abs(lastScrollTop - st) <= delta)
         return;

     if (st > lastScrollTop && st > navbarHeight){
         $('header').removeClass('nav-down').addClass('nav-up');
     } else {
         if(st + $(window).height() < $(document).height()) {
             $('header').removeClass('nav-up').addClass('nav-down');
         }
     }
     lastScrollTop = st;
 }
 
 
 </script>
 
</body>
</html>