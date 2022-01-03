<%@page import="vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>

</head>

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
	System.out.println("result2.jsp 선택카드 :"+choice);
	System.out.println("result2.jsp 유저아이디 :"+user.getUser_id()+"\n-----------------");
	
	
%>

	<section class="message">
	
		<p>
		<%=user.getUser_nick()%>님을 위한 BEST제안은 ?
		</p>
	
	</section>
	<section class="classView">
		<div>
			<div class="nutriCard" onclick="cardUp('#class3')">
            	<div class="cardHead" id="class3">
            	
            	제안3(최종) 헤드
            	
            	</div>
				<div class="cardBody">
					<h2>
					<%=choice %>
					</h2>
					<p>
						
					</p>
				</div>
				<div class="cardTail">
				
				</div>
            </div>
		</div>
	</section>
	<section class="message">
	
		<p>
			이거사
		</p>
	
	</section>
	<section class="itemsView">
		<div>
			<div>
			<%=choice%>
			아이템비교 영역
			</div>	
		</div>
	</section>
	<% %>
	
</body>
<script src="asset/js/jquery-3.6.0.min.js"></script>
<script>
	$.ajax({
	    url: 'SetMypage.do',  
	    type: "get",
	    data: {
	    	"id" : '<%=user.getUser_id()%>',
	    	"choice" : '<%=choice%>'
	    },
	    success: function(res){  
	        console.log(res)
	    },
	    error:function(){
	        alert("실패")
	    }
	})





</script>



</html>