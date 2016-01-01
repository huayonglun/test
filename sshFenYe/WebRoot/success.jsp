<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    成功了 <br>
    
    <table border=1 width="400">
    	<tr>
    		<td>序號</td>
    		<td>書名</td>
    		<td>作者</td>
    		<td>操作</td>
    	</tr>
    		<c:forEach items="${list }" var="b" varStatus="state">
    			<tr>
    			<td>${state.count}</td>
    			<td>${b.bookname }</td>
    			<td>${b.author }</td>
    			<td>操作</td>
    			</tr>
    		</c:forEach>
    	
    </table>
    
    <a href="book_insert.jsp">插入圖書</a>
  </body>
</html>
