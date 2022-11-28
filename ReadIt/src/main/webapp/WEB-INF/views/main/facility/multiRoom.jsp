<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
<meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
<meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="PIXINVENT">
<title>Swiper - Vuexy - Bootstrap HTML admin template</title>
<link rel="apple-touch-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/swiper.min.css">
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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-swiper.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-flat-pickr.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-flat-pickr.css"><!-- END: Page CSS-->
<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
<!-- END: Custom CSS-->
</head>
{}

<body>
	<input type="hidden" name="mem_id" value="${loginUser.mem_id }" />
	<div class="container">
		<div class="d-flex align-items-center">
			<div style="margin-top: 20px;">
				<h1 style="display: inline;">&nbsp;🎧 시설공간</h1> 
				<span class="text-success" style="display: inline; font-size: 19px; font-weight: bold;"> &nbsp; - 멀티미디어실</span>
			</div>
		</div>
			<br>
		<div class="card">
			<div class="row">
				<div class="col-sm-6 col-6 d-flex justify-content-center" style="position: relative;">
                    <div class="col-xl-6 col-12">
                        <div class="card">
                            <div class="card-body">
                                  <br>
                                  <h1>  📖  이용률</h1>  
                                  <br>
                                  <canvas class="horizontal-bar-chart-ex chartjs" data-height="180"></canvas>
                            </div>
                        </div>
                    </div>
				</div>

				<div class="col-sm-6 col-6 d-flex justify-content" style="position: relative;">
					<div>
						<br> <br>
						<div>
							<h1>  📖  이용규칙</h1>
						</div>
							<br>
						<div>
							&nbsp;✔️ 멀티미디어 이용시간은 2시간입니다.
						</div>
							<br>
						<div>
							&nbsp;✔️ 멀티미디어 이용시간은 2시간입니다.
						</div>
							<br>
						<div>
							&nbsp;✔️ 멀티미디어 1,2실은 개인석으로 총 32개의 좌석이 있습니다
						</div>
							<br>
						<div>
							&nbsp;✔️ 멀티미디어 3,4실은 단체석으로 총 4개의 좌석이 있습니다
						</div>
							<br>
						<div>
							&nbsp;✔️ 규칙 위반시 쫒겨나요.
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="card" style="margin-top: 70px;">
			<div class="row" style="position: relative; display: flex; justify-content: center; align-items: center; margin-top: 30px;">
				<p class="card-text" style="font-size: 20px; text-align: center; margin-top: 30px; margin-bottom: 40px;"> 💁‍♂️ 예약하시려면 해당 멀티미디어실의 예약 버튼을 눌러주세요.</p>
					<div class="col-md-4 col-lg-4" style="padding: 30px">
						<div class="card" style="border: 1px solid;">
							<img class="card-img-top" src="<%=request.getContextPath()%>/resources/images/multi4.jfif" alt="Card image cap" style="display: block; margin: auto; width:; height: 300px;">
							<div class="card-body">
								<h4 class="card-title" style="margin-bottom: 0px; font-weight: bold;">1️⃣ 멀티미디어 1실</h4>
								<c:if test="${loginUser != null}">
									<a href="#" class="btn btn-outline-primary waves-effect" id="btnOne" onclick="OpenWindow('multiOneDetail.do','1',900,720)" style=" float: right;">예약</a>
								</c:if>

								<c:if test="${loginUser == null}">
									<a href="#" class="btn btn-outline-primary waves-effect" style="margin-left: 300px;" id="btnOne" onclick="doAlert()" style=" float: right;">예약</a>
								</c:if>
							</div>
						</div>
					</div>
				
				<div class="col-md-4 col-lg-4" style="padding: 30px">
					<div class="card" style="border: 1px solid">
						<img class="card-img-top" src="<%=request.getContextPath()%>/resources/images/multi1.jfif" alt="Card image cap" style="display: block; margin: auto; width:; height: 300px;">
						<div class="card-body">
							<h4 class="card-title" style="margin-bottom: 0px; font-weight: bold;">2️⃣ 멀티미디어 2실</h4>
							<c:if test="${loginUser != null}">
								<a href="#" class="btn btn-outline-primary waves-effect" id="btnOne" onclick="OpenWindow('multiTwoDetail.do','2',900,700)"style=" float: right;">예약</a>
							</c:if>

							<c:if test="${loginUser == null}">
								<a href="#" class="btn btn-outline-primary waves-effect" style="margin-left: 300px;" id="btnOne" onclick="doAlert()"style=" float: right;">예약</a>
							</c:if>
						</div>
					</div>
				</div>
			</div>

			<div class="row" style="display: flex; justify-content: center; align-items: center">
				<div class="col-md-6 col-lg-4" style="padding: 30px">
					<div class="card" style="border: 1px solid">
						<img class="card-img-top" src="<%=request.getContextPath()%>/resources/images/multi3.png" alt="Card image cap" style="display: block; margin: auto; width:; height: 300px;">
						<div class="card-body">
							<h4 class="card-title" style="margin-bottom: 0px; font-weight: bold;">3️⃣ 멀티미디어 3실</h4>
							<c:if test="${loginUser != null}">
								<a href="#" class="btn btn-outline-primary waves-effect" id="btnOne"  onclick="OpenWindow('multiThreeDetail.do','3',900,800)"style=" float: right;">예약</a>
							</c:if>
							
							<c:if test="${loginUser == null}">
								<a href="#" class="btn btn-outline-primary waves-effect" style="margin-left: 302px;" id="btnOne" onclick="doAlert()"style=" float: right;">예약</a>
							</c:if>
						</div>
					</div>
				</div>
			
				<div class="col-md-6 col-lg-4" style="padding: 30px">
					<div class="card" style="border: 1px solid">
					<img class="card-img-top" src="<%=request.getContextPath()%>/resources/images/multi2.jpg" alt="Card image cap" style="display: block; margin: auto; width:; height: 300px;">
						<div class="card-body">
							<h4 class="card-title" style="margin-bottom: 0px; font-weight: bold;">4️⃣ 멀티미디어 4실</h4>
							<c:if test="${loginUser != null}">
								<a href="#" class="btn btn-outline-primary waves-effect" id="btnOne"  onclick="OpenWindow('multiFourDetail.do','4',900,800)"style=" float: right;">예약</a>
							</c:if>

							<c:if test="${loginUser == null}">
								<a href="#" class="btn btn-outline-primary waves-effect" style="margin-left: 302px;" id="btnOne" onclick="doAlert()"style=" float: right;">예약</a>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	
	
	

