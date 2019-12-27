<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.ac.green.dbcp.dao.*" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	MyDAO dao = MyDAO.getInstance();
	
	int result = dao.writeImg("e:/car.gif");
	out.println("결과:"+result);
%>
</body>
</html>


