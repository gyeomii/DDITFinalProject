<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<!DOCTYPE html>
<html class="loading"  data-textdirection="ltr">
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
      <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-flat-pickr.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    
</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">



    <!-- BEGIN: Content-->
    <div class="app-content content " style="padding-top: 0px; font-family: 'Noto Sans KR', sans-serif;">
        <div class="content-wrapper container-xxl p-0">
            <div class="content-body">
                <div class="row">
                    <div class="col-12">
                        <ul class="nav nav-pills mb-2" style="padding-top: 40px; padding-bottom: 20px;">
                            <!-- account -->
                           <li class="nav-item">
                                <a class="nav-link active" onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/status.do','M920100','ifr')">
                                    <i data-feather="lock" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">?????? ??????</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/big.do','M920101','ifr')">
                                    <i data-feather="bell" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">????????????</span>
                                </a>
                            </li>
                        </ul>


			<!-- 	chart -->
                <section id="chartjs-chart">
                    <div class="row">
                        <!-- Horizontal Bar Chart Start -->
                        <div class="col-xl-6 col-12">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between align-items-sm-center align-items-start flex-sm-row flex-column">
                                        <h4 class="card-title" >????????? ?????????</h4> <span style="padding-left: 450px;">(?????? : ???)</span>
                                    <div class="header-right d-flex align-items-center mt-sm-0 mt-1">
                                    </div>
                                </div>
                                <div class="card-body" style="min-height: 425px;">
                                    <canvas class="horizontal-bar-chart-ex chartjs" data-height="400"></canvas>
                                </div>
                            </div>
                        </div>
                        <!-- Horizontal Bar Chart End -->

                        <!-- Polar Area Chart Starts -->
                        <div class="col-lg-6 col-12">
                            <div class="card" style="height: 485px;">
                                <div class="card-header" style="position: relative;">
                                    <h4 class="card-title">?????? ????????? ?????????</h4>
                                    <div style="text-align: right;">(?????? : ???)</div>
                                </div>
                                <div class="card-body">
                                    <canvas class="polar-area-chart-ex chartjs" data-height="350"></canvas>
                                </div>
                            </div>
                        </div>
                        <!-- Polar Area Chart Ends-->
       				 </div>
                </section>
                
                

			<!-- end chart -->

                        <!-- recent device -->
                        <div class="card">
                            <div class="card-header border-bottom">
                                <h4 class="card-title">?????? ?????? ??????</h4>
                            </div>
                            <div class="card-body my-2 py-25">
                                <div class="table-responsive">
                                <div style="text-align: right;">(?????? : ???)</div>
                                
                                    <table class="table table-bordered text-nowrap text-center">
                                        <thead>
                                            <tr>
                                                <th>??????</th>
                                                <th>??????</th>
                                                <th>??????</th>
                                                <th>????????????</th>
                                                <th>????????????</th>
                                                <th>????????????</th>
                                                <th>??????</th>
                                                <th>??????</th>
                                                <th>??????</th>
                                                <th>??????</th>
                                                <th>???</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                           	<c:forEach var="i" begin="0" end="10" step="1">
												<td>${numList[i] }</td>
											</c:forEach>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- / recent device -->
<!-- 				 	<div style="display: none;"> -->
<!--                         <table> -->
<%-- 				       <c:forEach var="entry" items="${entryList }" varStatus="status"> --%>
<!-- 						    <tr>       -->
<!-- 						      <td class="type"> -->
<%-- 								<c:if test="${entry.key eq '0'}"> ??????</c:if> --%>
<%-- 								<c:if test="${entry.key eq '1'}"> ??????</c:if>					       --%>
<%-- 								<c:if test="${entry.key eq '2'}"> ??????</c:if>					       --%>
<%-- 								<c:if test="${entry.key eq '3'}"> ????????????</c:if>					       --%>
<%-- 								<c:if test="${entry.key eq '4'}"> ????????????</c:if>					       --%>
<%-- 								<c:if test="${entry.key eq '5'}"> ????????????</c:if>					       --%>
<%-- 								<c:if test="${entry.key eq '6'}"> ??????</c:if>					       --%>
<%-- 								<c:if test="${entry.key eq '7'}"> ??????</c:if>					       --%>
<%-- 								<c:if test="${entry.key eq '8'}"> ??????</c:if>					       --%>
<%-- 								<c:if test="${entry.key eq '9'}"> ??????</c:if>					       --%>
<!-- 						      </td> -->
<%-- 						      <td class="values">${entry.value}</td> --%>
<!-- 						    </tr> -->
<%-- 					   </c:forEach> --%>
<!--                         </table> -->
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
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/charts/chart.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/charts/chart-chartjsForJY.js"></script>
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
	    	jy("${webPath}");
            
          
        })
    </script>
    <script>
    </script>

</body>
<!-- END: Body-->

</html>