<script>
	function doAlert() {
		Swal.fire({
            icon: 'error',
            title: '이용불가.',
            text: '로그인이 필요한니다. 로그인 페이지로 이동합니다.'
         }).then(function(){
       	  parent.location.href = "http://localhost/readit/common/loginForm.do";
         })
	}

	/* <c:if test="${result eq 'true'}">
		window.onload = function(){ Swal.fire({
	        icon: 'success',
	        title: '예약성공.',
	        text: '예약이 완료되었습니다.'
	     }).then(function(){
	    	 window.opener.location.reload();
				 window.close();
	     })
		 }
	</c:if>

	<c:if test="${result eq 'false'}">
		window.onload = function(){ 
			 Swal.fire({
	           icon: 'error',
	           title: '예약 불가.',
	           text: '이미 예약된 정보가 있습니다.'
		 	}).then(function(){
	      		  window.location.href ="http://localhost/readit/main/facilitySpace/multiOneDetail.do";
			  	})
		 }
	</c:if> */
</script>
	
	
<!-- END: Content-->
<div class="sidenav-overlay"></div>
<div class="drag-target"></div>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/charts/chart.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/resources/js/common.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/chart-chartjsForMH2.js"></script>

<script>
	$(window).on('load', function() {
         if (feather) {
                		feather.replace({
                    	width: 14,
            	        height: 14
                	});
     	}mh("${webPath}");
    })
</script>

</body>