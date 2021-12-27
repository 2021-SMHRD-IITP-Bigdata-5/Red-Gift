<%@page import="vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<body lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>스레기</title>
    <style>
@font-face{font-family: 'NanumSquareLight'; src:url('asset/font/NanumSquareL.otf')}
@font-face{font-family: 'NanumSquare'; src:url('asset/font/NanumSquare.otf')}
@font-face{font-family: 'NanumSquareBold'; src:url('asset/font/NanumSquareB.otf')}
@font-face{font-family: 'NanumSquareExtraBold'; src:url('asset/font/NanumSquareEB.otf')}
        header{
        }
        body{
            display: block;
            align-items: center;
            overflow-x: hidden;
        }
        #banner{
            background-image: url('asset/banner01.jpg');
            height: 400px;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            padding: 100px 20px 5px 20px;
            
            color: #d4d4d4;
            font-family:'NanumSquareLight';
            font-size: 20px;
            font-weight: bold;
            margin-top: 0;
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
        .resultView>div>div{
            display: inline-block;
            width: 450px;
            height: 600px;
            background-color: gray;
        }
        .classView>div>div{
        	display: inline-block;
            width: 600px;
            height: 400px;
            background-color: gray;
        }
        .itemsView>div>div{
        	display: inline-block;
            width: 600px;
            height: 400px;
            background-color: gray;
        }

        input{
	        width:300px;
	        height:40px;
	        background-color: transparent;
	        border: none;
	        border-bottom: 1px sold rgb(0, 0, 0);
	        font-size:18px;
	        font-family: 'NanumSquare';
        }
        #sign{
			height:200px;        
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



    </style>
</head>
<body> 

	<%@include file="gnb.jsp" %>
    
        <div id="banner">
            <br>
            <h2 class="heading">우리 몸에 필요한 <br>영양성분 궁금하세요?</h2>
            <p class="intro">나만을 위한 맞춤영양제를 찾아보세요!<br>이미 000,000명이 추천받았습니다.</p>
        </div>
    
    <section class="message">
	
		<p>
		누구에게 선물하실 건가요?
		</p>
	
	</section>
    <section id="choiceSection">
        <div id="choiceArea">
            <div class="choice" onclick="change('1')">
                <img id="op1" src="#" alt="1">
                <p>선택1</p>
            </div>
            <div class="choice" onclick="change('2')">
                <img id="op2" src="#" alt="2">
                <p>선택1</p>
            </div>
            <div class="choice" onclick="change('3')">
                <img id="op3" src="#" alt="3">
                <p>선택1</p>
            </div>
        </div>
    </section>
    
    <%@include file="footer.jsp" %>
    <!-- ------------------------------------------------------------------------ -->
    <script src="asset/js/jquery-3.6.0.min.js"></script>
    <script>
        
        let option ={  //이미지 주소 딕셔너리
            '1':'#',
            '2':'#',
            '3':'#',
            '11':'#',
            '12':'',
            '13':'',
            '21':'',
            '22':'',
            '23':'',
            '31':'',
            '32':'',
            '33':'',
            '111':'',
            '112':'',
            '113':'',
            '121':'',
            '122':'',
            '123':'',
            '131':'',
            '132':'',
            '133':'',
            '211':'',
            '212':'',
            '213':'',
            '221':'',
            '222':'',
            '223':'',
            '231':'',
            '232':'',
            '233':'',
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
            $('#op1').attr('src', option[a]).attr('alt',a+'1')
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
                success: function(data){  
                    $('#choiceSection').after(data)
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