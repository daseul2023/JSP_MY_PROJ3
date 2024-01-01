<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navba-header">
			<button type = "button" class="navbar-toggle collapsed"
				data-toggle ="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded ="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class ="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
		</div>
		<div class ="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role ="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li class="active"><a href="login.jsp">로그인</a></li>
					<li><a href="join.jsp">회원가입</a></li>
				</ul>
				</li>	
			</ul>
		</div>
	</nav>
	<div class = "container">
		<div class = "col-lg-4"></div>
		<div class = "col-lg-4">
			<div class = "jumbotron" style="padding-top: 20px;">
				<form method = "post" action = "loginAction.jsp">
					<h3 style ="text-align: center;">회원가입 화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="id" maxlength ="20">
											
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="password" maxlength ="20">
					</div>
					 <div class="form-group">
					     <label for="confirm-password">비밀번호 확인:</label>
					     <input type="password" id="confirm-password" name="confirm-password" required >
					      <span class="error" id="confirmPasswordError"></span>
					 </div>
					<div class="form-group">
						<input type="phone" class="form-control" placeholder="핸드폰번호" name="phone" maxlength ="20">
					</div>
						<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일" name="email" maxlength ="20">
					</div>
					<div class="form-group">
						<input type="address" class="form-control" placeholder="주소" name="addr" maxlength ="20">
					<input type = "submit" class="btn btn-primary form-control" value="회원가입">
				</form>
		</div>
		<div class = "col-lg-4"></div>
	
	</div>
</body>
</html>