<%@page import="vo.MyPageVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.MypageDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이페이지</title>
<style>

    * {
	margin: 0;
	padding: 0px;
	box-sizing: border-box;
}
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
html,body{
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
</style>
</head>
<body>
	<%@include file="gnb.jsp"%>
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
}

</style>
</head>
<body>

		<%@include file="gnb.jsp"%>

	<%
		//ArrayList<MyPageVO> pageList = (ArrayList<MyPageVO>)session.getAttribute("pageList");
 		MyPageVO pagevo = new MyPageVO();
	%>
	<section id="tableArea">
		<table id="tbody">
		
		
		
		
		
		</table>
	

	</section>

	<script src="asset/js/jquery-3.6.0.min.js"></script>

	<script src="./asset/js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	
	$(document).ready (function() {
	
		$.ajax({
			url : "Mypage.do",
			type : "get",
			//data : {	
			//	"id" : 'id'
			//}, 
			dataType : 'json',
			success : function(res){
				console.log(res)
				
				$('#tbody').html('');
				
				for(var i=0;i<res.length;i++){	
					let table ='';
					table+='<tr>'
					table+='<td>'+res[i].page_seq+'</td>'
					table+='<td>'+res[i].nutri_seq+'</td>'
					table+='<td>'+res[i].nutri_class+'</td>'
					table+='<td>'+res[i].my_class_sat+'</td>'
					table+='<td>'+res[i].reg_date+'</td>'
					table+='<td>'+res[i].user_id+'</td>'
					table+='<td>'+res[i].page_memo+'</td>'
					table+='</tr>'
					$('#tbody').append(table)
				}
			},
			error : function(){
				alert("요청실패")
			}	
		});
		
	})
	
	
	
	
	
	
	function deleteMyPage(pageCnt){
		
		location.href="DeleteMypage.do?page_seq="+pageCnt;
		
	}
	
	function change(data,page_seq){
		$(".myupdate").html("<textarea class='myupdate' rows='' cols=''>"+data+"</textarea>"); // <--- 이렇게 태그 만들때 따옴표 주의, 이상입니다. 
		
		
		$("#change").html("<button type='submit' id='change2' onClick='updateMypage(\""+data+"\")'>수정완료</button>")
	}
	function updateMypage(page_memo){
		$("#change2").html("<button id ='change' onClick='change(\""+page_memo+"\")'>수정</button>")
		$(".myupdate").html("<td class='myupdate' id='memo' colspan='2'>"+page_memo+"</td>")
		location.href="UpdateMypage.do?page_memo=" +page_memo+
				"&page_seq="+page_seq; // <-- 이거 정의안된거 처리하시고
		
	}
	
	</script>


</body>
</html>