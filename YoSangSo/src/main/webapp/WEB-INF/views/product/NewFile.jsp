<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>4 DIVs in a row</title>
	<style>
		.container {
			display: flex;
			flex-wrap: nowrap;
			justify-content: center;
			align-items: center;
		}

		.box {
			width: 100px;
			height: 100px;
			background-color: lightblue;
			margin: 10px;
		}
	</style>
</head>
<body>
	<div class="container">
		<% for(int i=0; i<4; i++) { %>
			<div class="box">Box <%= i+1 %></div>
		<% } %>
	</div>
</body>
</html>