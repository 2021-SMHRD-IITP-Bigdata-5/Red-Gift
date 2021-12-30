<%@page import="vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
   <%//test
	UserVO user = (UserVO)session.getAttribute("uservo");
	String choice=request.getParameter("choice");
   	System.out.println(choice);
   	Cookie cookie = new Cookie("choice", choice);
   	response.addCookie(cookie);   	
	%>
	
	<section class="message">
	
		<p>
			가장 많이 선물하는 TOP3
		</p>
	
	</section>
    <section class="resultView">
        <div>
            <div class="nutriCard" onclick="cardUp('#class1')">
            	<div class="cardHead" id="class1">
            	
            	제안1 헤드
            	
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
       <!--                                -->
            <div class="nutriCard" onclick="cardUp('#class2')">
            	<div class="cardHead" id="class2">
            	
            	제안2 헤드
            	
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

<% if(user==null){ %>  
 	<section class="message" id="suggest">
	
		<p>
		BEST추천을 보시려면 이메일을 등록하세요
		</p>
	
	</section>
    <section id="sign">
        <div id="signUp">
            <form action="SignUp.do" method="post" id=signUpForm>
                <input type="text"     name="id" placeholder=" 이메일로 간편가입하기" id="id">            
                <input type="password" name="pw" placeholder=" 비밀번호"><br>
                <input disabled="disabled">
                <input type="password" name="pw2" placeholder=" 비밀번호확인"><br>
                <div>
                <button class="b2" type="button" onClick="loginform()">이미 계정이 있습니다</button>
                <button class="b1" type="submit" disabled="disabled" >회원가입</button>
                </div>
            </form>
        </div>	
        <div id="logIn" style="display:none;">
            <form action="LogIn.do" method="post" id=logInForm>
                <input type="text"     name="id" placeholder="your@email.com">
                <input type="password" name="pw" placeholder="password">
                <div>
                <button class="b2" type="button" onClick="signform()">아직 계정이 없습니다</button> 
                <button class="b1" type="submit" onClick="">로그인</button>
                </div>
            </form>
        </div>
    </section>	
<%}%> 
<% user = (UserVO)session.getAttribute("uservo"); %>

	

    <!-- ------------------------------------------------------------------------ -->
    <script src="asset/js/jquery-3.6.0.min.js"></script>
    <script>
   	<%if(user!=null){%>
    let user = '<%=user.getUser_id()%>';
    <%}else{%>
    let user = null;
    <%}%>
    
    function loginform(){
        $('#logIn').css('display','block')
        $('#signUp').css('display','none')
        window.scrollTo(0,document.body.scrollHeight)
    }
    function signform(){
        $('#signUp').css('display','block')
        $('#logIn').css('display','none')
        window.scrollTo(0,document.body.scrollHeight)
    }
    
   	
    
    $('input[name=id]').on("blur", function (event) {
    	let inputEmail = $('#id').val();
    	$.ajax({
			 url : "CheckUserId.do",
			 method : "post",
			 data : {
				 "inputEmail" : inputEmail
			 },
			 success : function(res){
				 console.log(res)
				 	if( res !='true' ){
						$('#id').css('background-color','pink')
						$('.b1').attr('disabled',true)
					}else{
						$('#id').css('background-color','white')
						$('.b1').attr('disabled',false)
					}
			 },
			 error : function(){
				 alert('아이디체크요청실패')
			 }
    	})
    })
    $('input[name=pw2]').on("blur", function () {
    	let pwA = $('input[name=pw]').val() 
    	let pwB = $('input[name=pw2]').val()
		if( pwA !=pwB ){
			$('input[name=pw2]').css('background-color','pink')
			$('.b1').attr('disabled',true)
		}else{
			$('input[name=pw2]').css('background-color','white')
			$('.b1').attr('disabled',false)
		}
    })
    
    $('#signUpForm').on("submit",function(){
    	let data=$(this).serialize();
    	$.ajax({
    		url : "SignUp.do",
    		method:"post",
    		data:data,
    		success:function(res){
    			$('#signUp').hide();
    			$('#logIn').show();
    			
    		},
    		error:function(){
    			alert('회원가입요청실패')	
    		}
    	})
    	return false;
    })
    $('#logInForm').on("submit",function(){
    	let data=$(this).serialize();
    	
    	$.ajax({
    		url : "LogIn.do",	
    		method:"post",
        	data:data,
        	success:function(res){
        		$('#sign').hide();
        		$('#suggest').hide();
        		pageLoad1('result2.jsp')
        		<% user = (UserVO)session.getAttribute("uservo"); %>
        		test1();
        	},
        	error:function(){
        		alert('로그인요청실패')	
        	}
    	})
    	return false;
    })
    function test1(){
    	$.ajax({
            url: "gnb.jsp",  
            type: "post",
            data:{
            	"test11" : "test111"
            },
            success: function(res){
            	alert("성공")
            },
            error:function(){
                alert("실패")
            }
        })
    }
    
    
    
    
    function pageLoad1(page){
            $.ajax({
                url: page,  
                type: "post",
                success: function(res){
                	$('.resultView').after(res)
                    window.scrollTo({top:'1500',behavior:"smooth"})
                },
                error:function(){
                    alert("실패")
                }
            })
        }
   
    
    
    
    $(window).on('scroll.resultView',function(){
		if(user!=null){
    		if(Math.round($(document).scrollTop()) == $(document).height() - $(window).height() ){
   				pageLoad1('result2.jsp',a)
   				$(window).off('scroll.resultView');
    		}
    	}
    })
    
 	function cardUp(a){
    	if( $(a).attr('class')=='cardHead'){
    		$(a).attr('class','cardHead_up');	
    	}else{
    		$(a).attr('class','cardHead');
    	}
    	
    	
    }
    
        
        
        
        
    </script>

</body>
</html>