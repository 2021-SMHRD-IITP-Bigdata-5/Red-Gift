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
@font-face{font-family: 'NanumSquare'; src:url('asset/font/NanumSquare.otf')}
@font-face{font-family: 'NanumSquareBold'; src:url('asset/font/NanumSquareB.otf')}
@font-face{font-family: 'NanumSquareExtraBold'; src:url('asset/font/NanumSquareEB.otf')}

        body{
            display: block;
            align-items: center;
            overflow-x: hidden;
			/*display: grid;*/
        }
        #banner{
            background-image: url('asset/img/배경/배경이미-01.jpg');
            height: 400px;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            padding: 100px 200px 100px 20px;
            background-size: contain;
            background-repeat: no-repeat;/*이미지 반복방지*/
            
            background-color: white;
            /*color: #d4d4d4;*/
            font-family:'NanumSquareLight';
            font-size: 20px;
            font-weight: bold;
            margin-top: 0;
            
            color: rgb(125, 14, 14);
            font-size: 30px;
            font-weight: bold;
            margin-top: 0;
            text-align:right;
        }
        section{
            padding: 5% 0% 0% 0%;
            display: flex;
            justify-content: center;
        }
        .message{
        	margin: 0 0 0 0; 
        	font-size: 30px;
        	font-family: 'NanumSquareBold'; 
        	     	
        }
        .choice{
            display:inline-block;
            border-style: solid 1px;
            background-color: gray;
            width: 300px;
            height: 400px;
        }

		#op1,#op2,#op3{
			width:300px;
			height:400px;
		}
		#op1:hover,#op2:hover,#op2:hover{
		}
        .resultView>div>div {
            display: inline-block;
            width: 450px;
            height: 600px;
            /*background-color: gray;*/
        }
        .classView>div>div, .itemsView>div>div{
        	display: inline-block;
            width: 600px;
            height: 600px;
        }
        .resultView>div>div,.classView>div>div,.itemsView>div>div {
        	
		  box-shadow: 0 1rem 1rem hsl(0 0% 0% / 10%);
		  /*box-shadow: 0 2.5rem 2rem -2rem hsl(150 50% 20% / 20%);*/
		  background: hsl(0 0% 100%);
		  color: hsl(200 50% 20%);
		  line-height: 1.5;
		  /*display: flex;*/
		  place-items: center;
		  text-align: center;
		  /*padding: 2ch;*/
		  margin: 0 10px 0 0;
		  border-radius: 2ch;
		  border: 0px solid hsl(0 0% 85%);
		}
		.itemsView{
			margin-bottom: 50px;
		}
		/*.nutriClass{
			box-sizing: boarder-box;
			background-color:gray;
			color:black;
			padding: 0rem;
		}  
		
		.nutriClass>h2{
			background-color:gray;
			color:black;
			margin: 0;
			box-sizing:boarder-box;
			height:20%;
		}
    	.nutriClass>div{
    		height:40%;
    	}
    	*/
    	.nutriCard:hover{
    	}
    	.nutriCard{
    		overflow:hidden;
    		position:relative;
    	}
    	.cardHead{
    		width:100%;
    		height:500px;
    		border-radius:2ch 2ch 0 0;
    		background-image: url('asset/img/testimg2.png');
    		background-size:150%;
    		box-sizing:boarder-box;
    		-webkit-transition: .3s ease-in-out;
    	}
    	/* 헤드가 아니라 바디가 올라오게 바꿔야함.*/
    	.cardHead_up{
    		width:100%;
    		height:100px;
    		border-radius:2ch 2ch 0 0;
    		background-image: url('asset/img/testimg2.png');
    		background-size:150%;
    		box-sizing:boarder-box;
    		-webkit-transition: .3s ease-in-out;
    	}
    	
    	
   		.cardBody{
   			width:100%;
    		height:100px;
    		line-height:1;
    	
    	}
    	/*
    	.cardBody:hover{
    		overflow:scroll;
    		line-height:1;    	
    	}*/
    	.cardBody::-webkit-scrollbar {
    		display: none;
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
	        font-family: 'NanumSquare';
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
    /*직장인,수험생,부모님 이미지위에 글자쓰기*/
    .choice {
    position:relative;
    }
    .text1{
    position:absolute;
    left : 65px;
    margin-left:auto;
    bottom: 5px;
    font-size : 25px;
    }
    .text2 {
    position:absolute;
    left : 110px;
    bottom: 5px;
    font-size : 25px;
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
            <h2 class="heading">딱히 쓸말이 없어서 아무말이나 </h2>
            <p class="intro">써보는 중 커피 땡긴다 유자에스프레소</p>
        </div>
    
    <section class="message">
	
		<p>
		누구에게 선물하실 건가요?
		</p>
	
	</section>
    <section id="choiceSection">
        <div id="choiceArea">
            <div class="choice" onclick="change('1')">
                <img id="op1" src="asset/img/visit_img/직장인 (1).jpg" alt="1" width="300px" height="400px">
                <p class="text2">직장인</p>
            </div>
            <div class="choice" onclick="change('2')">
                <img id="op2" src="asset/img/visit_img/수험생 (1).jpg" alt="2" width="300px" height="400px">
                <p class="text1">수험생/고시생</p>
            </div>
            <div class="choice" onclick="change('3')">
                <img id="op3" src="asset/img/visit_img/부모님 (12).jpg" alt="3" width="300px" height="400px">
                <p class="text2">부모님</p>
            </div>
        </div>
    </section>
    
    <%@include file="footer.jsp" %>
    <!-- ------------------------------------------------------------------------ -->
    <script src="asset/js/jquery-3.6.0.min.js"></script>
    <script>
        
        let option ={  //이미지 주소 딕셔너리

        		'1':'asset/img/',
                '2':'asset/img/',
                '3':'asset/img/',
                '11':'asset/img/',
                '12':'asset/img/',
                '13':'asset/img/',
                '21':'asset/img/',
                '22':'asset/img/',
                '23':'asset/img/',
                '31':'asset/img/',
                '32':'asset/img/',
                '33':'asset/img/',
                '111':'asset/img/',
                '112':'asset/img/',
                '113':'asset/img/',
                '121':'asset/img/',
                '122':'asset/img/',
                '123':'asset/img/',
                '131':'asset/img/',
                '132':'asset/img/',
                '133':'asset/img/',
                '211':'asset/img/',
                '212':'asset/img/',
                '213':'asset/img/',
                '221':'asset/img/',
                '222':'asset/img/',
                '223':'asset/img/',
                '231':'asset/img/',
                '232':'asset/img/',
                '233':'asset/img/',
                '311':'asset/img/',
                '312':'asset/img/',
                '313':'asset/img/',
                '321':'asset/img/',
                '322':'asset/img/',
                '323':'asset/img/',
                '331':'asset/img/',
                '332':'asset/img/',
                '333':'asset/img/',
            
            }

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
                    window.scrollTo({top:'900',behavior:"smooth"})
                },
                error:function(){
                    alert("실패")
                }
            })
        }

    </script>
</body>
</html>