<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="recmList" value="${dataMap.recmList }" />
<c:set var="bestList" value="${dataMap.bestList }" />
<c:set var="recenNotice" value="${dataMap.recenNotice }" />
<c:set var="recentVol" value="${dataMap.recentVol }" />

<!DOCTYPE html>
<html class="loading" data-textdirection="ltr">
<!-- BEGIN: Head-->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Swiper - Vuexy - Bootstrap HTML admin template</title>
    <link rel="apple-touch-icon" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/swiper.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/bordered-layout.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/semi-dark-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/horizontal-menu.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-swiper.css">
	 <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/charts/chart-apex.css">
	 
	 
<link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-sweet-alerts.css">
<link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/sweetalert2.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/css/mainCal.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

</head>

<!-- BEGIN: Body-->

<body>
	<div class="container" style="font-family: 'Noto Sans KR', sans-serif;">
                <section id="component-swiper-centered-slides">
                    <div class="card bg-transparent shadow-none">
                            <div class="swiper-centered-slides swiper-container p-1">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide rounded swiper-shadow" onclick="goPage('${webPath}/main/board/notice/list.do','M030100','ifr')" >
                                        <i data-feather="bell" style="color: gold" class="font-large-1"></i>
                                        <div class="swiper-text pt-md-1 pt-sm-50">????????????</div>
                                    </div>
                                    <div class="swiper-slide rounded swiper-shadow" onclick="goPage('${webPath}/main/info/use.do','M010200','ifr')" >
                                        <i data-feather="book-open" style="color: sienna" class="font-large-1"></i>
                                        <div class="swiper-text pt-md-1 pt-sm-50">????????? ??????</div>
                                    </div>
                                    <div class="swiper-slide rounded swiper-shadow" onclick="goPage('${webPath}/main/ai/recommand1.do','M040000','ifr')" >
                                        <i data-feather="radio" style="color: skyblue" class="font-large-1"></i>
                                        <div class="swiper-text pt-md-1 pt-sm-50">AI ??????</div>
                                    </div>
                                    <div class="swiper-slide rounded swiper-shadow" onclick="goPage('${webPath}/main/search/wishbookList/list.do','M020500','ifr')" >
                                        <i data-feather="star" style="color: hotpink" class="font-large-1"></i>
                                        <div class="swiper-text pt-md-1 pt-sm-50">??????????????????</div>
                                    </div>
                                    <c:if test="${loginUser != null }">
                                    <div class="swiper-slide rounded swiper-shadow" onclick="goPage('${webPath}/main/myInfo/mySmartLib.do','M050100','ifr')" >
                                        <i data-feather="home" style="color: yellowgreen" class="font-large-1"></i>
                                        <div class="swiper-text pt-md-1 pt-sm-50">???????????????</div>
                                    </div>
                                    </c:if>
                                    <c:if test="${loginUser eq null }">
                                    <div class="swiper-slide rounded swiper-shadow" onclick="doAlert();" >
                                        <i data-feather="home" style="color: yellowgreen" class="font-large-1"></i>
                                        <div class="swiper-text pt-md-1 pt-sm-50">???????????????</div>
                                    </div>
                                    </c:if>
                                <!-- Add Arrows -->
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                            </div>
                        </div>
                    </div>
                </section>
	<!-- 		 ??????????????? : ??? > ???????????? > ???????????????  -->
	<section id="basic-carousel">
     <div class="row">
         <div class="col-12">
             <div class="card">
                 <div class="card-header">
                     <h4 class="card-title">????????? / ?????? ??????</h4>
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
                                 <img src="${webPath}/resources/carousal/carousal01.png" class="d-block w-100" alt="First slide" />
                             </div>
                             <div class="carousel-item">
                                 <img src="${webPath}/resources/carousal/carousal02.png" class="d-block w-100" alt="Second slide" />
                             </div>
                             <div class="carousel-item">
                                 <img src="${webPath}/resources/carousal/carousal03.png" class="d-block w-100" alt="Third slide" />
                             </div>
                             <div class="carousel-item">
                                 <img src="${webPath}/resources/carousal/carousal04.png" class="d-block w-100" alt="Forth slide" />
                             </div>
                             <div class="carousel-item">
                                 <img src="${webPath}/resources/carousal/carousal05.png" class="d-block w-100" alt="Fifth slide" />
                             </div>
                             <div class="carousel-item">
                                 <img src="${webPath}/resources/carousal/carousal06.png" class="d-block w-100" alt="Sixth slide" />
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
     </div>
 </section>
	
   <!-- END: Content-->
   			<div class="row">
   				<div class="col-9">
		        <!-- coverflow effect swiper -->
                <section id="component-swiper-coverflow">
                    <div class="card">
                       	<div class="content-header row" style="padding-top: 20px; padding-left: 20px;">
								<div class="content-header-left col-12 mb-2">
									<div class="row breadcrumbs-top">
										<div class="col-10">
											<div>
												<img src="${webPath}/resources/img/line.png" style="width:30px; float:left; padding-left: 5px;" />
												<h2 class="content-header-title float-start mb-0" style="margin-left: 15px;">???????????????</h2>
											</div>
										</div>
										<div class="col-2" style="padding-left: 60px;">
											<div onclick="goPage('${webPath}/main/search/bestList.do','M020400','ifr')" ><a href="#"><i data-feather='plus-square'></i>?????????</a></div>
										</div>				
									</div>
								</div>
							</div>
                        <div class="card-body">
                            <div class="swiper-coverflow swiper-container">
                                <div class="swiper-wrapper">
                                   <c:forEach items="${bestList }" var="book">
	                                    <div class="swiper-slide" style="height:300px; width: 200px;"  onclick="goPage('${webPath}/main/search/bookDetail.do?book_no=${book.book_no}','M020310','ifr');" >
	                                        <img class="img-fluid"  id="${book.book_isbn }" src="${book.book_imgURL }" alt="banner" style=" height:300px;"/>
	                                    </div>
                                	</c:forEach>
                                </div>
                                <!-- Add Pagination -->
                                <div class="swiper-pagination"></div>
                            </div>
                        </div>
                    </div>
                </section>
                <!--/ coverflow effect swiper -->    
   				</div>
   				<div class="col-3">
   						<div class="card">
   						
   							<div class="content-header row" style="padding-top: 20px; padding-left: 20px;">
								<div class="content-header-left col-12">
									<div class="row breadcrumbs-top">
										<div class="col-10">
											<div>
												<img src="${webPath}/resources/img/line.png" style="width:30px; float:left; padding-left: 5px;" />
												<h2 class="content-header-title float-start mb-0" style="margin-left: 15px;">????????? ??????</h2>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="card-body" style=" padding-bottom: 0px; padding-top: 20px; height: 360px;">
								<div id="calendar">
								</div>
							</div>
						</div>
   				</div>
   			</div>
   			
                <div class="row">
                	<div class="col-7">
                		
	                <!-- Multiple Slides Per View swiper -->
	                <section id="component-swiper-multiple">
	                    <div class="card">
	                       <div class="content-header row" style="padding-top: 20px; padding-left: 20px;">
							<div class="content-header-left col-12 mb-2">
							<div class="row breadcrumbs-top">
									   <div class="col-10">
											<div>
											<img src="${webPath}/resources/img/line.png" style="width:30px; float:left; padding-left: 5px;" />
											<h2 class="content-header-title float-start mb-0" style="margin-left: 15px;">????????????</h2>
											</div>
										</div>
										<div class="col-2">
											<div onclick="goPage('${webPath}/main/search/recommandList.do','M020300','ifr')" ><a href="#"><i data-feather='plus-square'></i>?????????</a></div>
										</div>				
							</div>
							</div>
						</div>	
	                        <div class="card-body">
	                            <div class="swiper-multiple swiper-container">
	                                <div class="swiper-wrapper">
	                                         <c:forEach items="${recmList }" var="book">
	              			                      <div class="swiper-slide" style=" height:300px; width: 120px; text-align: center;"  onclick="goPage('${webPath}/main/search/bookDetail.do?book_no=${book.book_no}','M020310','ifr');" >
	                                      			  <img class="img-fluid"  id="${book.book_isbn }" src="${book.book_imgURL }" alt="banner" style=" height:300px;"/>
	                              			      </div>
                               			 	</c:forEach>
	                                </div>
	                                <!-- Add Pagination -->
	                                <div class="swiper-pagination"></div>
	                            </div>
	                        </div>
	                    </div>
	                </section>
                	
                	</div>
                	<div class="col-5">
                	    <!-- Donut Chart Starts-->
                        <div class="card" style="height: 410px;">
	                       <div class="content-header row" style="padding-top: 20px; padding-left: 20px;">
								<div class="content-header-left col-12 mb-2">
									<div class="row breadcrumbs-top">
									   <div class="col-9">
											<div>
											<img src="${webPath}/resources/img/line.png" style="width:30px; float:left; padding-left: 5px;" />
											<h2 class="content-header-title float-start mb-0" style="margin-left: 15px;">????????? ??????</h2>
											</div>
										</div>
										<div class="col-3" style="border-left-width: 15px; padding-left: 40px;">
											<div onclick="goPage('${webPath}/main/info/statistics.do','M010400','ifr')" ><a href="#"><i data-feather='plus-square'></i>?????????</a></div>
										</div>				
									</div>
								</div>
                                <div class="card-body">
                                    <canvas class="polar-area-chart-ex chartjs" data-height="260"></canvas>
                                </div>
							</div>	
                        </div>
                	</div>
                </div>
	
	
	<div class="row" style="font-family: 'Noto Sans KR', sans-serif;">
		<div class="col-6">
			<div class="card">
     		  <div class="content-header row" style="padding-top: 20px; padding-left: 20px;">
							<div class="content-header-left col-12 mb-2">
							<div class="row breadcrumbs-top">
									   <div class="col-10">
											<div>
											<img src="${webPath}/resources/img/line.png" style="width:30px; float:left; padding-left: 5px;" />
											<h2 class="content-header-title float-start mb-0" style="margin-left: 15px;">?????? ??????</h2>
											</div>
										</div>
										<div class="col-2">
											<div onclick="goPage('${webPath}/main/board/notice/list.do','M030100','ifr')" ><a href="#"><i data-feather='plus-square' ></i>?????????</a></div>
										</div>				
							</div>
							</div>
						</div>	
			<div class="table-responsive" style=" padding-bottom: 20px;">
					<table class="table table-bordered"  style="table-layout:fixed; text-align: center; border-color:white;">
						<tbody>
							<c:forEach items="${recenNotice }" var="notice" varStatus="status">
								<tr onclick="OpenWindow('${webPath}/main/board/notice/detail.do?from=list&notice_no=${notice.notice_no }','????????????',800,700);">
									<!-- <td>${((cri.page-1) * 20) + status.count}</td> --> <!-- 1?????? -->
