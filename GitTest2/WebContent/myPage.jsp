<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
    <style> background-image: url('img/배경/이미지a-3.jpg');
    *{
    margin: 0; padding: 0px; box-sizing: border-box;
    }
	
    
    /**/
        header{
            padding-left: 5%;
        }
        body{
            display: block;
            align-items: center;
            overflow-x: hidden;
            
        }
        section{
            padding-left: 5%;
            padding-bottom: 5%;
        }
         .navber{
            display: flex;
            justify-content:space-between;
            align-items: center; 
        }
        .menu>li{
            display: inline-block;
            background-color: transparent;
            list-style: none;
            text-decoration: none;          
            padding-left: 5px;
            padding-right: 5px;
        }
        .menu>li>a{
            text-decoration:none;
            color:black;
        }
        table{ border: 10px solid; border-collapse: collapse; width: 500px; height: 400px; margin-bottom:10px;
        justify-content: space-between;/*(정렬).set1중심축기준_space-between간격*/
    align-items: center;/*(정렬).set2_교차축의 중앙에 정렬 수직*/
    margin: 0 auto;/*중앙정렬*/
    /* font-size: 16px; */
    /*박스색*/
    background:mistyrose;
    color: darkslategray;
    padding: 50px;
    border: 10px solid white;/*테두리 적용*/
        
        }
        table td{ border: 1px solid;}
        #nutricard{width:250px; height: 250px;}
        #memo{height: fit-content;}
        
        
    </style>
</head>
<body>
    <%@include file="gnb.jsp" %>
<section>
    <table>
        <thead>
            <tr>
            <td>1
            </td> 
            <td>  
                2022/01/01 
                <button>수정</button>
                <button>삭제</button>
            </td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td id=nutricard><img src="asset/img/icon_img/영양제_아이콘 (2).png" width="80" height="80"> <!--영양제군 이미지--></td><td> 당시 만족도 정보</td>

            </tr>
            <tr>
                <td id="memo" colspan="2">메모사항     
                </td>
            </tr>
        </tbody>
    </table>
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
</body>
</html>