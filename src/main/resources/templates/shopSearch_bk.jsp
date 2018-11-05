<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta name="viewport"
	content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/bootstrap-grid.css" th:href="@{/css/bootstrap-grid.css}" rel="stylesheet"></link>
<link href="css/navbar.css" th:href="@{/css/navbar.css}" rel="stylesheet"></link>
<script src="js/jquery-3.2.1.min.js" th:src="@{/js/jquery-3.2.1.min.js}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/popper.min.js" th:src="@{/js/popper.min.js}"></script>

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
	<p>住所や駅名、目印などで検索できます。</p>
	<form onsubmit="return false;">
		<input type="text" value="渋谷" id="address">
		<button type="button" value="検索" id="map_button">検索</button>
	</form>
	<!-- 地図を表示させる要素 -->
	<div class="map_box01">
		<div id="map-canvas" style="width: 500px; height: 350px;"></div>
	</div>
	<p>
		マーカーのある位置の<br> 緯度 <input type="text" id="lat" value=""><br> 経度 <input
			type="text" id="lng" value=""><br> 地図上をクリックするとマーカーを移動できます。
	</p>
	<!-- APIを取得 -->
	<script
		src="//maps.googleapis.com/maps/api/js?key=AIzaSyDrIqThCDiemtJQpkCehrTc36BoU7T0WEs&libraries=places,geometry&lang=ja"></script>

	<script>
		var mapDiv = document.getElementById("map-canvas");

		var map = new google.maps.Map(mapDiv, {
			center : new google.maps.LatLng(35.7100, 139.8107),
			zoom : 11,
			clickableIcons : false,
		});

		// Marker
		// 地図をダブルクリックした時に拡大するか否かを指定（デフォルト）
		var getMap = (function() {
			function codeAddress(address) {
				// google.maps.Geocoder()コンストラクタのインスタンスを生成
				var geocoder = new google.maps.Geocoder();
				// 地図表示に関するオプション
				var mapOptions = {
					zoom : 16,
					mapTypeId : google.maps.MapTypeId.ROADMAP
				};
				// 地図を表示させるインスタンスを生成
				var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
				//マーカー変数用意
				var marker = new google.maps.Marker({
					map : map,
					position : new google.maps.LatLng(35.71, 139.8107),
				});
				// geocoder.geocode()メソッドを実行
				geocoder.geocode({
					'address' : address
				},
				function(results, status) {
					// ジオコーディングが成功した場合
					if (status == google.maps.GeocoderStatus.OK) {
						// 変換した緯度・経度情報を地図の中心に表示
						map.setCenter(results[0].geometry.location);
						//☆表示している地図上の緯度経度
						document.getElementById('lat').value = results[0].geometry.location.lat();
						document.getElementById('lng').value = results[0].geometry.location.lng();
						// ジオコーディングが成功しなかった場合
					} else {
						console.log('Geocode was not successful for the following reason: '+ status);}
				});
				// マップをクリックで位置変更
				map.addListener('click', function(e) {
					getClickLatLng(e.latLng, map);
				});
				function getClickLatLng(lat_lng, map) {
					//☆表示している地図上の緯度経度
					document.getElementById('lat').value = lat_lng.lat();
					document.getElementById('lng').value = lat_lng.lng();

					// マーカーを設置
					marker.setMap(null);
					marker = new google.maps.Marker({
						position : lat_lng,
						map : map
					});
					// 座標の中心をずらす
					map.panTo(lat_lng);
				}
			}

			//inputのvalueで検索して地図を表示
			return {
				getAddress : function() {
					// ボタンに指定したid要素を取得
					var button = document.getElementById("map_button");

					// ボタンが押された時の処理
					button.onclick = function() {
						// フォームに入力された住所情報を取得
						var address = document.getElementById("address").value;
						// 取得した住所を引数に指定してcodeAddress()関数を実行
						codeAddress(address);
					}

					//読み込まれたときに地図を表示
					window.onload = function() {
						// フォームに入力された住所情報を取得
						var address = document.getElementById("address").value;
						// 取得した住所を引数に指定してcodeAddress()関数を実行
						codeAddress(address);
					}
				}

			};

		})();
		getMap.getAddress();
	</script>
</body>
</html>