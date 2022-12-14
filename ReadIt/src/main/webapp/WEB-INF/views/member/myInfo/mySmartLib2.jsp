<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="reviewList" value="${reviewList}" />
<c:set var="rentCount" value="${dataMap.rentCount}" />
<c:set var="delayCount" value="${dataMap.delayCount}" />
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
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;700&display=swap" rel="stylesheet">
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
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/page-profile.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->
     <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    
</head>    
<body>
<div class="container" style="font-family: 'Noto Sans KR', sans-serif;">
	 <!-- BEGIN: content-->
	 <h1 class="text-primary" style="font-family: 'Noto Sans KR', sans-serif;">?????? ????????? ?????????</h1>
	 <br>
<!-- 	 /resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/cards/card-analytics.js -->
<!-- 	 ?????? ????????? ????????? ????????? ?????????????????? -->
	 <section id="analytics-card">
		<div class="row match-height" style="min-height: 395px;">
		    <!-- Support Tracker Card -->
			<div class="col-lg-4 col-12">
			    <div class="card">
			        <div class="card-header d-flex justify-content-between pb-0">
			            <h3 class="card-title">?????? ?????? ??????</h3>
			        </div>
			        <div class="card-body">
			            <div class="row">
			                <div class="col-sm-2 col-12 d-flex flex-column flex-wrap text-center">
			                    <h1 class="font-large-2 fw-bolder mt-2 mb-0">${rentCount + delayCount }</h1>
			                    <p class="card-text" style="font-size: 0.8em;">?????? ??????</p>
			                </div>
			                <div class="col-sm-10 col-12 d-flex justify-content-center">
			                    <div id="support-tracker-chart"></div>
			                </div>
			            </div>
			            <div class="d-flex justify-content-between" >
			                <div class="text-center">
			                    <p class="card-text mb-50">?????? ??????</p>
			                    <span class="font-large-1 fw-bold">${rentCount }???</span>
			                </div>
			                <div class="text-center">
			                    <p class="card-text mb-50">?????? ??????</p>
			                    <span class="font-large-1 fw-bold">3???</span>
			                </div>
			                <div class="text-center">
			                    <p class="card-text mb-50">?????? ??????</p>
			                    <span class="font-large-1 fw-bold">${delayCount }???</span>
			                </div>
			            </div>
			        </div>
			    </div>
			</div>
		<!--/ Support Tracker Card -->
		<!-- Average Sessions Card -->
		<div class="col-lg-8 col-12">
			<div class="card">
		    	<div class="card-body">
		        	<div class="col-lg-12 col-12 d-flex justify-content-between flex-column text-end order-lg-2 order-1">
		            	<div class="card-header d-flex justify-content-between pb-0">
		             		<h3 class="card-title">???????????? ????????????</h3>
		         		</div>
		                <div id="lib-chart"></div>
		            </div>
		    	</div>
		    </div>
		</div>
	</div>
                        <!--/ Average Sessions Card -->
