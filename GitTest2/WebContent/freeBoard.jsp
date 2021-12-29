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
    display: flex;
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    justify-content: center;
    align-items: center;
    height: 100vh;
    /* width: 400px; */

    justify-content: space-between;/*(정렬).set1중심축기준_space-between간격*/
    align-items: center;/*(정렬).set2_교차축의 중앙에 정렬 수직*/
    margin: 0 auto;/*중앙정렬*/
    background-image: url('asset/img/배경/이미지a-1.png');
    background-size: cover;
}
    	#tbl{
    		height:600px;
    	}
    	#footer{
    		display:flex; flex-direction:column; min-height:40vh;
    	}
    	footer{
    	 	flex:1 auto;
    	}
        table{border-collapse: collapse; width: 800px;
        font-size: 18px; font-weight: 400;
        }
        table th{border-collapse: collapse; border-bottom:1px solid; text-align: center; 
            background-color: gray; color: honeydew;}
        table td{border-collapse: collapse; border-bottom:1px solid; text-align: center; }

    </style>
</head>
<body>
	 <%@include file="gnb.jsp" %>
<section id="tbl">
    <table>
        <thead>
            <tr>
                <th>글번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>등록일</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                    <a href="#">article_seq</a>
                </td>
                <td>
                    <a href="#">article_subjec</a>
                </td>
                <td>
                    <a href="#">user_id</a>
                </td>
                <td>
                    <a href="#">regdate</a>
                </td>

                </tr>
            <tr>
                <td>article_seq</td>
                <td>article_subject</td>
                <td>user_id</td>
                <td>regdate</td>
            </tr>
            <tr>
                <td>article_seq</td>
                <td>article_subject</td>
                <td>user_id</td>
                <td>regdate</td>
            </tr>
            <tr>
                <td>article_seq</td>
                <td>article_subject</td>
                <td>user_id</td>
                <td>regdate</td>
            </tr>
            <tr>
                <td>article_seq</td>
                <td>article_subject</td>
                <td>user_id</td>
                <td>regdate</td>
            </tr>
        </tbody>
    </table>
</section>
<section id="footer">

    <%@include file="footer.jsp" %>

</section>
</body>
</html>
