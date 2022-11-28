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
    <title>Security - Vuexy - Bootstrap HTML admin template</title>
    <link rel="apple-touch-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

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
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">



    <!-- BEGIN: Content-->
    <div class="app-content content " style="padding-top: 0px;">
        <div class="content-wrapper container-xxl p-0">
            <div class="content-body">
                <div class="row">
                    <div class="col-12">
                         <ul class="nav nav-pills mb-2" style="padding-top: 40px; padding-bottom: 20px;">
                            <!-- account -->
                           <li class="nav-item">
                                <a class="nav-link " onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/location.do','M920401','ifr')">
                                    <i data-feather="lock" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">층별 위치</span>
                                </a>
                            </li>
                            <!-- security -->
                            <!-- billing and plans -->
                            <!-- notification -->
                            <li class="nav-item">
                                <a class="nav-link active" onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/locationCode.do','M920402','ifr')">
                                    <i data-feather="bell" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">분류 코드</span>
                                </a>
                            </li>
                            <!-- connection -->
<!--                             <li class="nav-item"> -->
<%--                                 <a class="nav-link" onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/small.do','M920102','ifr')"> --%>
<!--                                     <i data-feather="link" class="font-medium-3 me-50"></i> -->
<!--                                     <span class="fw-bold">소분류</span> -->
<!--                                 </a> -->
<!--                             </li> -->
                        </ul>

                        <!-- security -->

                        <!-- recent device -->
                        <div class="card" >
                        
                        	<div style="position:relative;">
                        		<div style="float:right; padding-right: 20px; padding-top:20px;">
                                  <button type="button" class="btn btn-success waves-effect waves-float waves-light" > 등록</button>
                                </div>
                        	</div>
                        	
<!--                             <div style="padding-top: 10px; padding-left: 10px;"> -->
<!--                                 <button type="button" class="btn btn-flat-primary">전체</button> -->
<!--                                         <button type="button" class="btn btn-flat-secondary">총류</button> -->
<!--                                         <button type="button" class="btn btn-flat-success">철학</button> -->
<!--                                         <button type="button" class="btn btn-flat-danger">종교</button> -->
<!--                                         <button type="button" class="btn btn-flat-warning">사회과학</button> -->
<!--                                         <button type="button" class="btn btn-flat-info">자연과학</button> -->
<!--                                         <button type="button" class="btn btn-flat-dark">기술과학</button> -->
<!--                                         <button type="button" class="btn btn-flat-success">예술</button> -->
<!--                                         <button type="button" class="btn btn-flat-danger">언어</button> -->
<!--                                         <button type="button" class="btn btn-flat-warning">문학</button> -->
<!--                                         <button type="button" class="btn btn-flat-info">역사</button> -->
<!--                             </div> -->
                            
                            
                          
                            <div class="card-body my-2 py-25">
                                <div class="table-responsive">
                                    <table class="table table-bordered text-nowrap text-center">
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th>분류 코드</th>
                                                <th>층</th>
                                                <th>섹터</th>
                                                <th>비고</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Del 15</td>
                                                <td>United States</td>
                                                <td>10, Jan 20</td>
                                                <td>2021 </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            	<div class="card-footer">
								<%@ include file="/WEB-INF/views/include/pagination.jsp"%>
								</div>
                        </div>
                        <!-- / recent device -->

                        <!--/ security -->
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

    <!-- BEGIN: Page Vendor JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/cleave.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/addons/cleave-phone.us.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/modal-two-factor-auth.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/page-account-settings-security.js"></script>
    <!-- END: Page JS-->
    
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
</body>
<!-- END: Body-->

</html>