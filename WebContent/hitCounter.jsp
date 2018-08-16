<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>点击量统计</title>
</head>
<body>
	<h1>点击量统计</h1>
	<%
		Integer hitCount = (Integer)application.getAttribute("hitCounter");
		if(hitCount == null || hitCount == 0){
			out.println("欢迎首次访问页面");
			hitCount = 1;
		}else{
			out.println("欢迎再次访问页面");
			hitCount +=1;
		}
		application.setAttribute("hitCounter",hitCount);
	%>
	<p>页面访问量：<%= hitCount%>
</body>
</html>