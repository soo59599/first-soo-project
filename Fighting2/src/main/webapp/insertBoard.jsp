<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.List"%>
<%@ page import="com.springbook.biz.board.BoardVO"%>
<%@ page import="com.springbook.biz.boardimpl.BoardDAO"%>
<%@ page import="com.springbook.biz.user.UserVO" %>
<%
BoardVO board = (BoardVO) session.getAttribute("board");

%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>미니 프로젝트</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="login.jsp">castlejun</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#">나의 활동</a></li>
					<li><a href="#">개인 정보</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
							Login</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<p>
					<a href="#">회원가입</a>
				</p>
				<p>
					<a href="#">아이디 찾기</a>
				</p>
				<p>
					<a href="#">비밀번호 찾기</a>
				</p>
			</div>
			<div class="col-sm-8 text-center">
				<h1>새글 쓰기</h1>
				<form action="insertBoard.do" method="post">
				<input type="hidden" name="writer" value="${user.nickName }">
					<table border="1" width="600">
						<tr>
							<th width="150" bgcolor="whitesmoke" style="text-align: center;">제목</th>
							<td colspan="3"><input type="text" name="title"></td>
						</tr>
						<tr>
							<th bgcolor="whitesmoke" style="text-align: center;">작성자</th>
							<td colspan="3">${user.nickName }</td>
						</tr>
						<tr>
							<th bgcolor="whitesmoke" style="text-align: center;">내용</th>
							<td colspan="3"><textarea rows="10" cols="40" name="content"></textarea>
							</td>
						</tr>
						<tr>
						<td colspan="5">
						<input type="submit" value="글쓰기">
						</td>
						</tr>
					</table>
				</form>
			</div>
			<div class="col-sm-2 sidenav">
				<div class="well">
					<p>ADS</p>
				</div>
				<div class="well">
					<p>ADS</p>
				</div>
			</div>
		</div>
	</div>

	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>

</body>
</html>