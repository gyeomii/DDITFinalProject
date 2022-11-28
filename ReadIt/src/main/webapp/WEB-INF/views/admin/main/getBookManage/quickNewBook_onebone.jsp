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
    <title>Dashboard ecommerce - Vuexy - Bootstrap HTML admin template</title>
    <link rel="apple-touch-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/charts/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/toastr.min.css">
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
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/dashboard-ecommerce.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/charts/chart-apex.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-toastr.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">


    <!-- BEGIN: Content-->
    <div class="app-content content ">
        <div class="content-wrapper container-xxl p-0">
            <div class="content-body">
                <!-- Dashboard Ecommerce Starts -->
                <section id="dashboard-ecommerce">

                    <div class="row match-height">
                    
                                            <!-- Revenue Report Card -->
                        <div class="col-lg-8 col-12">
                            <div class="card card-revenue-budget">
                                <div class="row mx-0">
                                    <div class="col-md-8 col-12 revenue-report-wrapper">
                                        <div class="d-sm-flex justify-content-between align-items-center mb-3">
                                        <h1>자동차 사진</h1>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/ Revenue Report Card -->
                    
                        <div class="col-lg-4 col-12">
                            <div class="row match-height">
                                <!-- Bar Chart - Orders -->
                                    <div class="card">
                                        <div class="card-body pb-50">
                                            <h3>차량번호</h3>
                                         <div class="avatar bg-light-primary me-1">
                                               
                                    	  </div>
                                            
                                            <h2 class="fw-bolder mb-1">346호2356</h2>
                                            <div id="statistics-order-chart"></div>
                                        </div>
                                    </div>
                                <!--/ Bar Chart - Orders -->


                    		   <!-- Bar Chart - Orders -->
                                    <div class="card">
                                    <div class="row">
                                      <div class="col-md-6 col-sm-6 col-12 mb-2 mb-md-0">
                            	 <div class="demo-inline-spacing">
                                        <button type="button" class="btn btn-warning">
                                            <i data-feather="star" class="me-25"></i>
                                            <span>Star</span>
                                        </button>
                                        <button type="button" class="btn btn-outline-primary" disabled>
                                            <i data-feather="home" class="me-25"></i>
                                            <span>Home</span>
                                        </button>
                                    </div>
                                        </div>
                                        
                                        <div class="col-md-6 col-sm-6 col-12 mb-2 mb-md-0">
 											<div class="card text-center">
				                                <div class="card-body">
				                                    <div class="avatar bg-light-info p-50 mb-1">
				                                        <div class="avatar-content">
				                                            <i data-feather="eye" class="font-medium-5"></i>
				                                        </div>
				                                    </div>
				                                    <h4 class="fw-bolder">예약확인</h4>
				                                </div>
				                            </div>
                                        </div>
                                       </div>
                                    </div>
                                <!--/ Bar Chart - Orders -->
                            </div>
                        </div>


                    </div>

                    <div class="row match-height">
                    
                    <!-- Developer Meetup Card -->
                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="card card-developer-meetup">
                                <div class="meetup-img-wrapper rounded-top text-center">
                                    <img src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/illustration/email.svg" alt="Meeting Pic" height="170" />
                                </div>
                                <div class="card-body">
                                    <div class="meetup-header d-flex align-items-center">
                                        <div class="meetup-day">
                                            <h6 class="mb-0">THU</h6>
                                            <h3 class="mb-0">24</h3>
                                        </div>
                                        <div class="my-auto">
                                            <h4 class="card-title mb-25">Developer Meetup</h4>
                                            <p class="card-text mb-0">Meet world popular developers</p>
                                        </div>
                                    </div>
                                    <div class="mt-0">
                                        <div class="avatar float-start bg-light-primary rounded me-1">
                                            <div class="avatar-content">
                                                <i data-feather="calendar" class="avatar-icon font-medium-3"></i>
                                            </div>
                                        </div>
                                        <div class="more-info">
                                            <h6 class="mb-0">Sat, May 25, 2020</h6>
                                            <small>10:AM to 6:PM</small>
                                        </div>
                                    </div>
                                    <div class="mt-2">
                                        <div class="avatar float-start bg-light-primary rounded me-1">
                                            <div class="avatar-content">
                                                <i data-feather="map-pin" class="avatar-icon font-medium-3"></i>
                                            </div>
                                        </div>
                                        <div class="more-info">
                                            <h6 class="mb-0">Central Park</h6>
                                            <small>Manhattan, New york City</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/ Developer Meetup Card -->
                    
                        <!-- Company Table Card -->
                        <div class="col-lg-8 col-12">
                            <div class="card card-company-table">
                                <div class="card-body p-0">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>도서번호</th>
                                                    <th>도서명</th>
                                                    <th>저자</th>
                                                    <th>출판사</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <div class="d-flex align-items-center">
                                                            <div class="avatar rounded">
                                                                <div class="avatar-content">
                                                                    <img src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/icons/book.svg" alt="Toolbar svg" />
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <div class="fw-bolder">Dixons</div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex align-items-center">
                                                           
                                                            <span>Technology</span>
                                                        </div>
                                                    </td>
                                                    <td class="text-nowrap">
                                                        <div class="d-flex flex-column">
                                                            <span class="fw-bolder mb-25">23.4k</span>
                                                        </div>
                                                    </td>
                                                    <td>$891.2</td>
                                                </tr>
                                              
                                                
                                                
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/ Company Table Card -->
                        
					</div>

                </section>
                <!-- Dashboard Ecommerce ends -->

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
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/charts/apexcharts.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/toastr.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/dashboard-ecommerce.js"></script>
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
</body>
<!-- END: Body-->

</html>