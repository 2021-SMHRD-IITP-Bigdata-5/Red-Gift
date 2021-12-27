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
</style>
<body>

<%
	UserVO user = (UserVO)session.getAttribute("uservo");
	String choice=null;
	Cookie[] cookie = request.getCookies();	
	for(Cookie c : cookie){
		if(c.getName().equals("choice")){
			choice=c.getValue();
		}
	}
	System.out.print("선택타입은:"+choice);
%>

	<section class="message">
	
		<p>
		<%=user.getUser_nick()%>님을 위한 BEST제안은 ?
		</p>
	
	</section>
	<section class="classView">
		<div>
			<div>
			<%=choice%>
			제안3영역
			<img src="asset/img/cv.png" />
			</div>
		</div>
	</section>
	<section class="itemsView">
		<div>
			<div>
			<%=choice%>
			아이템비교 영역
			<img src="asset/img/iv.png" />
			</div>	
		</div>
	</section>
</body>
<script src="asset/js/jquery-3.6.0.min.js"></script>


</html>