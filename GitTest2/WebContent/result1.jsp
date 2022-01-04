<%@page import="java.util.ArrayList"%>
<%@page import="vo.NutriVO"%>
<%@page import="vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Document</title>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.bundle.min.js" integrity="sha512-vBmx0N/uQOXznm/Nbkp7h0P1RfLSj0HQrFSzV8m7rOGyj30fYAOKHYvCNez+yM8IrfnW0TCodDEjRqf6fodf/Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css" integrity="sha512-/zs32ZEJh+/EO2N1b0PEdoA10JkdC3zJ8L5FTiQu82LR9S/rOQNfQN7U59U9BC12swNeRAz3HSzIL2vpp4fv3w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
   <%
	UserVO user = (UserVO)session.getAttribute("uservo");

   	String choice=request.getParameter("choice");
   	System.out.println("-----result1 head getParam choice: "+choice);
	Cookie cookie = new Cookie("choice", choice);
   	response.addCookie(cookie);   	
   	if(user!=null) System.out.println("-----result1 head userid : "+user.getUser_id());
   	
	%>
	
	<section class="message">
	
		<p>
			가장 많이 선물하는 TOP3
		</p>
	
	</section>
	
    <section class="resultView">
        <div>

            <div class="nutriCard" onclick="cardUp('#class1')" id="nutriCover3">
            
            	<div class="cardHead" id="class1">
           			<%=choice%> 

            	</div>
            	
				<div class="cardBody">
				
					<div id="nutriCloud3">
					</div>
					<div id="nutriGraph3">
					</div>
					<div>
						<canvas  id="myChartOne" width="150" height="150"></canvas>
					</div>
					
					
				</div>
				<!-- 
				<div class="cardTail">
				</div>
				
				 -->
				
				
            </div>
       <!--                                -->
            <div class="nutriCard" onclick="cardUp('#class2')" id="nutriCover2" >
            
            	<div class="cardHead" id="class2">
            		<%=choice%>            	
            	</div>
				<div class="cardBody">
	
					<div id="nutriCloud2">

            		</div>
            		<div id="nutriGraph2">
					</div>
					<div>
						<canvas  id="myChartOne2" width="150" height="150"></canvas>
            		</div>

            	</div>
            	<!-- 
           		<div class="cardTail">
            	</div>
            	
            	 -->
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
                <input type="text"     name="id" placeholder=" 이메일로 간편가입하기" id="idinput">            
                <input type="password" name="pw" placeholder=" 비밀번호" id="pwinput"><br>
                <input disabled="disabled">
                <input type="password" name="pw2" placeholder=" 비밀번호확인" id=pw2input><br>
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


	<section class="message" id="result2_1">
		<p>
		님을 위한 BEST제안은 ?
		</p>
	</section>
	
	<section class="classView" id="result2_2">
		<div>

			<div class="nutriCard" onclick="cardUp('#class3')" id="nutriCover1">

            	<div class="cardHead" id="class3">
            	
            	제안3(최종) 헤드
            	
            	</div>
				<div class="cardBody">

					<div id="nutriCloud1">

					</div>
					<div id="nutriGraph1">
					</div>
				</div>
				<!-- 
				 <div class="cardTail">
				 
				</div>
				 -->
				 
				
				
            </div>
		</div>
	</section>
	<section class="message">
	
	</section>
	

	
	
	<section class="Fkflask" id="result2_3">

		<div>
		
		</div>
	</section>
	<!-- 
	<section class="message" id="result2_4">
	
		<p>
			이거사
		</p>
	
	</section>
	<section class="itemsView" id="result2_5">
		<div>
		
		
		
		</div>
			
	</section>


    <!-- ------------------------------------------------------------------------ -->
    <script src="asset/js/jquery-3.6.0.min.js"></script>
    <script>
   	<%if(user!=null){%>
    let user = '<%=user.getUser_id()%>';
    let choice = '<%=choice%>'
    $.ajax({
	    url: 'SetMypage.do',  
	    type: "get",
	    data: {
	    	"id" : user,
	    	"choice" : choice
	    },
	    success: function(res1){  
	        console.log("ajaxToSetMyPage")
	    },
	    error:function(){
	        alert("실패")
	    }
	});
    
    <%}else{%>
    let user = null;
    $('#result2_1').hide();
	$('#result2_2').hide();
	$('#result2_3').hide();
	$('#result2_4').hide();
	$('#result2_5').hide();
	
    <%}%>

    var nutriPhoto0=(String)(sessionStorage.getItem("nutriPhoto0"));
    var nutriPhoto1=(String)(sessionStorage.getItem("nutriPhoto1"));
    var nutriPhoto2=(String)(sessionStorage.getItem("nutriPhoto2"));
    $("#nutriCover1").css({"background":"url("+nutriPhoto0+")"}); 
    $("#nutriCover2").css({"background":"url("+nutriPhoto1+")"}); 
    $("#nutriCover3").css({"background":"url("+nutriPhoto2+")"}); 
    
    //var nutriCloud0=(String)(sessionStorage.getItem("nutriCloud0"));
    //var nutriCloud1=(String)(sessionStorage.getItem("nutriCloud1"));
    //var nutriCloud2=(String)(sessionStorage.getItem("nutriCloud2"));
    
    //var nutriGraph0=(String)(sessionStorage.getItem("nutriGraph0"));
    //var nutriGraph1=(String)(sessionStorage.getItem("nutriGraph1"));
    //var nutriGraph2=(String)(sessionStorage.getItem("nutriGraph2"));
    //$("#nutriCloud3").css({"background":"url("+nutriCloud0+")"}); 
    //$("#nutriCloud2").css({"background":"url("+nutriCloud1+")"}); 
    //$("#nutriCloud1").css({"background":"url("+nutriCloud2+")"}); 
    
   	let tag_cloudList = ['#nutriCloud3','#nutriCloud2','#nutriCloud1'];
    let tag_graphList = ['#nutriGraph3','#nutriGraph2','#nutriGraph1'];
    for ( var i =0 ; i<3 ; i++){
    	var nutriCloud=(String)(sessionStorage.getItem("nutriCloud"+i));
    	var nutriGraph=(String)(sessionStorage.getItem("nutriGraph"+i));

    	console.log(nutriCloud);
    	console.log(nutriGraph);
    	
    	
     	imgurl=$('<img>',
     			{'src' : nutriCloud,
        		'width' : '105%' 
            						});
        	$(imgurl).appendTo(tag_cloudList[i]);
    	
       	imgurl=$('<img>',
        		{'src' : nutriGraph ,
           		'width' : '40%'	
           		});
           	$(imgurl).appendTo(tag_graphList[i]);
   }

    	/*
    	imgurl=$('<img>',{'src' : nutriCloud2 ,
    		'width' : '105%',   
    });
    	$(imgurl).appendTo('#nutriCloud3');
    	
    	imgurl=$('<img>',{'src' : nutriGraph2 ,
    	'width' : '35%', 
        'display': 'block' 
   });
    	$(imgurl).appendTo('#nutriCloud3');
    	
     	imgurl=$('<img>',{'src' : nutriGraph1 ,
    		'width' : '40%',   
   });
    	$(imgurl).appendTo('#nutriCloud2');
    */
    
    
    function sssi(){
    	var cov
    	iimg=$('<img>',{
    		'src' : nutriPhoto2
    	});
    	$(iimg).appendTo('#class1');
    }
    function loginform(){
        $('#logIn').css('display','block');
        $('#signUp').css('display','none');
        window.scrollTo(0,document.body.scrollHeight);
    }
    function signform(){
        $('#signUp').css('display','block');
        $('#logIn').css('display','none');
        window.scrollTo(0,document.body.scrollHeight);
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
						$('#id').css('background-color','pink');
						$('.b1').attr('disabled',true);
					}else{
						$('#id').css('background-color','white');
						$('.b1').attr('disabled',false);
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
			$('input[name=pw2]').css('background-color','pink');
			$('.b1').attr('disabled',true);
		}else{
			$('input[name=pw2]').css('background-color','white');
			$('.b1').attr('disabled',false);
		}
    })
    
    $('#signUpForm').on("submit",function(){
    	let data=$(this).serialize();
    	$.ajax({
    		url : "SignUp.do",
    		method:"post",
    		data:data,
    		success:function(res){
    			
    			$('#idinput').val("");
    			$('#pwinput').val("");
    			$('#pw2input').val("");
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
			alert("로그인 성공")
        			$('#sign').hide();
        		$('#suggest').hide();
        		
        		$('#result2_1').show();
        		$('#result2_2').show();
        		$('#result2_3').show();
        		$('#result2_4').show();
        		$('#result2_5').show();
        		 	var nutriPhoto0=(String)(sessionStorage.getItem("nutriPhoto0"));
        		    var nutriPhoto1=(String)(sessionStorage.getItem("nutriPhoto1"));
        		    var nutriPhoto2=(String)(sessionStorage.getItem("nutriPhoto2"));
        		    $("#nutriCover1").css({"background":"url("+nutriPhoto0+")"}); 
        		    $("#nutriCover2").css({"background":"url("+nutriPhoto1+")"}); 
        		    $("#nutriCover3").css({"background":"url("+nutriPhoto2+")"});
        		            		    
        		    
        		    window.scrollTo(0,document.body.scrollHeight)
        		
        		//pageLoad1('result2.jsp')
        		<% user = (UserVO)session.getAttribute("uservo"); 
        			System.out.println("---result1 loginajax 성공, userssession");
        		%>
        		logon();
//-------------------------------------------------------------------------        		
        		/* //로그인 시 Flask서버로 요청
        		$.ajax({
					url:'http://localhost:9000/',
					dataType:'json',
					success:function(res1){
						console.log(res1);
						
						$('.Fkflask').html("<a href='#'>"+res1+"</a>");
						
						localStorage.setItem('data',res1);
					}
				}); */
//-------------------------------------------------------------------------				
        	},
        	error:function(){
        		alert('로그인실패')	
        	}
    	})
    	return false;
    })
    
    function pageLoad1(page){
            $.ajax({
                url: page,  
                type: "post",
                success: function(res){
                	$('.resultView').after(res)
                    /*window.scrollTo({top:'2900',behavior:"smooth"})*/
                },
                error:function(){
                    alert("실패")
                }
            })
    }
   
    
    $(window).on('scroll.resultView',function(){
		if(user!=null){
    		if(Math.round($(document).scrollTop()) == $(document).height() - $(window).height() ){
   				//pageLoad1('result2.jsp',a)
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
  		//-------------------------------------------------------------------------
      let myChartOne = document.getElementById('myChartOne').getContext('2d');
        //차트 오브젝트 생성
      let barChert = new Chart(myChartOne, {
            //차트에 들어갈 타입쓰기
            type : 'doughnut', //bar바, pie파이, line라인, doughnut도넛, polarArea
            data: {
		        labels: ['긍정', '부정'],
		        
		        datasets: [{
				            label: '# of Votes',
				            data: [50,50],
				            backgroundColor: [
								                'rgba(255, 99, 132, 0.4)',
								                'rgba(54, 162, 235, 0.4)',
								                // 'rgba(255, 206, 86, 0.4)',
								                // 'rgba(75, 192, 192, 0.4)',
								                // 'rgba(153, 102, 255, 0.4)',
								                // 'rgba(255, 159, 64, 0.4)'
								            ],
				            borderColor: [
								                'rgba(255, 99, 132, 1)',
								                'rgba(54, 162, 235, 1)',
								                // 'rgba(255, 206, 86, 1)',
								                // 'rgba(75, 192, 192, 1)',
								                // 'rgba(153, 102, 255, 1)',
								                // 'rgba(255, 159, 64, 1)'
								         ],
					         borderWidth:1     
				}]
    		},
		    options: {
	    	responsive : false,
	        scales: { y:{ beginAtZero: true 	} }
			}
	});
        //-------------------------------------------------------------------------
        let myChartOne2 = document.getElementById('myChartOne2').getContext('2d');
        //차트 오브젝트 생성
        let barChert2 = new Chart(myChartOne2, {
            //차트에 들어갈 타입쓰기
            type : 'doughnut', //bar바, pie파이, line라인, doughnut도넛, polarArea
            data: {
	        	labels: ['긍정', '부정'],
		        datasets: [{
				            label: '# of Votes',
				            data: [50, 50],
				            backgroundColor: [
							                'rgba(255, 99, 132, 0.4)',
							                'rgba(54, 162, 235, 0.4)',
							                // 'rgba(255, 206, 86, 0.4)',
							                // 'rgba(75, 192, 192, 0.4)',
							                // 'rgba(153, 102, 255, 0.4)',
							                // 'rgba(255, 159, 64, 0.4)'
				            				],
							borderColor: [
							                'rgba(255, 99, 132, 1)',
							                'rgba(54, 162, 235, 1)',
							                // 'rgba(255, 206, 86, 1)',
							                // 'rgba(75, 192, 192, 1)',
							                // 'rgba(153, 102, 255, 1)',
							                // 'rgba(255, 159, 64, 1)'
									    ],
							borderWidth:1     
				}]
		    },
	    	options: {
		    	responsive : false,
		        scales:{ y:{ beginAtZero: true } }
		    }
		});
        myChartOne2.destroy();
        
        
    </script>

</body>
</html>