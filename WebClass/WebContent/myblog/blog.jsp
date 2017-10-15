<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="org.dimigo.vo.UserVO" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"><!-- 반응형 -->
	<title>blog</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
     <style>
     div.container{
     padding-top:30px;
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
     <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  </head>
  <body>
  
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">HOME</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="poem.html">poem <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="cstudy.html">c</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="htmlPractice.html">html</a>
      </li>
    </ul>
    <%UserVO user = (UserVO) session.getAttribute("user");
	if(user == null){ %>
		<form class="form-inline my-2 my-lg-0" id="loginForm">
      	<input type="button" value="login" id="btnlogin" class="btn btn-outline-success my-2 my-sm-0" onClick="location.href='/WebClass/jsp/login.jsp';">
    	</form>
	<%}else{ %>
		<form class="form-inline my-2 my-lg-0" id="loginForm" action="/WebClass/logout" method="post">
    	<p id="name"><%=user.getName() %>님<p>
      <button id="btnlogout" class="btn btn-outline-success my-2 my-sm-0" type="submit">logout</button>
    </form>
	<%} %>
    
  </div>
</nav>
   <div class="container">
    <h1>2632</h1>
    <p>
    	
     </p>
    </div>

   <!-- 모달창 -->
   <div class="modal" id="myModal">
      <div class="modal-dialog" role="document">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title">login result</h5>
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body">
               <p></p>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-secondary"
                  data-dismiss="modal">Close</button>
            </div>
         </div>
      </div>
   </div>
   
  
  </body>
 </html>