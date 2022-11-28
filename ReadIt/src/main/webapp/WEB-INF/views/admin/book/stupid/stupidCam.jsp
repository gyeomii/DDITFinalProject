<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%> 
<head>
<title>엉뚱도서 웹캠</title>
</head>

<div class="row" style="margin-top: 10px;">
	<div class="col-sm-5 justify-content-center text-center" style="border-right: solid 1px;">  
		  <video id="video" width="900" height="600" autoplay></video> 
		  <button id="snap" class="loginBtn btn btn-block" onclick="uploadCanvasToServer()">사진촬영</button>
	</div>
	<div class="col-sm-7 justify-content-center" style="border-right: solid 1px;"> 
		<canvas id="canvas" width="900" height="600" ></canvas>
	</div>
</div>
<form action="${webPath }/admin/bookManage/getStupidBookNum.do" id="stupidForm" method="get">
	<input type="hidden" name="stupidNumArr"  id="stupid" value="">
	<input type="hidden" name="camNum"  id="cam" value="">
</form>
<script
  src="https://code.jquery.com/jquery-3.6.1.min.js"
  integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
  crossorigin="anonymous"></script>
<script>
	// Grab elements, create settings, etc.
	var video = document.getElementById('video');
	// Get access to the camera!
	if(navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
	    // Not adding `{ audio: true }` since we only want video now
	    navigator.mediaDevices.getUserMedia({ video: true }).then(function(stream) {
	        //video.src = window.URL.createObjectURL(stream);
	        video.srcObject = stream;
	        video.play();
	    });
	}
</script>
<script>
	// Elements for taking the snapshot
	var canvas = document.getElementById('canvas');
	var context = canvas.getContext('2d');
	var video = document.getElementById('video');
	
	// Trigger photo take
	document.getElementById("snap").addEventListener("click", function() {
		
	});
</script>

<script>
	uploadCanvasToServer = function() {
		  context.drawImage(video, 0, 0, 900, 600);
		  const canvas = document.getElementById('canvas');
		  const imgBase64 = canvas.toDataURL('image/jpeg', 'image/octet-stream');
		  const decodImg = atob(imgBase64.split(',')[1]);
	
		  let array = [];
		  for (let i = 0; i < decodImg .length; i++) {
		    array.push(decodImg .charCodeAt(i));
		  }
	
		  const file = new Blob([new Uint8Array(array)], {type: 'image/jpeg'});
		  const filename = 'img.jpg';
		  
		  let fd = new FormData();
		  fd.append("file", file, filename);
		  $.ajax({
		     url : "http://127.0.0.1:5000/stupid",
		     type : "post",
		     contentType : false,
		     processData : false,
		     data : fd,
		     dataType : "text",
		     success : function(res) {
		    	 var arr = res.split(",");
				console.log(arr);
				var len = arr.length;
	    		stupidNum = ""
	    		camNum = arr[len-2];
	    		for(var i=0; i<len-2; i++){
	    			stupidNum += arr[i]+",";
	    		}
	    		console.log(stupidNum + " : " + camNum);
	    		$('#stupid').val(stupidNum);
	    		$('#cam').val(camNum);
	        	const stupidForm = $('#stupidForm');
	        	stupidForm.submit();
		     },
		     error : function(errorMessage) {
		        alert("파일 전송 실패, 관리자에게 문의바랍니다.")
		        console.log(errorMessage);
		     },
		  }).done(function(data) {
		     console.log(data);
		  });
		  
		};
</script>
<script>
// setInterval(function(){
// 	context.drawImage(video, 0, 0, 640, 480);
// 	uploadCanvasToServer();
// }, 1000);


</script>