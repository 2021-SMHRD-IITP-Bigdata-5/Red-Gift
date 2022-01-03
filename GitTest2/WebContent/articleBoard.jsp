<%@page import="java.util.List"%>
<%@page import="vo.CommunityVO"%>
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
	    
    	background-image: url('asset/img/배경/대체-3.jpg');
   		-webkit-background-size: cover;
   		-webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
	}
   	#tableArea{
   		display:flex;
   		align-items: center;
        flex-direction:column;
   		height:600px;
   		/*background-image: url('asset/img/배경/대체-3.jpg');
   		-webkit-background-size: cover;
   		-webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;*/
        padding: 25vh 10vw 0px 10vw;
        width: 100%;
        height: 90vh;
   	}
	#tableArea> *{
	opacity:0.9;
	font-family: 'NanumSquareLight';
	}
	
	table{
		border-collapse: collapse; width: 900px;
		font-size: 18px; font-weight: 400;
	}
	table th{
		border-collapse: collapse; border-bottom:0px solid; text-align: center; 
	    background-color: #c9c9c9; color: honeydew; height:50px; 
	}
	table td{
		border-collapse: collapse; border-bottom:0px solid; text-align: center; 
		height:35px; background-color:#f7f7f7;
	}
	.subjectCol{
		width:500px;
	}

	.pageIndex{
		display: flex;
		justify-content: space-between;
		align-items: center;
	}
	li{
		display: inline-block;
		background-color: transparent;
		list-style: none;
		padding: 5px 5px 5px 5px;
	}
	li.current{
		font-weight:bold;
	}
	td>a, li>a{
		text-decoration: none;
		color:black;
	}
	select{
		height:40px;
		width:60px;
		border:0px;
	} 
	input{
		height:40px;
		width:200px;
		border:0px;
	}
	button{
		height:40px;
		width:100px;
		border:0px;
		background-color:#c9c9c9;
		color:white;
	}


    </style>
</head>
<body>
	 <%@include file="gnb.jsp" %>
	 <%
	 int currentPageNo;
	 
	 CommunityVO vo = new CommunityVO();
	 currentPageNo = (int)request.getAttribute("currentPageNo");
	 int firstPageNo = (int)request.getAttribute("FirstPageNo");
	 int lastPageNo = (int)request.getAttribute("LastPageNo");
	 int pageSize = (int)request.getAttribute("PageSize");
	 int totalPage = (int)request.getAttribute("totalPage");
	 @SuppressWarnings({"unchecked"})
	 List<CommunityVO> arr = new ArrayList<>((List<CommunityVO>) request.getAttribute("arr"));
	 
	 //자바스크립트 최대한 안써보기
	 //
	 //1. 현재페이지를 항상 가운데 두고 계속 변하는 페이지리스트
	 //2. 다음리스트로 넘어갈때까지 리스트가 변하지 않고 현재페이지가 움직이는 페이지리스트
	 //1이 쉬워보이는데 2가 보편적인...
	 
	 %>
	 
<section id="tableArea">
	
	현재페이지번호<%=currentPageNo %>
    <table>
        <thead>
            <tr>
                <th>글번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>등록일</th>
                <th>조회수</th>
            </tr>
        </thead>
        <tbody>
        <% for (CommunityVO i : arr){  %>
            <tr>
                <td class="seqCol">
                    <a href="#"><%=i.getArticle_seq()%></a>
                </td>
                <td class="subjectCol">
                    <a href="#"><%=i.getArticle_subject()%></a>
                </td>
                <td class="idCol">
                    <a href="#"><%=i.getUser_id()%></a>
                </td>
                <td class="dateCol">
                    <a href="#"><%=i.getReg_date()%></a>
                </td>
 				 <td class="viewCol">
                    <a href="#"><%//i.getView_Count()%></a>
                </td>
 				
                </tr>
            <tr>
        <%} %>    
  
        </tbody>
    </table>
    <div class="pageIndex">
	    <ul>
		    <%if(currentPageNo<=pageSize){%>
		    	<li>이전</li>
		    <%}else{ %>
		    	<li><a href="getBoard.do?pageNo=<%=firstPageNo-1%>">이전</a></li>
		    <%} %>
		    
    	<%for(int i=1; i<=lastPageNo; i++){ %>
		    <%if(i==currentPageNo){ %>	    
		    	<li class='current'><%=i%></li>
		    <%}else if(i<=lastPageNo){ %>	    
		    	<li><a href="getBoard.do?pageNo=<%=i%>"><%=i%></a></li>
		    <%}else{ %>
		    	<li><%= i %></li>
		    <%} %>
	    <%} %>   
	    	
	    	<%if(lastPageNo==totalPage){%>
		    	<li>다음</li>
		    <%}else{ %>
		    	<li><a href="getBoard.do?pageNo=<%=lastPageNo+1%>">다음</a></li>
		    <%} %>
	    </ul>
    </div>
    <div class="searchInput">
		<select>
			<option value="all" selected> 전체 </option>
			<option value="title">제목</option>
			<option value="content">내용</option>
			<option value="userId">작성자</option>
		</select>
			<input type="text" name="keyword"/>
		<button onclick="search()">검색</button>
		
		<button type="button" onclick="location.href='articleWrite.jsp'">글쓰기</button>
	</div>
    
    
</section>
<section id="footer">

   

</section>
</body>
</html>
