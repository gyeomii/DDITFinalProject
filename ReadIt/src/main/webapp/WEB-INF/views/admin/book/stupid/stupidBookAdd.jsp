<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<!-- BEGIN: Head-->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>엉뚱도서 추가</title>
    <link rel="apple-touch-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
	
	
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/select/select2.min.css">
    <!-- END: Vendor CSS-->

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
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-validation.css">
      <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-flat-pickr.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="horizontal-layout horizontal-menu  navbar-floating footer-static  "  data-menu="horizontal-menu" data-col="">



    <!-- BEGIN: Content-->
    <div class="app-content content " style="padding-top: 0px;">
        <div class="content-wrapper container-xxl p-0">
            <div class="content-body">
                <div class="row">
                    <div class="col-12">
                        <ul class="nav nav-pills mb-2" style="padding-top: 40px; padding-bottom: 20px;">
                            <!-- account -->
                           <li class="nav-item">
                                <a class="nav-link " onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/stupid.do','M920501','ifr')">
                                    <i data-feather="bell" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">엉뚱 현황</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/stupidBookDone.do','M920502','ifr')">
                                    <i data-feather='check-square' class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">엉뚱 완료</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/stupidBookAdd.do','M9205023','ifr')">
                                    <i data-feather="plus-square" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">엉뚱 추가</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" onclick="OpenWindow('heightCheck.do','키차이',1500,1050);">
                                    <i data-feather="plus-square" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">키차이</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" onclick="OpenWindow('fingerCheck.do','키차이',1500,1050);">
                                    <i data-feather="plus-square" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">지문인식</span>
                                </a>
                            </li>
                        </ul>
	
                        <!-- recent device -->
                        <div class="card">
                        	<div class="card-header">
								<h4>엉뚱도서 웹캠</h4>
                        	</div>
                        	<div class="card-body">
								<button class="btn btn-primary" onclick="OpenWindow('stupidCam.do','웹캠',1500,1000);">웹캠실행</button>
                        	</div>
                        </div>
                        <div class="card">
                            <div class="card-header border-bottom">
                                <h4 class="card-title">엉뚱도서 리스트</h4>
                            </div>
                            <div class="card-body my-2 py-25">
								<div class="row" style="text-align: center;">
									<div class="col-md-8" >
	                                	<label for="myFile">
											<img src="${webPath}/resources/images/aiface.PNG" id="preview" height="280px;">
										</label>
									</div>
                                    <form action="" id="myForm" enctype="multipart/form-data" >
										<input type="file" name="file"  id="myFile" value=""  style="display: none;">										       
									</form>
									<form action="${webPath }/admin/bookManage/getStupidBookNum.do" id="stupidForm" method="get">
										<input type="hidden" name="stupidNumArr"  id="stupid" value="">
										<input type="hidden" name="camNum"  id="cam" value="">
									</form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END: Content-->

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <!-- BEGIN: Vendor JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
    

    <!-- BEGIN: Page Vendor JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/cleave.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/addons/cleave-phone.us.js"></script>
        <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/charts/chart.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
        <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/charts/chart-chartjs.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/modal-two-factor-auth.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/page-account-settings-security.js"></script>
    <!-- END: Page JS-->
 	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>   
    <%@ include file="../../common/index_js.jsp" %>

    <script>
        $(window).on('load', function() {
            if (feather) {
                feather.replace({
                    width: 14,
                    height: 14
                });
            }
        })
    </script>
    <script>
    const cfile = document.querySelector("#myFile");
    const cmyForm = document.querySelector("#myForm");
    cfile.onchange = function(){
    	console.log(cfile.files);
    	let oneFile = cfile.files[0];
    	let fileReader = new FileReader();
    	fileReader.readAsDataURL(oneFile);
    	fileReader.onload = function(){
//     		console.log(fileReader.result);
            let carImg = document.getElementById("preview");
    		carImg.height = 280;
    		carImg.src = fileReader.result;
    		goAI();
    	}
    }
    </script>
        <script>
        var stupidNum = 0;
        var camNum = 0;
    function goAI(){
    	let formData = new FormData(cmyForm);
    	$.ajax({
    	type : 'post',
    	url : 'http://127.0.0.1:5000/stupid',
    	data : formData,
    	contentType: false,
        processData:false,
    	success : function(res){
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
	   		 Swal.fire({
	             icon: 'success',
	             title: '엉뚱도서 추가',
	          }).then(function(){
	        	const stupidForm = $('#stupidForm');
	        	stupidForm.submit();
	          })
    	},
    		
   		error:function(error){
		   		 Swal.fire({
		             icon: 'warning',
		             title: 'AI연결오류 ',
		          })
   		    }	
    	});
    }
    </script>
</body>
<!-- END: Body-->

</html>