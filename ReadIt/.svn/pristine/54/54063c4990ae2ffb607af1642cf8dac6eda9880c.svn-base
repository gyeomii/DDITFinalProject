<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%> 
<head>
	<title>AI 키차이 인식</title>
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
    <!-- END: Vendor CSS-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
    

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/bordered-layout.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/semi-dark-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/horizontal-menu.css">
    <!-- END: Page CSS-->
</head>
<!-- Basic Carousel And Optional Carousel start -->
 <section id="basic-carousel">
     <div class="row">
         <div class="col-8">
             <div class="card">
                 <div class="card-header">
                     <h4 class="card-title">AI 키차이 인식</h4>
                 </div>
                 <div class="card-body">
                     <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                         <div class="carousel-indicators">
                             <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                             <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2" id="family"></button>
                             <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                             <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
                             <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
                             <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5" aria-label="Slide 6" ></button>
                         </div>
                         <div class="carousel-inner">
                             <div class="carousel-item active">
                                 <img src="<%=request.getContextPath()%>/resources/carousal/carousal1.png" class="d-block w-100" alt="First slide" />
                             </div>
                             <div class="carousel-item">
                                 <img src="<%=request.getContextPath()%>/resources/carousal/carousal2.png" class="d-block w-100" alt="Second slide" />
                             </div>
                             <div class="carousel-item">
                                 <img src="<%=request.getContextPath()%>/resources/carousal/carousal3.png" class="d-block w-100" alt="Third slide" />
                             </div>
                             <div class="carousel-item">
                                 <img src="<%=request.getContextPath()%>/resources/carousal/carousal4.png" class="d-block w-100" alt="Forth slide" />
                             </div>
                             <div class="carousel-item">
                                 <img src="<%=request.getContextPath()%>/resources/carousal/carousal5.png" class="d-block w-100" alt="Fifth slide" />
                             </div>
                             <div class="carousel-item">
                                 <img src="<%=request.getContextPath()%>/resources/carousal/carousal6.png" class="d-block w-100" alt="Sixth slide" />
                             </div>
                         </div>
                         <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                             <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                             <span class="visually-hidden">Previous</span>
                         </button>
                         <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                             <span class="carousel-control-next-icon" aria-hidden="true"></span>
                             <span class="visually-hidden">Next</span>
                         </button>
                     </div>
                 </div>
             </div>
         </div>
         <div class="col-4 justify-content-center text-center" style="border-right: solid 1px;">  
				  <video id="video" width="450" height="300" autoplay></video> 
				  <button id="snap" class="btn btn-primary" onclick="uploadCanvasToServer()">사진촬영</button>
				  <!-- <button id="snap" class="btn btn-primary" onclick="moveCarousel()">버튼클릭</button> -->
			</div>
     </div>
     
		<div class="row" style="margin-top: 10px;">
			<div class="col-6 justify-content-center" style="border-right: solid 1px;"> 
				<canvas id="canvas" width="900" height="600" ></canvas>
			</div>
		</div>
 </section>





<form action="${webPath }/admin/bookManage/getStupidBookNum.do" id="stupidForm" method="get">
	<input type="hidden" name="stupidNumArr"  id="stupid" value="">
	<input type="hidden" name="camNum"  id="cam" value="">
</form>
<script
  src="https://code.jquery.com/jquery-3.6.1.min.js"
  integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
  crossorigin="anonymous"></script>
    <!-- BEGIN: Vendor JS-->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
    
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->
 <script>
 function moveCarousel(){
	 var familyBtn = $('#family');
	 familyBtn.click();
 }
 </script>
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
		     url : "http://127.0.0.1:5000/height",
		     type : "post",
		     contentType : false,
		     processData : false,
		     data : fd,
		     dataType : "text",
		     success : function(res) {
				console.log(res);
				if(res == "family"){
					moveCarousel();
				}
	        	//stupidForm.submit();
		     },
		     error : function(errorMessage) {
		    	 Swal.fire({
	                 icon: 'warning',
	                 title: '파일 전송 실패 ',
	                 text: ' 관리자에게 문의바랍니다.'
	              })
		        console.log("Error" + errorMessage);
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