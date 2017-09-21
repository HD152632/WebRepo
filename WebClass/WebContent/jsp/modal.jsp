<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="modal" id="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">ddd</h5>
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
	
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>

	<script>
     $(document).ready(function(){
        $('#loginForm').submit(function(event){
           // ìëì¼ë¡ submitëë ê±¸ ë§ê¸°
           event.preventDefault();
           
           // id,pwê° ê°ì ¸ì¤ê¸°
           // document.getElementById("id").value
           var id = $('#id').val();
           var pw = $('#pw').val();
           console.log(id,pw);   
           
           // ìë²ë¡  post ì ì(ajax)
         $.post("http://httpbin.org/post",
               {"id":id, "pw":pw},
               function(data){
                  var myModal =$('#myModal');
                  myModal.modal();
                  myModal.find('.modal-body').text(data.form.id + ' hello');
               });
               
        });
     });
     
     // ê°ë¨íê² íê¸°
     $(function(){
        
     });
     
     </script>