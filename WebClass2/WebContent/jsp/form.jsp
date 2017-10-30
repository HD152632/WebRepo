<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- ë°ìí -->

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<link rel="../css/footer.css">
<style>
div.container {
	padding-top: 30px;
	padding-bottom: 20px;
}
</style>
<script>
     function menu_over(e){
        e.setAttribute("class","nav-item active");      // li class="nav-item active"
     }
     function menu_out(e){
        e.setAttribute("class","nav-item");            // li calss="nav-item"
     }
     </script>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">HOME</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<%@ include file="menu.jsp" %>
			<form class="form-inline my-2 my-lg-0" id="loginForm">
				<input class="form-control mr-sm-2" type="text" placeholder="ID"
					aria-label="ID" id="id" required> <input
					class="form-control mr-sm-2" type="password" placeholder="PW"
					aria-label="PW" id="pw" required>
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
			</form>
		</div>
	</nav>
	<div class="container">
		<h1>Hello, Bootstrap</h1>
		<p>test</p>
	</div>

	<!-- ëª¨ë¬ì°½ -->
	<%@ include file="modal.jsp" %>
	<%@ include file="footer.jsp" %>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	

</body>
</html>