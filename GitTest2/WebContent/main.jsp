<%@page import="vo.UserVO"%>
<%@page import="vo.NutriVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<body>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>빨간약기프티콘</title>
    <style>
@font-face{font-family: 'NanumSquareLight'; src:url('asset/font/NanumSquareL.otf')}
@font-face{font-family: 'NanumSquareR'; src:url('asset/font/NanumSquareR.otf')}
@font-face{font-family: 'NanumSquareBold'; src:url('asset/font/NanumSquareB.otf')}
@font-face{font-family: 'NanumSquareExtraBold'; src:url('asset/font/NanumSquareEB.otf')}

<<<<<<< HEAD
	
=======


		/*부트스트랩 선택자랑 겹친다*/
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-IITP-Bigdata-5/Red-Gift.git
		html,body{
			width: 100%;
			height: 100%;
			-webkit-user-drag: none;
		}
        body{
            display: block;
            align-items: center;
            /*overflow-x: hidden;*/
			display: grid;
        }
        #banner{
            background-image: url('asset/img/배경/배경1-메인.jpg');
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            /*background-size: contain;*/
            padding: 100px 10vw 0px 0px;
            width: 100%;
            height: 90vh;
            
            /*align:center;*/
			
            font-family:'NanumSquareLight';
            font-size: 30px;
            font-weight: bold;
            text-align:right;
        }
        /*문구1*/
        #bannerButton{
        	position:absolute;
        	left:300px;
        	font-family: 'NanumSquareExtraBold';
        	font-size:60px;
        	cursor:pointer;
        	-webkit-transition: .2s ease-in-out;
        	text-align:left;
        }
        #bannerButton:hover{
        	text-shadow: 0rem 0 white, 0 0rem white, 1.5rem 0 white, 0 0rem white;
        	border-radius: 100px;/*모서리둥글게*/
        }
        /*문구2*/
        #bannerButton2{
        	position:absolute;
        	left:300px;
        	/*top:450px;*/
        	top:490px;
        	font-family: 'NanumSquareExtraBold';
        	font-size:16px;
        	cursor:pointer;
        	-webkit-transition: .2s ease-in-out;
        	color:white;
        	padding: 20px;
        	margin:35px 0 0 0;
            display:inline-block;
            background-color: #FF5C35;
            border-radius: 100px;/*모서리둥글게*/
        }
        
		#bannerButton2:hover{
			box-shadow: 0.5rem 0.5rem 0.5rem hsl(0 0% 0% / 10%);
		}
		#bannerButton3{
			position:absolute;
        	left:285px;
        	top:400px;
        	font-family: 'NanumSquareExtraBold';
        	font-size:19px;
        	cursor:pointer;
        	-webkit-transition: .2s ease-in-out;
        	color: rgba(41, 41, 41, 0.6);
        	padding: 20px;
        	margin:35px 0 0 0;
            display:inline-block;
        	cursor:pointer;
        	-webkit-transition: .2s ease-in-out;
            text-align:left;
		}
        
        section{
            display: flex;
            justify-content: center;
        }
        /*카드 하단길이*/
		section#choiceSection {
    		margin-bottom: 80px;
		}
		section.resultView > div{
			padding-bottom: 10px;
		}
        .message{ 
        	margin: 8% 0 8% 0;
        	font-family: 'NanumSquareBold';
        	font-size: 40px;
        	
        }
        
        .resultView>div>div {
            display: inline-block;
            width: 450px;
            height: 600px;
        }
        .classView>div>div, .itemsView>div>div{
        	display: inline-block;
            width: 1000px;
            height: 600px;
        }
        .resultView>div>div,.classView>div>div {
        	
			margin: 0 20px 0 20px;
			border-radius: 2ch;
			border: 0px solid hsl(0 0% 85%);
			box-shadow: 0 1rem 1rem hsl(0 0% 0% / 10%);
			/*box-shadow: 0 2.5rem 2rem -2rem hsl(150 50% 20% / 20%);*/
			background-color:#f7f7f7;
			/*background: hsl(0 0% 100%);*/
			place-items: center;
			text-align: center;
			line-height: 1.5;
			color: hsl(200 50% 20%);

		}
		.classView>div{
			margin:0 0 100px 0;
		}
		section.Fkflask{
			flex-direction: column;
    		align-items: center;
		}
		.Fkflask>div{
			margin:0 0 20px 0;
		}
		#d1{
			margin:0 0 100px 0;
		}
		
		
		.nutriCloud3,.nutriCloud1,.nutriCloud2{
    		width:100%;
    		height:100%;
    	}
		.nutriGraph3,.nutriGraph1,.nutriGraph2{
    		/*width:100px;
    		height:100px;*/
    		justify-content: center;
    	}
    	.nutriCard{
    		overflow:hidden;
    		position:relative;
    		background-position: center !important;
    		background-size: cover !important;
    	}
    	.nutriCard:hover{
    		box-shadow: 1rem 1rem 1rem hsl(0 0% 0% / 15%);
    	}
    	.cardHead{
    		width:100%;
    		height:600px;
    		border-radius:2ch 2ch 0 0;
    		box-sizing:boarder-box;
    		-webkit-transition: .2s ease-in-out;
    		/*background-image: url('asset/img/');*/
    		/*background-size:150%;*/
    		background-color:transparent;
    	}
    	/* 헤드가 아니라 바디가 올라오게 바꿔야함.*/
    	.cardHead_up{
    		width:100%;
    		height:0px;
    		border-radius:2ch 2ch 0 0;
    		background-image: url('asset/img/');
    		background-size:100%;
    		box-sizing:boarder-box;
    		-webkit-transition: .5s ease-in-out;
    	}
   		.cardBody{
   			width:100%;
    		height:100%;
    		line-height:1;
    		background-color:white;
    		overflow-x: hidden;
    		/*height: fit-content;*/
    	}
    	.cardBody::-webkit-scrollbar {
    		display: none;
    	}
    	/*엄마카드*/
    	.cardTail{
    		
			position:absolute;
			bottom:0;	
			
			width:100%;
			height:40px;
			background-color:white;
			border-radius:0 0 2ch 2ch;
			
			font-family: 'NanumSquareBold';
			font-size:20px;
		}
		.cardTail:hover{
			font-size:25px;
			box-shadow: 1rem 1rem 1rem hsl(0 0% 0% / 15%);
		}
		
    	#choiceSection{
    	
		}    	
		.choiceCard_wrapper{
			overflow-x:scroll;
			white-space:nowrap;
			width: 90vw;
			height:500px;
			-webkit-overflow-scrolling: touch;
			user-select:none;
			-webkit-user-select:none;
		}
		.choiceCard_wrapper::-webkit-scrollbar {
		    display: none;
		}
		.choiceCard{
			user-select:none;
			-webkit-user-select:none;
			display:inline-block;
			margin-left:50px;
			width:300px;
			height:450px;
			/*background-color:#f7f7f7;*/
			box-shadow: 0 1rem 1rem hsl(0 0% 0% / 10%);
			color: hsl(200 50% 20%);
			line-height: 1.5;
			place-items: center;
			text-align: center;
			margin: 0 30px 0 0;
			border-radius: 2ch;
			border: 0px solid hsl(0 0% 85%);
			-webkit-transition: .2s ease-in-out;
			position:relative;
<<<<<<< HEAD
=======
			
			box-shadow: 1rem 1rem 1rem 1rem hsl(0 0% 0% / 15%);
			
			
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-IITP-Bigdata-5/Red-Gift.git
		}
		.choiceCard:hover{
			box-shadow: 0.6rem 0.6rem 0.6rem hsl(0 0% 0% / 15%);
		}
        input{
	        width:300px;
	        height:40px;
	        background-color: transparent;
	        border: none;
	        font-size:18px;
        }
        #sign{
			height:200px;
			margin-bottom: 50px;        
        }
        #sign>div>form>div{
        	display:flex;
        	justify-content: center;
	        align-items: center; 
        }
		#sign button{
	        color: white;
	        border: 0px;
	        border-radius: 25px;
	        width:300px; 
	        font-family: 'NanumSquareR';
	        font-size: 18px;
	        font-weight: bold;
	        margin: 10px 5px 5px 5px;
	        padding: 10px;
	        
	        display: flex;
	        justify-content: center;
	        align-items: center; 
    	} 
    	#sign .b1{
        	background-color: crimson;
        	opacity:0.7;
    	}
    	#sign .b2{
        	background-color: gray;
        	opacity:0.6;
    	}
    	
    	

    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.bundle.min.js" integrity="sha512-vBmx0N/uQOXznm/Nbkp7h0P1RfLSj0HQrFSzV8m7rOGyj30fYAOKHYvCNez+yM8IrfnW0TCodDEjRqf6fodf/Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css" integrity="sha512-/zs32ZEJh+/EO2N1b0PEdoA10JkdC3zJ8L5FTiQu82LR9S/rOQNfQN7U59U9BC12swNeRAz3HSzIL2vpp4fv3w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    
