<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/bootstrap-grid.css" th:href="@{/css/bootstrap-grid.css}" rel="stylesheet"></link>
<link href="css/navbar.css" th:href="@{/css/navbar.css}" rel="stylesheet"></link>
<script src="js/jquery-3.2.1.min.js" th:src="@{/js/jquery-3.2.1.min.js}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/popper.min.js" th:src="@{/js/popper.min.js}"></script>

<title>MyPage画面</title>
<style>
#map-canvas {
	width: 600px;
	height: 600px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">FassColle</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="shopSearchResultList">Search Regist List</a></li>
				<li><a href="shopSearch">Search</a></li>
				<li><a href="myPage">My Page</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</nav>

<!--  	<form class="form-horizontal" th:action="myPage" th:action="@{/myPage}" th:method="put"> -->
	<form class="form-horizontal" th:action="@{/myPage/update}" th:object="${myPageForm}" th:method="post" >
	<fieldset>
			<legend >マイプロフィール</legend>
			<div class="form-group">
				<label for="inputDefault" class="col-lg-2 control-label">ニックネーム</label>
				<div class="col-lg-10">
 					<input type="text" class="form-control" id="userName" th:value="*{user.userName}">
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail" class="col-lg-2 control-label">Email</label>
				<div class="col-lg-10">
					<input type="text" class="form-control" id="mailAddress" placeholder="Email" th:value="*{user.mailAddress}">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-lg-2 control-label">Password</label>
				<div class="col-lg-10">
					<input type="password" class="form-control" id="password" th:value="*{user.password}">
				</div>
			</div>
<!-- 			<div class="form-group">
				<label for="textArea" class="col-lg-2 control-label">自己紹介</label>
				<div class="col-lg-10">
					<textarea class="form-control" rows="3" id="selfDetail" ></textarea>
					<span class="help-block">A longer block of help text that breaks onto a new line and may
						extend beyond one line.</span>
				</div>
			</div> -->
			<div class="form-group">
				<div class="col-lg-10 col-lg-offset-2">
					<button type="submit" class="btn btn-primary">登録</button>
				</div>
			</div>
		</fieldset>
	</form>
</body>
</html>