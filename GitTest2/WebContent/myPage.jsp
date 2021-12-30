<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
</head>
<body>
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
	
	
</body>
</html>