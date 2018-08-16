<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>自动刷新页面</title>
</head>
<body>
	<h1>自动刷新页面</h1>
	<%
		//设置每个五秒刷新一次
		response.setIntHeader("Refresh",5);
		Calendar calendar = new GregorianCalendar();
		
		String am_pm;
		int hour = calendar.get(calendar.HOUR);
		int minute = calendar.get(calendar.MINUTE);
		int second = calendar.get(calendar.SECOND);
		if(calendar.get(Calendar.AM_PM)==0){
			am_pm = "AM";
		}else{
			am_pm = "PM";
		}
		
		String CT = hour + ":"+minute+":"+second+" "+am_pm;
		out.println("当前时间："+CT);
		
	%>
	
</body>
</html>