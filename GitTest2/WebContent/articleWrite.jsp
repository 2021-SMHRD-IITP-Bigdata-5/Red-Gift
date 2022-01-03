<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#tableArea{
   		display:flex;
   		align-items: center;
        flex-direction:column;
   		height:600px;
   		background-image: url('asset/img/배경/대체-3.jpg');
   		-webkit-background-size: cover;
   		-webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
        /*background-size: contain;*/
        padding: 25vh 10vw 0px 10vw;
        width: 100%;
        height: 90vh;
   	}
	#tableArea> *{
	opacity:0.9;
	font-family: 'NanumSquareLight';
	}

	table{
		border-collapse: collapse; width: 700px;
		font-size: 18px; font-weight: 400;
		margin:0 0 10px 0 ;
	}
	table td{
		border-collapse: collapse; text-align: center; 
		height:35px; background-color:#f5f5f5;
	}
	.sub{
	width:150px;
	background-color: #f2b6a0;
	text-align: center
	
	}
	input, textarea{
		height:100%;
		width:100%;
		border:none;
		outline:none;
		text-align:top;
	}
	#contents{
		height:200px;}
	button{
		height:40px;
		width:100px;
		border:0px;
		background-color:#f2b6a0;
		color:white;
	}

</style>
</head>
<body>

<%@include file="gnb.jsp" %>

<section id="tableArea">


	<table>
		
	<tr>
	<td class="sub">제목</td><td><input type="text" placeholder="여기에 제목을 입력"/></td>
	</tr>
	<tr>
	<td colspan="2"></td>
	
	</tr>
	<tr>
	<td class="sub" id="contents">내용</td><td><textarea placeholder="여기에 내용을 입력"></textarea></td>
	</tr>
	<tr>
	<td class="sub">파일1</td><td><input type="file" /></td>
	</tr>
	<tr>
	<td class="sub">파일2</td><td><input type="file" /></td>
	</tr>
	<tr>
	<td class="sub">파일3</td><td><input type="file" /></td>
	</tr>
	
	</table>
	<div>
	<button onclick="#">취소</button>
	<button onclick="#">제출</button>
	
	</div>

</section>


</body>
</html>