<%@page import="vo.MyPageVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.MypageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<<<<<<< HEAD
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>

        body{
            display: block;
            align-items: center;
            overflow-x: hidden;
            display: grid;
        }
        section{
            padding-left: 5%;
            padding-bottom: 5%;
        }
        
        .myBoard{
    		
    		display:flex;
    		align-items: center;
            flex-direction:column;
        }
        .myCard{
        	overflow:hidden;
    		position:relative;
        	display: inline-block;
  			align-items: center;

			
        	/*display: inline-block;*/
            width: 500px;
            height: 500px;
            box-shadow: 0 1rem 1rem hsl(0 0% 0% / 10%);
		  /*box-shadow: 0 2.5rem 2rem -2rem hsl(150 50% 20% / 20%);*/
		  	background: hsl(0 0% 100%);
		  	color: hsl(200 50% 20%);
		  	line-height: 1.5;

		  	place-items: center;
		  	text-align: center;
		 	 /*padding: 2ch;*/
		  	margin: 0 10px 0 0;
		  	border-radius: 2ch;
		  	border: 0px solid hsl(0 0% 85%);
        }
        .cardHead{
    		width:100%;
    		height:200px;
    		border-radius:2ch 2ch 0 0;
    		background-image: url('asset/img/testimg1.jpg');
    		background-size:180%;
    		box-sizing:boarder-box;
    		-webkit-transition: .3s ease-in-out;
    		
    		
    	}
        .cardBody{
   			width:100%;
    		height:400px;
    		line-height:1;
    	
    	}
        .cardTail{
    		position:absolute;
    		bottom:0;
    		
    		width:100%;
    		height:50px;
    		
    		background-color:gray;
    		opacity:0.4;
    		border-radius:0 0 2ch 2ch;
    	}
        
        
        
    </style>
=======
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이페이지</title>
<style>
<<<<<<< HEAD
background-image: url( 'img /배경 /이미지a-3.jpg ') ;
    * {
	margin: 0;
	padding: 0px;
	box-sizing: border-box;
}

/**/
header {
	padding-left: 5%;
}

body {
	display: block;
	align-items: center;
	overflow-x: hidden;
}

section {
	padding-left: 5%;
	padding-bottom: 5%;
}

.navber {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.menu>li {
	display: inline-block;
	background-color: transparent;
	list-style: none;
	text-decoration: none;
	padding-left: 5px;
	padding-right: 5px;
}

.menu>li>a {
	text-decoration: none;
	color: black;
}

table {
	border: 10px solid;
	border-collapse: collapse;
	width: 500px;
	height: 400px;
	margin-bottom: 10px;
	justify-content: space-between; /*(정렬).set1중심축기준_space-between간격*/
	align-items: center; /*(정렬).set2_교차축의 중앙에 정렬 수직*/
	margin: 0 auto; /*중앙정렬*/
	/* font-size: 16px; */
	/*박스색*/
	background: mistyrose;
	color: darkslategray;
	padding: 50px;
	border: 10px solid white; /*테두리 적용*/
}

table td {
	border: 1px solid;
}

#nutricard {
	width: 250px;
	height: 250px;
}

#memo {
	height: fit-content;
}
=======
html,body{
	/*width: 100%;*/
	height: 100%;
}


body > section > table{
padding-bottom: 50px;
}
    	* {
	margin: 0;
	padding: 0px;
	
}

body {
	display: flex;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
	justify-content: center;
	align-items: center;
	height: 100vh;
	/* width: 400px; */
	/*justify-content: space-between; (정렬).set1중심축기준_space-between간격*/
	/*align-items: center; (정렬).set2_교차축의 중앙에 정렬 수직*/
	/*margin: 0 auto; 중앙정렬*/
	background-image: url('asset/img/배경/이미지b-1.png');
	background-size: cover;
	
	
}
/****/

/****/
section {
	padding-left: 5%;
	padding-bottom: 5%;
	/*margin: 0 auto; 중앙정렬*/
	height: 100%;
	
}

table {
	border: 10px solid;
	border-collapse: collapse;
	width: 600px;
	height: 400px;
	/*박스색*/
	color: darkslategray;/*글자색*/
	background: mistyrose;
	border: 10px solid #081C15; /*테두리 적용*/
	
	/*박스색 간격*/
	margin: 50px;
	
	
	
}

table td {
	border: 5px solid;
	/*테이블 테두리 글자크기*/
	border-color: #AFE9D5;
	background: white;
	align-items: center; /*(정렬).set2_교차축의 중앙에 정렬 수직*/
	height: 100px;
	
	
}

/*이미지들어가는 곳*/
#nutricard {
	width: 250px;
	height: 250px;
}
/*메모사항*/
#memo {
	height: fit-content;
	height: 100px;
}
/*날짜 간격*/
thead>tr>td {

height: 60px;
background:#81B29A;
}

/*하단고정*/
footer {
	position: fixed;
	left: 0px;
	bottom: 0px;
	height: 60px;
	width: 100%;
	/*background:grey; 
  	color: white; */
}

>>>>>>> branch 'master' of https://github.com/2021-SMHRD-IITP-Bigdata-5/Red-Gift.git
</style>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-IITP-Bigdata-5/Red-Gift.git
</head>
<body>
<<<<<<< HEAD
    <%@include file="gnb.jsp" %>
