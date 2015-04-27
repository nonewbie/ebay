<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("GBK"); %>
       
<%@page import="java.util.Date" %>
<%@page import="factory.DaoFactory" %>
<%@page import="vo.User" %>

<html>
<head>
<title>succeed register</title>
</head>
<body>
user name : <%=request.getParameter("user_name") %>
<% 
User user = new  User();

user.setUserName(request.getParameter("user_name"));
user.setPasswd(request.getParameter("password"));
user.setGrade(request.getParameter("grade"));
user.setBirth(request.getParameter("birth"));

user.setSex(request.getParameter("user_sex"));
user.setEmail(request.getParameter("user_email"));
user.setPhone(request.getParameter("phone"));
user.setRegisterTime(new Date());
user.setVisitTime(new Date());
request.getParameter("user_name");
try{
	if(DaoFactory.getIUserInstance().doCreate(user))
	{
%>
<jsp:forward page="login_success.jsp">
	<jsp:param name="user_name" value="<%=user.getUserName()%>"/>
	<jsp:param name="user_sex" value="<%=user.getSex()%>"/>
	<jsp:param name="birth" value="<%=user.getBirth() %>"/>
</jsp:forward>
 <%
 	}
	else{
 %>
 	<jsp:forward page="regist.jsp"/>
 <%
 	}
}catch(Exception e){
}
%>	
</body>
</html>