<%-- 									<td>${status.count}</td> <!-- ?????? --> --%>
									<td style="width: 80%; text-align:left;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;">${notice.notice_title}</td>
<%-- 									<td style="text-align:left;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;">${notice.notice_writer}</td> --%>
									<td style="width: 20%"><fmt:formatDate value="${notice.notice_regdate }" pattern="yyyy-MM-dd" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
			</div>
			</div>
		</div>
		<div class="col-6">
			<div class="card">
    				   <div class="content-header row" style="padding-top: 20px; padding-left: 20px;">
							<div class="content-header-left col-12 mb-2">
							<div class="row breadcrumbs-top">
									   <div class="col-10">
											<div>
											<img src="${webPath}/resources/img/line.png" style="width:30px; float:left; padding-left: 5px;" />
											<h2 class="content-header-title float-start mb-0" style="margin-left: 15px;">?????? ??????</h2>
											</div>
										</div>
										<div class="col-2">
											<div onclick="goPage('${webPath}/main/board/volBoard/list.do','M030500','ifr')" ><a href="#"><i data-feather='plus-square'></i>?????????</a></div>
										</div>				
							</div>
							</div>
						</div>	
				<div class="table-responsive" style=" padding-bottom: 20px;">
					<table class="table table-bordered"  style="table-layout:fixed; text-align: center; border-color:white;">
						<tbody>
							<c:forEach items="${recentVol }" var="vol" varStatus="status">
								<tr onclick="OpenWindow('${webPath}/main/board/volBoard/detail.do?from=list&vb_no=${vol.vb_no }','????????????',1100,700);" >
									<!-- <td>${((cri.page-1) * 20) + status.count}</td> --> <!-- 1?????? -->
