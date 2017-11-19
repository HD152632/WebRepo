function randomNum(){
			
	var result = Math.floor(Math.random() * 100000000) + 1;	
	
	document.getElementById("seed").innerHTML=""+result;
}