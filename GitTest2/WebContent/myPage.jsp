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

section {
	padding-left: 5%;
	padding-bottom: 5%;
	height: 100%;
	
}
body {
	display: block;
	align-items: center;
	overflow-x: hidden;
	display: flex;
	font-family: Verdana, Geneva, Tahoma, sans-serif;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-image: url('asset/img/배경/이미지b-1.png');
	background-size: cover;
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
.memo {
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
}

body>*{
	font-family: 'NanumSquareR';
}

button{
	width:50%;
	border: 0px solid;
}
textarea{
	width:100%; 
	height:80%;
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

	

	</section>













<!--                                                    -->
	<script src="asset/js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	
	$(document).ready (tableLoad) 
	
	var modibutton=true;
	var memotxt;
	
	function tableLoad() {
		$.ajax({
			url : "Mypage.do",
			type : "get",
			//data : {	
			//	"id" : 'id'
			//}, 
			dataType : 'json',
			success : function(res){
				console.log(res)
				
				$('#tableArea').html('');
				
				for(var i=0;i<res.length;i++){	
					let table ='';
					table+='<table id="'+res[i].page_seq +'">'
					table+='<thead><tr>'
					table+='<td>'+res[i].page_seq+'</td>'
					table+='<td> date:'+res[i].reg_date+'</td>'
					table+='<td><button onclick="'+'modi('+ res[i].page_seq +')'+'" id="button'+res[i].page_seq+'">수정</button>'
							+'<button onclick="'+'del('+ res[i].page_seq +')'+'">삭제</button></td>'
					table+='</tr></thead>'
				
					table+='<tbody><tr>'
					table+='<td> seq:'+res[i].nutri_seq+'</td>'
					table+='<td> class:'+res[i].nutri_class+'</td>'
					table+='<td> sat:'+res[i].my_class_sat+'</td>'
					
					//table+='<td> user:'+res[i].user_id+'</td>'
					table+='</tr>'
					table+='<tr>'
					table+='<td colspan="4" class="memo" id="'+res[i].page_seq +'memo">'+res[i].page_memo+'</td>'
					table+='</tr>'
					table+='</tbody></table>'
					$('#tableArea').append(table)
				}
			},
			error : function(){
				alert("요청실패")
			}	
		});
		
	}
	function modi(n){
		if(modibutton){
			memotxt=$('#'+n+'memo').text();
			tarea='<textarea id="'+ 'modiInput' +'">'+memotxt+'</textarea> <button onclick="modiajax('+n+')">수정확인</button>'
			$('#'+n+'memo').text('')	
			$('#'+n+'memo').append(tarea)
			
			$('#button'+n).text('취소')
			modibutton=false;
		}else{
			$('#'+n+'memo').html('')
			$('#'+n+'memo').append(memotxt)
			modibutton=true;
			$('#button'+n).text('수정')
		}
	}
	function modiajax(n){
		$.ajax({
			url : "UpdateMypage.do",
			type : "get",
			data : {	
				"page_seq" : n,
				"page_memo" : $('#modiInput').val(),
			}, 
			success : function(res){
				tableLoad();
			},
			error : function(){
				alert("요청실패");
			}	
		});
	}
	function del(n){
		var input = confirm('정말 삭제하시겠습니까');
		if(input){
			delajax(n);
			$('#'+n).html('');
			tableLoad();
		}else{
			alert("취소")

		}
	}
	function delajax(n) {
		
		$.ajax({
			url : "DeleteMypage.do",
			type : "get",
			data : {	
				"page_seq" : n
			}, 
			success : function(res){
				alert("삭제완료");
				
			},
			error : function(){
				alert("요청실패");
			}	
		});
		
	}
	</script>


</body>
</html>