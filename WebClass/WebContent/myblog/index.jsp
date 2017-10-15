<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">	
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Minho's Blog</title>
    

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link href="/WebClass/css/index.css" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

    <script type="text/javascript" src="/WebClass/js/scroll.js"></script>
</head>

<body>
    <div id="home"></div>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand scroll" href="#home">Minho's Blog</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link scroll" href="#home">Home<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled scroll" href="#first">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled scroll" href="#second">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled scroll" href="#third">Favorites</a>
                    </li>
                    <%  
                		if(session.getAttribute("result") != null){
                    %>
                   	<li class="nav-item active">
                    	<a class="nav-link"><%= session.getAttribute("id")%>님</a>
                    </li>	
	                <li class="nav-item">
                    <form action="/WebClass/bloglogout" id="logoutForm" method="post">
	                    <a class="nav-link" href="#" onclick="document.getElementById('logoutForm').submit()" id="logout">Sign out</a>
                    </form>
                    </li>
                    <%
                		} else {
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="/WebClass/bloglogin" id="login">Sign in / Sign up</a>
                    </li>
                    <%
                		}
                    %>
                </ul>
            </div>
        </div>
    </nav>

    <header class="masthead">
        <div class="overlay">
            <div class="container">
                <br><br><br><br>
                <h1 class="display-1 text-white">Minho's Blog</h1>
                <a href="#first" class="scroll"> <img class="img-fluid rounded-circle" src="/WebClass/image/boy.png" alt="" width="150" height="150" id="png1"></a>
                <a href="#second" class="scroll"> <img class="img-fluid rounded-circle" src="/WebClass/image/contact.png" alt="" width="150" height="150" id="png2"></a>
                <a href="#third" class="scroll"> <img class="img-fluid rounded-circle" src="/WebClass/image/favorite.png" alt="" width="150" height="150" id="png3"></a>
            </div>
        </div>
    </header>

    <section class="section" id="first">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 order-2">
                    <div class="p-5">
                        <img class="img-fluid rounded-circle" src="/WebClass/image/boy.png" alt="">
                    </div>
                </div>
                <div class="col-md-6 order-1">
                    <div class="p-5">
                        <h2 class="display-4">Profile</h2>
                        <div class="contents">
                            <ul>
                                <li>홍민호 / Hongminho / MiNoS</li>
                                <li>March 15th, 2000 / Pisces</li>
                                <li>Blood type B</li>
                                <li>Right-Handed</li>
                                <li>Korean Student</li>
                                <li>Korea Digital Media High School</li>
                                <li>2nd grade, 6 class, No. 37</li>
                                <li>Trust</li>
                            </ul>
                        </div>
                    </div>
                </div>
			</div>
			<a href="#home" class="scroll"><img src="/WebClass/image/top.png" alt="" width="50" height="50"> </a>
			<a href="#second" class="scroll down"><img src="/WebClass/image/down.png" alt="" width="50" height="50"> </a>
		</div>
    </section>

    <section class="section" id="second">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div class="p-5">
                        <img class="img-fluid rounded-circle" src="/WebClass/image/contact.png" alt="">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="p-5">
                        <h2 class="display-4">Contact</h2>
                        <div class="contents">
                            <ul>
                                <li>Mobile : 010-6615-2181</li>
                                <li>E-mail : hong00315@naver.com</li>
                                <li>Kakao Talk : hong00315</li>
                                <li>Blog : http://cl4ustra.tistory.com</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <a href="#first" class="scroll"><img src="/WebClass/image/top.png" alt="" width="50" height="50"> </a>
            <a href="#third" class="scroll down"><img src="/WebClass/image/down.png" alt="" width="50" height="50"> </a>
        </div>
    </section>

    <section class="section" id="third">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 order-2">
                    <div class="p-5">
                        <img class="img-fluid rounded-circle" src="/WebClass/image/favorite.png" alt="">
                    </div>
                </div>
                <div class="col-md-6 order-1">
                    <div class="p-5">
                        <h2 class="display-4">Favorites</h2>
                        <div class="contents">
                            <ul>
                                <li>Family</li>
                                <li>Friends</li>
                                <li>Dahyun, Jennie</li>
                                <li>Computer Programming</li>
                                <li>Hamburger, Pork</li>
                                <li>Playing Game</li>
                                <li>Table Tennis</li>
                                <li>Web Hacking</li>
                                <li>Claw Machine Game</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <a href="#second" class="scroll"><img src="/WebClass/image/top.png" alt="" width="50" height="50"> </a>	
        </div>
    </section>

    <footer class="py-2 bg-dark">
        <div class="container">
            <p class="m=0 text-center text-white" id="bottom">Copyright &copy; Your Website 2017</p>
        </div>
    </footer>

</body>

</html>