<%
	
	
%>
<section class="myBoard">
	<div>
	    <div class="myCard">
	        
	            <div class="cardHead">
	            		2022/01/01 <%=uservo.getUser_id()%>
	            </div>
						
	            <div class="cardBody">
	            
	            		영양제군 이미지/당시 만족도 정보
	            </div>
	                
	            <div class="cardTail">
	                     <button>수정</button><button>삭제</button>
	        	</div>
		</div>
	</div>
    
    
    
    
    
    <table>
        <thead>
            <tr>
            <td colspan="2">page_seq  ,  reg_date</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td id=nutricard>nutri_class</td><td>my_class_sat</td>

            </tr>
            <tr>
                <td id="memo" colspan="2">page_memo</td>
            </tr>
        </tbody>
    </table>

</section>   
=======
	<%@include file="gnb.jsp"%>
<<<<<<< HEAD
	<%
		MypageDAO dao = new MypageDAO();
	%>
	<%
		String user_id = "1";
	%>
	<%
		ArrayList<MyPageVO> pageList = dao.GetMypage(user_id);
	%>
	<%
		System.out.println(pageList.size());
	%>
	
	<section>
		<table>
			<thead>
				<tr>
					<td></td>
					<td>2022/01/01 <%=uservo.getUser_id() %>
						<button>수정</button>
						<button>삭제</button>
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td id=nutricard><img src="asset/img/icon_img/영양제_아이콘 (2).png"
						width="80" height="80"> <!--영양제군 이미지--></td>
					<td>당시 만족도 정보</td>
=======
	<section align="center">
		<table>
			<thead>
				<tr>
					<td>1</td>
					<td>2022/01/01
						<button>수정</button>
						<button>삭제</button>
					</td>
				</tr>
			</thead>
			<tbody >
				<tr>
					<td id=nutricard><img src="asset/img/icon_img/영양제_아이콘 (2).png"
						width="80" height="80"> <!--영양제군 이미지--></td>
					<td>당시 만족도 정보</td>
				</tr>
				<tr>
					<td id="memo" colspan="2">메모사항</td>
				</tr>
			</tbody>
		</table>
		<table>
			<thead>
				<tr>
					<td>2</td>
					<td>2022/01/01
						<button>수정</button>
						<button>삭제</button>
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td id=nutricard><img src="asset/img/icon_img/영양제_아이콘 (2).png"
						width="80" height="80"></td>
					<td>당시 만족도 정보</td>
				</tr>
				<tr>
					<td id="memo" colspan="2">메모사항</td>
				</tr>
			</tbody>
		</table>
		<!--  -->
		<table>
			<thead>
				<tr>
					<td>3</td>
					<td>2022/01/01
						<button>수정</button>
						<button>삭제</button>
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td id=nutricard><img src="asset/img/icon_img/영양제_아이콘 (2).png"
						width="80" height="80"></td>
					<td>당시 만족도 정보</td>
				</tr>
				<tr>
					<td id="memo" colspan="2">메모사항</td>
				</tr>
			</tbody>
		</table>

				</tr>
				<tr>
					<td id="memo" colspan="2">메모사항</td>
				</tr>
			</tbody>
		</table>

	</section>

		<%
			for (int i = 0; i < pageList.size(); i++) {
		%><table>
			<thead>
				<tr>
					<td colspan="2"><%=pageList.get(i).getPage_seq()%>,<%=pageList.get(i).getReg_date()%>
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td id=nutricard><%=pageList.get(i).getNutri_class()%></td>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-IITP-Bigdata-5/Red-Gift.git

<<<<<<< HEAD
	<%@include file="footer.jsp" %>
	
	<script src="asset/js/jquery-3.6.0.min.js"></script>
	<script>
	
	let id=<%=uservo.getUser_id()%>
	console.log(id);
	$.ajax({
		url : "getMypage.do",
		type : "get",
		data : {"id": id },
		dataType : 'json',
		success : function(res){
			console.log(res);
			Gson gson = new Gson();
			MyPageVO[] list = gson.fromJson(json, MyPageVO[].class);
			
			$('.cardBody').html('');
			
			// 가져오는 것들
			/*
			page_seq
			nutri_seq
			nutri_class
			class_sat
			reg_date
			page_memo
			
			*/
	
			for(var i=0;i<res.length;i++){	
				let table ='';
				table+='<tr>'
				table+='<td>'+res[i].page_seq+'</td>'
				table+='</tr>'
				$('#tbody').append(table)
			}
			
			//for i in obj  
			//for i of iter

			//.html()
			//.after()
			//.before()
			//.append()
		},
		error : function(){
			alert("요청실패")
		}	
	});
	
	</script>
	
	
=======


					<td><%=pageList.get(i).getMy_class_sat()%></td>

				</tr>
				<tr>
					<td id="memo" colspan="2"><%=pageList.get(i).getPage_memo()%></td>
				</tr>
			</tbody>
		</table>
		<%
			}
		%>


		


	</section>


	<%@include file="footer.jsp"%>

>>>>>>> branch 'master' of https://github.com/2021-SMHRD-IITP-Bigdata-5/Red-Gift.git
</body>
</html>