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
        table{ border: 1px solid; border-collapse: collapse; width: 500px; height: 400px; margin-bottom:10px;}
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
                <td id=nutricard> 영양제군 이미지 </td><td> 당시 만족도 정보</td>

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