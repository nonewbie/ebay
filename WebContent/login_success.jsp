<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("GBK"); %>
<html>
<head><title>Welcome to the shop </title></head>
<body>
<h1>登陆操作</h1>
<h2>登陆成功</h2>
<h2>欢迎<font color="red"><%=request.getParameter("user_name")%></font>光临！</h2>
<h3>sex:<%=request.getParameter("user_sex") %></h3>
<h4>date:<%=request.getParameter("birth") %></h4>

</body>
</html>