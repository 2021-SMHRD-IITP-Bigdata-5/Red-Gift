<%@page import="vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<body lang="en">
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



		/*부트스트랩 선택자랑 겹친다*/

			
		html,body{
			width: 100%;
			height: 100%;
		}
        body{
            display: block;
            align-items: center;
            overflow-x: hidden;
			display: grid;
        }
        #banner{
            background-image: url('asset/img/배경/대체-4.jpg');
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
        	top:450px;
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
        
        section{
            /*padding: 5% 0% 0%% 0%;*/
            display: flex;
            justify-content: center;
        }

        .message{ 
        	margin: 8% 0 8% 0;
        	font-family: 'NanumSquareBold';
        	font-size: 40px;
        	
        }
        
        .choice{
            display:inline-block;
            border-style: solid 1px;
            background-color: gray;
            width: 300px;
            height: 400px;
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
        
        .resultView>div>div,.classView>div>div,.itemsView>div>div {
        	
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
		
		.itemsView{
			margin-bottom: 50px;
		}

    	.nutriCard{
    		overflow:hidden;
    		position:relative;
    	}
    	
    	.nutriCard:hover{
    		box-shadow: 1rem 1rem 1rem hsl(0 0% 0% / 15%);
    	}
    	
    	.cardHead{
    		width:100%;
    		height:500px;
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
    		height:50px;
    		border-radius:2ch 2ch 0 0;
    		background-image: url('asset/img/');
    		background-size:150%;
    		box-sizing:boarder-box;
    		-webkit-transition: .2s ease-in-out;
    	}
    	
   		.cardBody{
   			width:100%;
    		height:100px;
    		line-height:1;
    		
    		background-color:transparent;
    	}

    	.cardBody::-webkit-scrollbar {
    		display: none;
    	}
    	
    	.cardTail{
			position:absolute;
			bottom:0;	
			
			width:100%;
			height:40px;
			/*background-color:transparent;*/
			background-color:purple;
			color:white;
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
		  /*선택카드*/
		.choiceCard{
			user-select:none;
			-webkit-user-select:none;
			display:inline-block;
			margin-left:50px;
			width:300px;
			height:450px;
			background-color:#f7f7f7;
			
			box-shadow: 0 1rem 1rem hsl(0 0% 0% / 10%);
			/*box-shadow: 0 2.5rem 2rem -2rem hsl(150 50% 20% / 20%);*/
			color: hsl(200 50% 20%);
			line-height: 1.5;
			place-items: center;
			text-align: center;
			margin: 0 30px 0 0;
			border-radius: 2ch;
			border: 0px solid hsl(0 0% 85%);
			-webkit-transition: .2s ease-in-out;
			position:relative;
			
			box-shadow: 1rem 1rem 1rem 1rem hsl(0 0% 0% / 15%);
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
</head>
<body> 

	
	<%@include file="gnb.jsp"%>

    
        <div id="banner">
            <br>
            <br>
            <br>
            <h1 id="bannerButton" onclick="push()">선물할 영양제을<br>찾고 계신가요?</h1>
            <h2 id="bannerButton2" onclick="push()">시작해 보세요   <img src="asset/img/icon_img/메인-시작해보세요2.png" width="25" height="25"></h2>
            
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

    <%@include file="footer.jsp" %>
    <!-- ------------------------------------------------------------------------ -->
    <script src="asset/js/jquery-3.6.0.min.js"></script>
    <script>
        /*
        let option ={  //이미지 주소 딕셔너리
        		'1':'asset/img/1231_메인2/1231_메인클릭이미지_가족.jpg',
        		'2':'asset/img/1231_메인2/1231_메인클릭이미지_회사.jpg',
        		'3':'asset/img/1231_메인2/1231_메인클릭이미지_학생.jpg',
        		'11':'asset/img/1231_메인2/1231_메인클릭이미지_엄마.jpg',
        		'12':'asset/img/1231_메인2/1231_메인클릭이미지_아빠.jpg',
        		'13':'asset/img/1231_메인2/1231_메인클릭이미지_할머니.jpg',
        		
        		'21':'asset/img/1231_메인2/1231_메인클릭이미지_야근.jpg',
        		'22':'asset/img/1231_메인2/1231_메인클릭이미지_회식.jpg',
        		'23':'asset/img/1231_메인2/1231_메인클릭이미지_어지럼증.jpg',
        		
        		'31':'asset/img/0101-메인이미지/0101-아연.jpg',
        		'32':'asset/img/0101-메인이미지/0101-알로에.jpg',
        		'33':'asset/img/0101-메인이미지/0101-비타민B.jpg',
        		
        		'111':'asset/img/0101-메인이미지/0101-감미놀렌산.jpg',
        		'112':'asset/img/0101-메인이미지/0101-클로렐라.jpg',
        		'113':'asset/img/0101-메인이미지/0101-스피루리나.jpg',
        		
        		'121':'asset/img/0101-메인이미지/0101-쏘팔메토.jpg',
        		'122':'asset/img/0101-메인이미지/0101-홍삼.jpg',
        		'123':'asset/img/0101-메인이미지/0101-보스웰리아.jpg',
        		
        		'131':'asset/img/0101-메인이미지/0101-글루코사민.jpg',
        		'132':'asset/img/0101-메인이미지/0101-보스웰리아.jpg',
        		'133':'asset/img/0101-메인이미지/0101-칼슘.jpg',
        		홍삼,비타민B,프로폴리스 추가해야됨
        		
        		'211':'asset/img/0101-메인이미지/0101-밀크씨슬.jpg',
        		'212':'asset/img/0101-메인이미지/0101-비타민B.jpg',
        		'213':'asset/img/0101-메인이미지/0101-비타민C.jpg',
        		
        		'221':'asset/img/0101-메인이미지/0101-밀크씨슬.jpg',
        		'222':'asset/img/0101-메인이미지/0101-비타민C.jpg',
        		'223':'asset/img/0101-메인이미지/0101-로얄젤리.jpg',
        		
        		'231':'asset/img/0101-메인이미지/0101-셀레늄.jpg',
        		'232':'asset/img/0101-메인이미지/0101-철분.jpg',
        		'233':'asset/img/0101-메인이미지/0101-감마리놀렌산.jpg',
        		
        		'311':'',
        		'312':'',
        		'313':'',
        		'321':'',
        		'322':'',
        		'323':'',
        		'331':'',
        		'332':'',
        		'333':'',
        		}
        */
        
        var cnt=0;
        var a='';
        function change(n){
            a=a+n;
            if(cnt==2){
                console.log(a)
                pageLoad('result1.jsp',a)
                a='';
                cnt=3;
            }else if(cnt<2){
            $('#op1').attr('src', option[a+'1']).attr('alt',a+'1')
            $('#op2').attr('src', option[a+'2']).attr('alt',a+'2')
            $('#op3').attr('src', option[a+'3']).attr('alt',a+'3')
            cnt++;
            }
        }
        
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
                    window.scrollTo({top:'1900',behavior:"smooth"})
                    
                    let param = '';
                    
                    
                    
                    
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
    					dataType:'json',
    					data:'param='+param,
    					success:function(result){
    						console.log(result);
    						
    						//크롤링한 데이터는 result에 저장됨
    						//result에서 정보를 꺼내와서 웹페이지에 보여줄 정보를 html()안에 넣기 
    						//$('section.message').html(result);
    						$('section.message').html("<a href='#'>"+result+"</a>");
    						
    						
    						localStorage.setItem('data',result);
    					}
    				});
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
				selected = true;23
	    		console.log(s);
	    		//$('.message:nth-child(2)').remove();
	    		//$('.resultView').remove();
	            pageLoad('result1.jsp',s);
	            $('#card'+s).css('opacity','0.5');
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