<%@page import="controller.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	//page scope
	UserVo vo0 = new UserVo();
	vo0.setNo(0L);
	vo0.setName("안대혁0");

	pageContext.setAttribute("vo", vo0);
%>
<body>
	<h1>Scope Test</h1>
	<p>
		찾는 순서는 page scope &gt; request scope &gt; session scope &gt; application scope
	</p>
	${vo.no} <br>
	
	<h3>page scope</h3>
	${pageScope.vo.no} <br>
	${pageScope.vo.name} <br>
	
	<h3>request scope</h3>
	${requestScope.vo.no} <br>
	${requestScope.vo.name} <br>
	
	<h3>session scope</h3>
	${sessionScope.vo.no} <br>
	${sessionScope.vo.name} <br>
	
	<h3>application scope</h3>
	${applicationScope.vo.no} <br>
	${applicationScope.vo.name} <br>
	
</body>
</html>