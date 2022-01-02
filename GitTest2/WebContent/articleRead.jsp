<%@page import="vo.Pagination"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
	
	Pagination pp= new Pagination();
	pp.setTotalArticleCount(16);
	pp.setCurrentPageNo(2);
	
	System.out.println("페이지리스트시작"+pp.getFirstPageNo());
	System.out.println("페이지리스트"+pp.getPageSize());
	System.out.println("페이지리스트의 마지막페이지"+pp.getLastPageNo());
	System.out.println("토탈페이지"+pp.getTotalPageCount());
	System.out.println("현재페이지"+pp.getCurrentPageNo());
	System.out.println("윗글"+pp.getFirstArticleIndex());
	System.out.println("아랫글"+pp.getLastArticleIndex());
	%>
	
</body>
</html>