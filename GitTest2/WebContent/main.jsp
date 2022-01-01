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

			
		html,body{
			width: 100%;
			height: 100%;
		}
        body{
            display: block;
            align-items: center;
            overflow-x: hidden;
            background-color: white;
        }
        #banner{
            background-image: url('asset/img/배경/대체-3.jpg');
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            background-size: contain;
            padding: 100px 200px 100px 20px;
            width: 100%;
            height: 1100px;
            background-repeat: no-repeat;/*이미지 반복방지*/
            align:center;
            /*background-color: white;
            /*color: #d4d4d4;*/
            font-family:'NanumSquareLight';
            font-size: 20px;
            font-weight: bold;
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
        /*누구에게 선물하실건가요?*/
        .message{
        	margin: 0 0 0 0; 
        	/*font-size: 30px;*/
        	font-family: 'NanumSquareBold';
        	font-size: 50px;
        	     	
        }
        .choice{
            display:inline-block;
            border-style: solid 1px;
            background-color: gray;
            width: 300px;
            height: 400px;
        }
        /*차트바탕색*/
        .resultView>div>div{
            display: inline-block;
            width: 450px;
            height: 600px;
            background-color: #f7f1e3;
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
    /*직장인,수험생,부모님 이미지위에 글자쓰기*/
    /*.choice {
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
    }*/

    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.bundle.min.js" integrity="sha512-vBmx0N/uQOXznm/Nbkp7h0P1RfLSj0HQrFSzV8m7rOGyj30fYAOKHYvCNez+yM8IrfnW0TCodDEjRqf6fodf/Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css" integrity="sha512-/zs32ZEJh+/EO2N1b0PEdoA10JkdC3zJ8L5FTiQu82LR9S/rOQNfQN7U59U9BC12swNeRAz3HSzIL2vpp4fv3w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
</head>
<body> 


	<%@include file="gnb.jsp" %>
    
        <div id="banner">
            <br>
            <h2 class="heading">00000000000000000<br>111111111111</h2>
            <p class="intro">3333333333<br>4444444444</p>
        </div>
    
    <section class="message">
	
		<p>
		(문구들어가는자리)
		</p>
	
	</section>
    <section id="choiceSection">
        <div id="choiceArea">
            <div class="choice" onclick="change('1')">
                <img id="op1" src="asset/img/1231_메인2/1231_메인클릭이미지_가족.jpg" alt="1" width="300px" height="400px">
                <p class="text2"><!-- 직장인 --></p>
            </div>
            <div class="choice" onclick="change('2')">
                <img id="op2" src="asset/img/1231_메인2/1231_메인클릭이미지_회사.jpg" alt="2" width="300px" height="400px">
                <p class="text1"><!-- 수험생/고시생 --></p>
            </div>
            <div class="choice" onclick="change('3')">
                <img id="op3" src="asset/img/1231_메인2/1231_메인클릭이미지_학생.jpg" alt="3" width="300px" height="400px">
                <p class="text2"><!-- 부모님 --></p>
            </div>
        </div>
    </section>
    
    <%@include file="footer.jsp" %>
    <!-- ------------------------------------------------------------------------ -->
    <script src="asset/js/jquery-3.6.0.min.js"></script>
    <script>
        
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
        		/*홍삼,비타민B,프로폴리스 추가해야됨*/
        		
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