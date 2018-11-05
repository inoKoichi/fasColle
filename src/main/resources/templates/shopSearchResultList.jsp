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
<script
	src="//maps.googleapis.com/maps/api/js?key=AIzaSyDrIqThCDiemtJQpkCehrTc36BoU7T0WEs&libraries=places,geometry&lang=ja"></script>

<title>検索画面</title>
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
	<div class="row">
		<div class="col-sm-6 col-xs-3">
			<div id="map-canvas"></div>
		</div>
		<div class="panel-group col-sm-5 col-xs-3" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#collapse3">グループ1</a>
					</h4>
				</div>
				<div id="collapse3" class="panel-collapse collapse in">
					<div class="panel-body">内容</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#collapse4">グループ2</a>
					</h4>
				</div>
				<div id="collapse4" class="panel-collapse collapse">
					<div class="panel-body">内容</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#collapse5">グループ3</a>
					</h4>
				</div>
				<div id="collapse5" class="panel-collapse collapse">
					<div class="panel-body">内容</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		var mapDiv = document.getElementById("map-canvas");

		var map = new google.maps.Map(mapDiv, {
			center : new google.maps.LatLng(35.7100, 139.8107),
			zoom : 11,
			clickableIcons : false,
		});

		// Marker
		// 地図をダブルクリックした時に拡大するか否かを指定（デフォルト）
		var marker = new google.maps.Marker({
			map : map,
			position : new google.maps.LatLng(35.71, 139.8107),
		});
	</script>

</body>
</html>