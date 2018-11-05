<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
<link href="css/bootstrap.min.css" th:href="@{/css/bootstrap.min.css}" rel="stylesheet"></link>
<link href="css/bootstrap-grid.css" th:href="@{/css/bootstrap-grid.css}" rel="stylesheet"></link>
<link href="css/navbar.css" th:href="@{/css/navbar.css}" rel="stylesheet"></link>
<script src="js/jquery-3.2.1.min.js" th:src="@{/js/jquery-3.2.1.min.js}"></script>
<script src="js/bootstrap.min.js" th:src="@{/js/bootstrap.min.js}"></script>
<script src="js/popper.min.js" th:src="@{/js/popper.min.js}"></script>
<script src="//maps.googleapis.com/maps/api/js?key=AIzaSyDrIqThCDiemtJQpkCehrTc36BoU7T0WEs&libraries=places,geometry&lang=ja"></script>
<title>検索画面</title>
<style>
#map-canvas {
	width: 600px;
	height: 600px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Brand</a>
			</div>

			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
					<li><a href="#">Link</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li><a href="#">Separated link</a></li>
							<li class="divider"></li>
							<li><a href="#">One more separated link</a></li>
						</ul></li>
				</ul>
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default btn-sm">Submit</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Link</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="row">
		<div class="col-sm-8 col-xs-6">
			<div id="map-canvas"></div>
		</div>
		<div class="col-sm-4 col-xs-2">
			col-sm-4
			<div class="col-sm-4">test1</div>
			<div class="col-sm-4">test2</div>
			<div class="col-sm-4">test3</div>
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