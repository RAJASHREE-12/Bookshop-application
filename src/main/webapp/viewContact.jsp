<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allCss.jsp" %>
</head>
<body>
<%@include file="component/navbar.jsp" %>
<<<<<<< HEAD
<%
if (user == null){
	session.setAttribute("InvalidMsg","Login Please..");
	response.sendRedirect("login.jsp");
}
%>
=======
>>>>>>> 40f928e672fb890c2efc623c71ce8cdee193d0db

</body>
</html>