<!--                     </div> -->

                    <div class="row match-height" style="min-height: 372px;">
                        <!-- Revenue Report Card -->
                        <!-- Transaction Card -->
                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="card card-transaction">
                                <div class="card-header">
                                    <div class="col-9">
                                    	<h4 class="card-title">??? ?????????</h4>
                                    </div>
                                	<div class="col-3" style="text-align: right;">
                             			<div onclick="goPage('${webPath}/main/myInfo/myPage','M050200','ifr')" ><a><i data-feather='plus-square'></i><small>?????????</small></a></div>
                       				</div>
                                </div>
                                <div class="card-body">
                                	<c:if test="${!empty pointList}">
		                                <c:forEach items="${pointList }" var="point">
		                                    <div class="transaction-item">
		                                        <div class="d-flex">
		                                            <div class="avatar bg-light-success rounded float-start">
		                                                <div class="avatar-content">
		                                                    <i data-feather="book" class="avatar-icon font-medium-3"></i>
		                                                </div>
		                                            </div>
		                                            <div class="transaction-percentage">
		                                                <h6 class="transaction-title">${point.pt_type}</h6>
		                                                <small><fmt:formatDate value="${point.pt_date}" pattern="yyyy-MM-dd" /></small>
		                                            </div>
		                                        </div>
		                                        <div class="fw-bolder text-success">+${point.pt_sum}</div>
		                                    </div>
		                                </c:forEach>
                                	</c:if>
                                	<c:if test="${empty pointList }">
                                			<div class="row justify-content-center">
	                                    		<div class="col ">
			                                    	<h4>??????????????? ????????????.</h4>
	                                    		</div>
	                                    	</div>
                                	</c:if>
                                </div>
                            </div>
                        </div>
                        <!--/ Transaction Card -->
                        <!--/ Revenue Report Card -->

                        <!-- Goal Overview Card -->
                        <div class="col-lg-4 col-12">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between align-items-center">
                                    <h4 class="card-title">???????????? ??????</h4>
                                    <i data-feather="help-circle" class="font-medium-3 text-muted cursor-pointer"></i>
                                </div>
                                <div class="card-body p-0">
                                    <div id="goal-overview-chart"></div>
                                    <div class="row border-top text-center mx-0">
                                        <div class="col-6 border-end py-1">
                                            <p class="card-text text-muted mb-0">?????? ??????</p>
                                            <h3 class="fw-bolder mb-0">25???</h3>
                                        </div>
                                        <div class="col-6 py-1">
                                            <p class="card-text text-muted mb-0">?????? ??????</p>
                                            <h3 class="fw-bolder mb-0">100???</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                         <!-- ??????????????? feed -->
                         <div class="col-lg-4 col-12">
                        <div class="card">
                                    <div class="card-body">
                                    	<div class="card-title">
                                    		<div class="row">
                                    			<div class="col-9">
			                                        <h5>?????? ??? ??????</h5>
                                    			</div>
                                    			<div class="col-3" style="text-align: right;">
			                                       <div onclick="goPage('${webPath}/main/myBook/reviewList.do','M050302','ifr')" ><a><i data-feather='plus-square'></i><small>?????????</small></a></div>
                                    			</div>
                                    		</div>
                                    	
	                                   	</div>
                                        <!-- twitter feed -->
                                        <c:if test="${!empty reviewList }">
	                                        <c:forEach items="${reviewList }" var="review">
		                                        <div class="profile-twitter-feed mt-1">
		                                            <div class="d-flex justify-content-start align-items-center mb-1">
		                                                <div class="avatar me-1">
		                                                    <img src="${review.book_imgurl }" alt="avatar img" height="40" width="40" />
		                                                </div>
		                                                <div class="profile-user-info" style="width: 300px;;">
		                                                    <h6 class="mb-0" style="text-align: left; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">${review.book_title }</h6>
		                                                    <a href="#">
		                                                        <small class="text-muted"><fmt:formatDate value="${review.rev_regdate }" pattern="yyyy-MM-dd" /></small>
		                                                        <i data-feather="check-circle"></i>
		                                                    </a>
		                                                </div>
		                                                <div class="profile-star ms-auto">
		                                                    <i data-feather="heart" class="font-medium-3"></i>
		                                                    <span class="align-middle text-muted">61</span>
		                                                </div>
		                                            </div>
		                                            <p class="card-text mb-50">${review.rev_content }</p>
		                                            <a href="#">
		                                                <small>#?????? #?????????</small>
		                                            </a>
		                                        </div>
	                                        </c:forEach>
	                                    </c:if>
	                                    <c:if test="${empty reviewList }">
	                                    	<div class="row justify-content-center">
	                                    		<div class="col ">
			                                    	<h4>?????? ?????? ????????? ????????????.</h4>
	                                    		</div>
	                                    	</div>
	                                    </c:if>
                                    </div>
                                </div>
                                </div>
                                <!--/ twitter feed card -->
                        <!--/ Goal Overview Card -->
                    </div>

                    <div class="row match-height"  style="min-height: 444px;">
                        <!-- Revenue Card -->
                        <div class="col-lg-8 col-12">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between align-items-center">
                                    <h4 class="card-title">?????? 6?????? ?????? ?????? ??????</h4>
                                    <i data-feather="settings" class="font-medium-3 text-muted cursor-pointer"></i>
                                </div>
                                <div class="card-body">
                                    <div class="d-flex justify-content-start mb-3">
                                        <div class="me-2">
                                            <h3 class="fw-bolder">
                                                <span class="text-primary">${loginUser.mem_id }??? ??????</span>
                                            </h3>
                                        </div>
                                        <div>
                                            <h3 class="fw-bolder">
                                                <span>?????? ?????? ??????</span>
                                            </h3>
                                        </div>
                                    </div>
                                    <div id="revenue-chart"></div>
                                </div>
                            </div>
                        </div>
                        <!--/ Revenue Card -->

                        <!-- Sales Polygon Chart Card -->
                        <div class="col-lg-4 col-12">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between align-items-start pb-1">
                                    <div>
                                        <h4 class="card-title mb-25">????????? ???????????? ??????</h4>
                                    </div>
                                    <i data-feather="more-vertical" class="font-medium-3 cursor-pointer"></i>
                                </div>
                                <div class="card-body">
                                    <div class="d-inline-block me-1">
                                        <div class="d-flex align-items-center">
                                            <i data-feather="circle" class="font-small-3 text-primary me-50"></i>
                                            <h6 class="mb-0">?????????</h6>
                                        </div>
                                    </div>
                                    <div class="d-inline-block">
                                        <div class="d-flex align-items-center">
                                            <i data-feather="circle" class="font-small-3 text-info me-50"></i>
                                            <h6 class="mb-0">?????????</h6>
                                        </div>
                                    </div>
                                    <div id="sales-chart"></div>
                                </div>
                            </div>
                        </div>
                        <!--/ Sales Polygon Chart Card -->
                    </div>
                </section>
</div>	 
	 
	 
	 <!-- END: content-->
	 

   <!-- Basic Tables end -->
	<%@ include file="../../common/index_js.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>

    <!-- BEGIN: Page Vendor JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/charts/apexcharts.min.js"></script>
    <!-- END: Page Vendor JS-->
 <!-- BEGIN: Vendor JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

<script src="<%=request.getContextPath()%>/resources/js/smart-library.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/member.js" ></script>
    <!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->

    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/page-profile.js"></script>
    <!-- END: Page JS-->



	
    <script>
        $(window).on('load', function() {
            if (feather) {
                feather.replace({
                    width: 14,
                    height: 14
                });
            }
          smartLibraryChart('<%=request.getContextPath()%>');
		  memberChart('<%=request.getContextPath()%>');
		  console.log("con: " + document.documentElement.scrollHeight);
        })
    </script>