</head>
<body> 
<a style="display:scroll;position:fixed;bottom:50px;right:10px;" href="#" title="up"><img src="asset/img/upimg.jpg"></a> 

	<%@include file="gnb.jsp"%>
    
        <div id="banner">
            <br>
            <br>
            <br>
            <h1 id="bannerButton" onclick="push()">선물할 영양제를<br>찾고 계신가요?</h1>

            <h2 id="bannerButton2" onclick="push()">시작해 보세요   <img src="asset/img/icon_img/메인-시작해보세요2.png" width="25" height="25"></h2>
            <p id="bannerButton3">영양제에 관해 처음 접하거나 지식이 없는 구매자를 위하여 긍정,<br> 부정적인 지표를 통하여 영양제를 선택할 수 있게 도와드립니다.</p>
            

        </div>
    
    <section class="message">
	
		<p>
		누구에게 선물하실 건가요?
		</p>
	
	</section>

	
	<section id="choiceSection">
		<div class="choiceCard_wrapper">
			<div class="choiceCard" id="card1"><img id="" src="asset/img/0103_메인클릭/0103_메인클릭이미지_엄마.jpg" alt="1" width="300px" height="400px">
				<div class="cardTail" onclick="cardChoice('1')">CLICK</div>
			</div>
			<div class="choiceCard" id="card2"><img id="" src="asset/img/0103_메인클릭/0103_메인클릭이미지_아빠.jpg" alt="1" width="300px" height="400px">
				<div class="cardTail" onclick="cardChoice('2')">CLICK</div>
			</div>
			<div class="choiceCard" id="card3"><img id="" src="asset/img/0103_메인클릭/0103_메인클릭이미지_할머니.jpg" alt="1" width="300px" height="400px">
				<div class="cardTail" onclick="cardChoice('3')">CLICK</div>
			</div>
			<div class="choiceCard" id="card4"><img id="" src="asset/img/0103_메인클릭/0103_메인클릭이미지_부부.jpg" alt="1" width="300px" height="400px">
				<div class="cardTail" onclick="cardChoice('4')">CLICK</div>
			</div>
			<div class="choiceCard" id="card5"><img id="" src="asset/img/0103_메인클릭/0103_메인클릭이미지_야근.jpg" alt="1" width="300px" height="400px">
				<div class="cardTail" onclick="cardChoice('5')">CLICK</div>
			</div>
			<div class="choiceCard" id="card6"><img id="" src="asset/img/0103_메인클릭/0103_메인클릭이미지_회식.jpg" alt="1" width="300px" height="400px">
				<div class="cardTail" onclick="cardChoice('6')">CLICK</div>
			</div>
			<div class="choiceCard" id="card7"><img id="" src="asset/img/0103_메인클릭/0103_메인클릭이미지_어지럼증.jpg" alt="1" width="300px" height="400px">
				<div class="cardTail" onclick="cardChoice('7')">CLICK</div>
			</div>
			<div class="choiceCard" id="card8"><img id="" src="asset/img/0103_메인클릭/0103_메인클릭이미지_학생.jpg" alt="1" width="300px" height="400px">
				<div class="cardTail" onclick="cardChoice('8')">CLICK</div>
			</div>
		</div>
	</section>


    <!-- ------------------------------------------------------------------------ -->
    <script src="asset/js/jquery-3.6.0.min.js"></script>
    <script>
        

        function push(){
        	window.scrollTo({top:'900',behavior:"smooth"})
        }
        
        function pageLoad(page,a){
            $.ajax({
                url: page,  
                type: "get",
                data: {
                	"choice" : a
                },
                success: function(res){  
                    $('#choiceSection').after(res)
                    //window.scrollTo(0,document.body.scrollHeight)

                    window.scrollTo({top:'1950',behavior:"smooth"})

 //----------------------------------------------------------------------------------------------------                   

                    
                    //flask로 넘기기 위한 약 8종류 데이터 
                    let selectItem = ['감미놀렌산','쏘팔메토','글루코사민','홍삼','밀크씨슬','밀크씨슬','셀레늄','아연'];
                    	
                    for(let i=0; i<selectItem.length; i++){
                    	if(parseInt(a) === i+1){
                    		param = selectItem[i];
                    		break;
                    	}
                    }
  
                  	//로그인 시 Flask서버로 요청
            		$.ajax({
    					url:'http://localhost:9000/',
    					//dataType:'json',
    					data:'param='+param,
    					dateType:'json',
    					success:function(result){
    						
    						console.log(result);
    					
    						var res1 = result;
    						
    						//크롤링한 데이터는 result에 저장됨
    						//result에서 정보를 꺼내와서 웹페이지에 보여줄 정보를 html()안에 넣기 
    						//$('section.message').html(result);
    						
    					 	let contents  = '';
    					 	
    					 	contents += "<div ><a href='"+res1.link1+"' target='_blank' id='test'>"+param+" 첫 번째 리뷰</a></div>";
    						contents += "<div ><a href='"+res1.link2+"' target='_blank' id='test'>"+param+" 두 번째 리뷰</a></div>";
    						contents += "<div id='d1'><a href='"+res1.link3+"' target='_blank' id='test'>"+param+" 세 번째 리뷰</a></div>"; 
							
    						$('.Fkflask').html(contents);
    						
    						$('#test').bind('click', function test2() {
								window.open(res1);
								console.log('클릭');
							}) 
	
    						//localStorage.setItem('data',res1); 

    					}

    				});
                  	
//----------------------------------------------------------------------------------------------------                	

                },
                error:function(){
                    alert("실패")
                }
            })
        }
        
        var selected = false;
		//카드 섹션 마우스 드래그 
			$(document).ready( function(){
				if( selected==false){
	    			var bMove = false;
	    			var startX = 0;
	    			var scrollLeft = 0;
	    			var slider = document.querySelector(".choiceCard_wrapper");
					
	    			var wrapper = document.querySelector(".choiceCard_wrapper");
					var wrapperPosition = wrapper.getBoundingClientRect();
	    			
	    			slider.addEventListener("mousedown", function(e){
	    				bMove = true;
	    				startX = e.pageX - slider.offsetLeft;
	    				scrollLeft = slider.scrollLeft;
	    			});
	
	    			slider.addEventListener("mouseleave", function(){
	    				bMove = false;
	    			});
	
	    			slider.addEventListener("mouseup", function(){
	    				bMove = false;
	    			});
	
	    			slider.addEventListener("mousemove", function(e){
	    				if( bMove )
	    				{
	    					const x = e.pageX - slider.offsetLeft;
	    					const walk = x - startX;
	    					slider.scrollLeft = scrollLeft - walk;
	    				}		
	    			});
	    			
	 				slider.addEventListener("mousemove", function(e){
	 					var cards=document.querySelectorAll(".choiceCard");
	 	 				cards.forEach(function(i){
	 	 					iPosition=i.getBoundingClientRect()
	 	 					if( (iPosition.x +150) <  (wrapperPosition.x ) || ((iPosition.x +150) > (window.innerWidth-100)) ){
	 	 						$('#'+i.id).css('opacity','0')
	 	 					}else{
	 	 						$('#'+i.id).css('opacity','1')
	 	 					}
	 	 					//카드중앙좌표 기준으로 인아웃 함수 통일 -150	
	 	 				})
	 				})
				}	
		} );

		function cardChoice(s){
			if(selected==false){
				selected = true;
	    		//$('.message:nth-child(2)').remove();
	    		//$('.resultView').remove();
	    			
	    		 $.ajax({
				      url: 'GetNutriService.do',  
				      type: "get",
				      data: {
				      	"choice" : s
				      },
				      dataType:'json',
				      success: function(res){
				    	  for(var i=0;i<res.length;i++){	
				    	  	console.log("영양제"+res[i].nutri_name);
				    	  	console.log("사진"+res[i].nutri_photo);
				    	  	console.log("클라우드"+res[i].nutri_cloud);
				    	  	console.log("그래프"+res[i].nutri_graph);
				    	  	sessionStorage.setItem("nutriName"+i, res[i].nutri_name);
				    	  	sessionStorage.setItem("nutriPhoto"+i, res[i].nutri_photo);
				    	  	sessionStorage.setItem("nutriCloud"+i,res[i].nutri_cloud);
				    	  	sessionStorage.setItem("nutriGraph"+i,res[i].nutri_graph);
				    	  	
				    	    s
				    	  }
				    	  pageLoad('result1.jsp',s)
                          $('#card'+s).css('opacity','0.5');
				      },
				      error:function(){
				          alert("cardChoice 실패")
				      }
				  })

			}else{
				
				location.reload()
			}
		}	
		
	<%-- 	//flask서버로 데이터 요청
		$(function(){
			let loginCheck = `<%=session.getAttribute("uservo") %>`;
			
			if(loginCheck!=='null'){
				$.ajax({
					url:'http://localhost:9000/',
					success:function(result){
						console.log(result);
						
						$('section.message').html(result);
					}
				});
			}
		}); --%>
        
        

    </script>
</body>
</html>