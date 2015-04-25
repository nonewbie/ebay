<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="UTF-8"%>
<%@ page import="vo.User" %>
<%@ page import="dao.*" %>
<%@ page import="factory.DaoFactory" %>
<%@ page import="java.util.Date" %>
<% request.setCharacterEncoding("GBK"); %>
<html>
<head><title>shop_login</title></head>
<body>
<h1>登陆操作</h1>
<%!	// 定义若干个数据库的连接常量
	User user = null;
%>
<%
	user = DaoFactory.getIUserInstance().findByUserNameandPasswd(request.getParameter("user_name"),request.getParameter("password"));
%>

<%
	if(user!=null){	// 登陆成功
%>
		<jsp:forward page="login_success.jsp">
			<jsp:param name="user_name" value="<%=user.getUserName()%>"/>
			<jsp:param name="user_sex" value="<%=user.getSex() %>"/>
		</jsp:forward>
<%
	} else {		// 登陆失败
%>
		<jsp:forward page="login_failure.jsp"/>
<%
	}
%>
</body>
</html>