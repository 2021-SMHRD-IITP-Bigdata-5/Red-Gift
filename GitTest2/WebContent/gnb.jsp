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
@font-face{font-family: 'NanumSquareLight'; src:url('asset/font/NanumSquareL.otf')}
@font-face{font-family: 'NanumSquare'; src:url('asset/font/NanumSquare.otf')}
@font-face{font-family: 'NanumSquareBold'; src:url('asset/font/NanumSquareB.otf')}
@font-face{font-family: 'NanumSquareExtraBold'; src:url('asset/font/NanumSquareEB.otf')}


body {
	padding-top: 70px;
}

header {
	background: #e6e6e6;
	height: 70px;
	position: fixed;
	opacity: 0.8;
	top : 0;
	width: 100%;
	font-family:'NanumSquareBold';
	font-size: 18px;
	transition: top 0.3s ease-in-out;
	z-index:999;

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

.menu>li>a, .logo>h1>a{
	text-decoration: none;
	font-weight: 700;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
	-webkit-font-smoothing: antialiased;
	-webkit-text-size-adjust: 100%;
}

.menu>li>a:hover{
	font-size: 20px;
	color: crimson;
    opacity:0.7;;
}
.menu>li>a{
color: rgba(41, 41, 41, 0.8);
}
/*로고 색*/
.logo>h1>a {
	font-size: 35px;
	color: crimson;
	opacity:0.7;
}
/*로고 위치*/
.logo > h1 > a > img{
	margin: 5px 0 0 0;
	
}
</style>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<body>
<%
	UserVO uservo = (UserVO)session.getAttribute("uservo");
%>
	<header class="nav-down">
        <nav id="gnb">
            <div class="logo">
                <h1><a href="main.jsp"><img src="asset/img/icon_img/빨간약기프티콘.png"
						width="60" height="60">빨간약기프티콘</a></h1>
            </div>
            <div class="menu">
                <li><a href="main.jsp" onClick="">선물고르기</a></li>
                <li><a href="freeBoard.jsp" onClick="">자유게시판</a></li>
                <li><a href="updateUser.jsp" onClick="">회원정보수정</a></li>
                <%if(uservo==null){ %>
                <li><a href="login.jsp" onClick="">로그인</a></li>
                <%}else{ %>
                <li><a href="myPage.jsp" onClick="">마이페이지</a></li>
                <li><a href="LogOut.do" onClick="">로그아웃</a></li>
                <%} %>
            </div>
        </nav>
 	</header>
 <script src="asset/js/jquery-3.6.0.min.js"></script>
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