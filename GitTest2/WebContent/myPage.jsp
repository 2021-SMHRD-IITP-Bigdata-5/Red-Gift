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

section {
	display:flex;
	align-items: center;
    flex-direction:column;
	
	padding: 20vh 0 5% 5% ;
	height:100%;

}
body {
	height:100%;
	display: block;
	align-items: center;
	overflow-x: hidden;
	display: flex;
	justify-content: center;
	align-items: center;
	background-image: url('asset/img/배경/대체-3.jpg');
	-webkit-background-size: cover;
	-webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
body>*{
	font-family: 'NanumSquareR';
}
table {
/*
	border: 10px solid;
	border-collapse: collapse;
	width: 600px;
	height: 400px;
	color: darkslategray;
	background: mistyrose;
	border: 10px solid #081C15; 
	margin: 50px;
	*/
	width: 100%;
	height: 100%;
}
table td {
	/*
	border: 5px solid;
	border-color: #AFE9D5;*/
	background: white;
	align-items: center; 
	height: 100px;
}

thead>tr>td {
	height: 60px;
	background:#f7f7f7;
}
button{
	width:50%;
	border: none;
	background:#f7f7f7;
}
.myCard{
	overflow:hidden;
	position:relative;
	display: inline-block;
	align-items: center;
	
	width: 500px;
	height: 500px;
	box-shadow: 0 1rem 1rem hsl(0 0% 0% / 10%);
	background: hsl(0 0% 100%);
	color: hsl(200 50% 20%);
	line-height: 1.5;
	
	place-items: center;
	text-align: center;
	margin: 20px 0px 20px 0;
	/*border-radius: 2ch;*/
	border: 0px solid hsl(0 0% 85%);
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
<<<<<<< HEAD

		<%
			for (int i = 0; i < pageList.size(); i++) {
		%><table>
			<thead>
				<tr>
					<td colspan="2"><%=pageList.get(i).getPage_seq()%>,<%=pageList.get(i).getReg_date()%>
					    <button onclick="deleteMyPage('<%=pageList.get(i).getPage_seq() %>')">삭제</button>
						<button id = "change1" onClick="change('<%=pageList.get(i).getPage_memo()%>')">수정</button>
						
						
						
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td   >
						<%=pageList.get(i).getNutri_class()%>
					</td>
=======
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-IITP-Bigdata-5/Red-Gift.git






<!--                                                    -->
	<script src="asset/js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	
<<<<<<< HEAD
	function change(data){
		$(".myupdate").html("<textarea class='myupdate' rows='' cols=''>"+data+"</textarea>"); // <--- 이렇게 태그 만들때 따옴표 주의, 이상입니다. 
		$("#change1").html("<button id='change1' onClick='update(\""+data+"\")'>수정완료</button>")
	}
	function update(data){
		$(".myupdate").html("<td class='myupdate' id='memo'colspan='2'>"+data+"</td>")
		$("#change1").html("<button id ='change1' onClick='change(\""+data+"\")'>수정</button>")

	}
=======
	$(document).ready (tableLoad) 
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-IITP-Bigdata-5/Red-Gift.git
	
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
					table+='<div class="myCard">'
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
					table+='</tbody></table></div>'
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