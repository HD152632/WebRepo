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