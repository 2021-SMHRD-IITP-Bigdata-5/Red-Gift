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

background-image: url( 'img /배경 /이미지a-3.jpg ') ;
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
	
		
		ArrayList<MyPageVO> pageList = (ArrayList<MyPageVO>)session.getAttribute("pageList");
		MyPageVO mpvo = new MyPageVO();
		System.out.println(pageList.size());
		
	%>
	</section>

		<%
			for (int i = 0; i < pageList.size(); i++) {
						mpvo=pageList.get(i);
			}
		%><table>
			<thead>
				<tr>
					<td colspan="2"><%=mpvo.getPage_seq()%>,<%=mpvo.getReg_date()%>
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td id=nutricard><%=mpvo.getNutri_class()%></td>
      			 </tr>
       		 </tbody>
   		 </table>
   
	</section>

	
	<script src="asset/js/jquery-3.6.0.min.js"></script>
	<script>

	</script>
	
</body>
</html>