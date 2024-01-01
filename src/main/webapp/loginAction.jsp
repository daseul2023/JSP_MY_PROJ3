<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="member.MemberDAO"%>
<%@ page import ="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class = "member.Member" scope="page" />
<jsp:setProperty name="member" property ="id" />
<jsp:setProperty name="member" property ="password" />


<%
	String id = (String)   session.getAttribute("id");
	String role = (String) session.getAttribute("role");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<h1> 로그인 폼 페이지 </h1>
	<hr>
	<p />
	
	<%
		if (id == null){   
	%>
	
	<form method = "post" action = "login.us">
		<table>
			<tr><td> ID : </td> 
				<td> <input type="text" name = "id"> </td> 
			</tr>
			<tr><td> password : </td> 
				<td> <input type="password" name = "password">  </td> 
			</tr>
			<tr>
				<td colspan = "2" align = "center"> <input type="submit" value="로그인"> </td> 
			</tr>
			
		
		</table>
	
	</form>
	
	<p /> <a href="http://Localhost:8181/JSP_MY_PROJ3"> 홈으로 </a>

	<%
		}else {           
	%>
		
		<%= id %> 님 로그인이 성공되었습니다. 축하합니다. <p />
		당신의 권한은 <%= role %>입니다.
	
		<a href = "logout.us"> 로그아웃 </a>
		
	<%
	
	}
	
	%>
</body>
</html>