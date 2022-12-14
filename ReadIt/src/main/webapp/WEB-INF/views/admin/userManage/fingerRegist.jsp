<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <title>관리자 지문등록</title>
    <link rel="apple-touch-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/charts/apexcharts.css">
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
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/app-chat-list.css">
    
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-sweet-alerts.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/sweetalert2.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu-modern  navbar-floating footer-static  " data-open="click" data-menu="vertical-menu-modern" data-col="" style="overflow-x: hidden">

    <!-- BEGIN: Content-->
<!--         <div class="content-wrapper container-xxl p-0"> -->
        <div class="content-wrapper ">
            <div class="content-header row">
                <div class="content-header-left col-md-9 col-12 mb-2">
                    <div class="row breadcrumbs-top">
                        <div class="col-12" style="text-align: center; margin-top: 15px; margin-bottom: -15px;">
                            <h2 class="content-header-title float-start mb-0" >지문 등록</h2>
                        </div>
                         <div class="divider divider-success">
		           			<div class="divider-text" style="padding: 0px;"></div>
		        		</div>
		        		
                    </div>
                    <div class="avatar avatar-xs" style="margin-left: 170px;">
<%--                         <img src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/portrait/small/avatar-s-20.jpg"  alt="avatar"> --%>
                        <img src="<%=request.getContextPath()%>/${admin.mem_img}" style="width: 160px;  height: 200px;"  alt="avatar">
                        
                    </div>
                </div> 	
               
            </div>
            <div class="content-body">
<!--                 <div class="row match-height"> -->
                <div class="row">

                    <!-- Payment Card -->
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
<!--                                 <form action="fingerModifyForRegist.do" role="form" class="form" name="registForm" method="post" enctype="multipart/form-data"> -->
                                <form id="registForm" name="registForm" method="post" enctype="multipart/form-data" action="<%=request.getContextPath()%>/admin/userManage/registForm.do">
                                    <div class="row">
                                        <div class="col-md-6 col-12 mb-1">
						                    	<span class="badge badge-light-secondary" style="margin-bottom: 5px;">이름</span>
												<input type="text" class="form-control" id="readonlyInput" readonly="readonly" value="${admin.mem_name }">
												<input type="hidden" class="form-control" id="readonlyInput" readonly="readonly" value="${admin.mem_id }" name="mem_id">
	                					</div>	
                                        <div class="col-md-6 col-12 mb-1">
						                    	<span class="badge badge-light-secondary" style="margin-bottom: 5px;">부서</span>
												<input type="text" class="form-control" id="readonlyInput" readonly="readonly" value="${admin.dp_name }">
	                					</div>
                                        <div class="col-md-6 col-12 mb-1">
						                    	<span class="badge badge-light-secondary" style="margin-bottom: 5px;">직책</span>
												<input type="text" class="form-control" id="readonlyInput" readonly="readonly" value="${admin.ad_position }">
	                					</div>
                                        <div class="col-md-6 col-12 mb-1">
						                    	<span class="badge badge-light-secondary" style="margin-bottom: 5px;">연락처</span>
												<input type="text" class="form-control" id="readonlyInput" readonly="readonly" value="${admin.mem_phone }">
	                					</div>
                                        <div class="col-md-6 col-12 mb-1">
						                    	<span class="badge badge-light-secondary" style="margin-bottom: 5px;">파일등록</span>
						                    	<div class="col-lg-6 col-md-12">
                                            		<label for="formFileMultiple" class="form-label">선택한 관리자에 해당하는 지문파일을 등록하세요.</label>
                                            		<input class="form-control" type="file" id="imgFile" name="imgFile">
                                        		</div>
	                					</div>
                                        <div class="d-grid col-6">
<!--                                             <button type="button" class="btn btn-primary" onclick="regist_go();">등록완료</button> -->
<!--                                             <button type="button" class="btn btn-primary" onclick="regist_go();">등록완료</button> -->
                                            <button type="submit" id="registGo" class="btn btn-primary">등록완료</button>
                                        </div>
                                        <div class="d-grid col-6">
                                            <button type="button" class="btn btn-danger" onclick="window.close();">취소</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!--/ Payment Card -->
                </div>
			

            </div>
        </div>
    <!-- END: Content-->

    <div class="sidenav-overlay"></div>
<!--     <div class="drag-target"></div> -->


    <!-- BEGIN: Vendor JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
<%--     <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/charts/apexcharts.min.js"></script> --%>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/extensions/ext-component-sweet-alerts.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/sweetalert2.all.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
<%--     <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/cards/card-advance.js"></script> --%>
    <!-- END: Page JS-->

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
    
    <script type="text/javascript">
//     $('#registGo').on('click', function(){
//     	Swal.fire({
//     		title:'지문등록이 완료되었습니다.',
//     		icon:'success'
//     	}).then((result)=>{
//     		window.close();
//     	})
// 	});
    
//     	$('#registForm').submit({
<%--     		url: '<%=request.getContextPath()%>/admin/userManage/registForm.do', --%>
//     		onSubmit: function(param){
//     			return ($(this).form('validate'));
//     		},
//     		success: function(data){
//     			if(data == "success"){
//     				alert("지문정보가 등록되었습니다.");
//     				window.close();
//     			}
//     		},
//     		error: function(error){
//     			alert("실패");
//     		}
//     	})
//     });
    </script>
<!--     <script type="text/javascript"> -->
<!--     	function regist_go(){ -->
<!-- //     		var file = $('input[name="file"]'); -->
<!-- //     		console.log(file); -->
    		
<!--     		$("form[role='form']").submit(); -->
<!--     	} -->
<!--     </script> -->
</body>
<!-- END: Body-->

</html>