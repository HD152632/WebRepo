<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body>
	<label>시드: <input type="text" name="number" id="max"></label><button onclick="randomNum()">랜덤 숫자 뽑기</button><br>
	<label>가로 길이: <input type="text" name="number" id="max"></label><br>
	<label>세로 길이: <input type="text" name="number" id="max"></label><br>
	
	<script type="text/javascript">
		function randomNum(){
			if(document.getElementById("max").value==""){
				document.getElementById("result").innerHTML="insert number";
			}
			else{
				var max=document.getElementById("max").value;
				var result = Math.floor(Math.random() * max) + 1;	
				
				document.getElementById("result").innerHTML="result : "+result;
			}
		}
	</script>
</body>
</html>