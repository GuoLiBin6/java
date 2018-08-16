<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>页面重定向</title>
</head>
<body>
	<h1>页面重定向</h1>
	<%
		//重定向到新地址
		String site = new String("http://www.baidu.com");
		response.setStatus(response.SC_MOVED_TEMPORARILY);
		response.setHeader("Location",site);
	%>
</body>
</html>