<%-- 									<td>${status.count}</td> <!-- ?????? --> --%>
									<td style="width: 80%; text-align:left;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;">${vol.vb_title}</td>
<%-- 									<td style="text-align:left;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;">${vol.vb_writer}</td> --%>
									<td style="width: 20%;"><fmt:formatDate value="${vol.vb_regdate }" pattern="yyyy-MM-dd" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	</div>
    <!-- END: Content-->
	<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.5.1/moment.min.js"></script>

    <!-- BEGIN: Vendor JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/charts/apexcharts.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/charts/chart.min.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/swiper.min.js"></script>
    
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/extensions/ext-component-swiper.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/extensions/ext-component-sweet-alerts.js"></script>
	<script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/sweetalert2.all.min.js"></script>
    <!-- END: Page JS-->
	<script	src="${webPath}/resources/jquery/jquery.min.js"></script>
    <script src="${webPath}/resources/js/common.js"></script>
	<script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/charts/chart-apexForMain.js"></script>
	<%@ include file="./index_js.jsp" %>    
	<%@ include file="../admin/common/MemMainCalender_js.jsp"%>
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
	function doAlert() {
		
			 Swal.fire({
                 icon: 'warning',
                 title: '???????????? ????????? ????????? ??? ????????????.',
                 text: '???????????? ???????????????.'
              })
//               .then(function(){
//             	  parent.location.href = "http://localhost/readit/common/loginForm.do";
//               })
	
	}

</script>
</body>
<!-- END: Body-->

</html>