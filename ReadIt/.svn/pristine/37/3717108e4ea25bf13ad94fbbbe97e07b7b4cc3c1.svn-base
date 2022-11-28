<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="recenNotice" value="${dataMap.recenNotice }" />

<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<!-- BEGIN: Head-->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
<meta name="description"
	content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
<meta name="keywords"
	content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="PIXINVENT">
<title>Checkout - Vuexy - Bootstrap HTML admin template</title>
<link rel="apple-touch-icon"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600"
	rel="stylesheet">

<link rel="apple-touch-icon"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/charts/apexcharts.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/toastr.min.css">
<!-- END: Vendor CSS-->

<!-- BEGIN: Theme CSS-->
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap-extended.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/colors.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/components.css">
<%--     <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/dark-layout.css"> --%>
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/bordered-layout.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/semi-dark-layout.css">

<!-- BEGIN: Page CSS-->
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/horizontal-menu.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/dashboard-ecommerce.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/charts/chart-apex.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-toastr.css">
<!-- END: Page CSS-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
<link rel="stylesheet" type="text/css" href="${webPath}/resources/css/mainCal.css">
<!-- END: Custom CSS-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
 <script src="https://momentjs.com/downloads/moment-with-locales.js"></script>

<link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-swiper.css">
<link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/swiper.min.css">

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->
<style>
.money {
  animation: mymove 5s infinite;
}
@keyframes mymove {
  from {
      transform: rotateY(0deg);
    }
    to {
      transform: rotateY(359deg);
    }
}
.weatherContainer {
	width: 340px;
	height: 300px;;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	/*     opacity: 30%; */
}

.weatherContainer * {
	margin: 0px;
	color: #fce4ec;
}

.weatherContainer h1 {
	font-size: 1.8em;
}

.weatherInfo {
	font-size: 1em;
}
</style>


<body
	class="vertical-layout vertical-menu-modern  navbar-floating footer-static "
	style="overflow-x: hidden; overflow-y:scroll;" data-open="click"
	data-menu="vertical-menu-modern" data-col="">

	<div class="content-wrapper container-xxl p-0"
		style="font-family: 'Noto Sans KR', sans-serif;">
		<div class="content-header row"></div>
		<div class="content-body">
			<!-- Dashboard Ecommerce Starts -->
			<section id="dashboard-ecommerce">
				<div class="row match-height">

					<!-- Statistics Card -->
					<div class="col-xl-6 col-12" style="height: 100px;">
						<div class="card card-statistics" >
							<div class="card-header" style="padding-bottom: 0px">
								<h5 class="card-title">메뉴 바로가기</h5>
								<div class="d-flex align-items-center">
									<p class="card-text font-small-2 me-25 mb-0">  </p>
								</div>
							</div>
							<div class="card-body statistics-body">
								<div class="row">
									<div class="col-xl-3 col-sm-6 col-12 mb-2 mb-xl-0">
										<div class="d-flex flex-row">
											<div class="avatar bg-light-primary me-2"  style=" margin-left: 30px;" onclick="goPage('${webPath}/admin/bookManage/stupid.do','M920500','ifr')">																					<div class="avatar-content">
													<i data-feather="book-open" class="avatar-icon"></i>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-3 col-sm-6 col-12 mb-2 mb-xl-0">
										<div class="d-flex flex-row">
											<div class="avatar bg-light-info me-2" style=" margin-left: 30px;">
												<div class="avatar-content" onclick="goPage('${webPath}/admin/bookManage/rent.do','M920300','ifr')" >
													<i data-feather="check-square" class="avatar-icon"></i>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-3 col-sm-6 col-12 mb-2 mb-sm-0">
										<div class="d-flex flex-row">
											<div class="avatar bg-light-danger me-2" style=" margin-left: 30px;">
												<div class="avatar-content" onclick="goPage('${webPath}/main/board/notice/list.do','M030100','ifr')">
													<i data-feather="clipboard" class="avatar-icon"></i>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xl-3 col-sm-6 col-12">
										<div class="d-flex flex-row">
											<div class="avatar bg-light-success me-2" style=" margin-left: 30px;">
												<div class="avatar-content" onclick="goPage('${webPath}/admin/mypage/toDoList.do','M950200','ifr')">
													<i data-feather="trello" class="avatar-icon"></i>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xl-3 col-sm-6 col-12 mb-2 mb-xl-0">
										<div class="d-flex flex-row" >
											<div class="my-auto" style=" margin-left: ;">
												<h4 class="fw-bolder mb-0" style="margin-left: 20px">엉뚱 도서</h4>
											</div>
										</div>
									</div>
									<div class="col-xl-3 col-sm-6 col-12 mb-2 mb-xl-0">
										<div class="d-flex flex-row">
											<div class="my-auto">
												<h4 class="fw-bolder mb-0">도서 예약 현황</h4>
											</div>
										</div>
									</div>
									<div class="col-xl-3 col-sm-6 col-12 mb-2 mb-sm-0">
										<div class="d-flex flex-row">
											<div class="my-auto">
												<h4 class="fw-bolder mb-0" style="margin-left: 20px">공지사항</h4>
											</div>
										</div>
									</div>
									<div class="col-xl-3 col-sm-6 col-12">
										<div class="d-flex flex-row">
											<div class="my-auto">
												<h4 class="fw-bolder mb-0" style="margin-left: 15px">TodoList</h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--/ Statistics Card -->
	
			<!--  도서관 일정-->
					<div class="col-xl-3 col-md-1 col-12">
						<section id="component-swiper-cube-effect">
					                    <div class="card">
					                        <div class="card-header" style="margin-top: -10px">
					                        	<h6 class="card-title">이벤트 / 행사 안내</h6>
					                        </div>
					                        <div class="card-body">
					                            <div class="swiper-cube-effect swiper-container img-box">
					                                <div class="swiper-wrapper">
					                                    <div class="swiper-slide">
					                                        <img class="img-fluid" src="${webPath}/resources/carousal/carousal1.png" alt="banner"  style="height: 250px" />
					                                    </div>
					                                    <div class="swiper-slide">
					                                        <img class="img-fluid" src="${webPath}/resources/carousal/carousal2.png" alt="banner" style="height: 250px"/>
					                                    </div>
					                                    <div class="swiper-slide">
					                                        <img class="img-fluid" src="${webPath}/resources/carousal/carousal3.png" alt="banner" style="height: 250px"/>
					                                    </div>
					                                    <div class="swiper-slide">
					                                        <img class="img-fluid" src="${webPath}/resources/carousal/carousal4.png" alt="banner" style="height: 250px" />
					                                    </div>
					                                </div>
					                                <!-- Add Pagination -->
					                                <div class="swiper-pagination swiper-pagination-white" style="display: none;"></div>
					                            </div>
					                        </div>
					                    </div>
					                </section>
						
						
					</div>
					<div class="col-lg-3 col-12">
					<!--  calender -->
						 <div class="card">
							<div class="card-body" style=" padding-bottom: 0px; padding-top: 0px; height: 280px;">
								<div id="calendar">
								</div>
							</div>
						</div>
					<!--  calender -->
					</div>
					
				</div>
				<div class="row ">
					<div class="col-lg-3 col-12" style="margin-top: -150px">
						<div class="card card-congratulation-medal">
							<div class="card-body" style="height: 425px;">
								<h5>지난주 도서 예약 현황</h5>
								   <div class="card-body" style="  padding-right: 0px;  padding-left: 0px;  padding-top: 0px; padding-bottom: 0px;">
                                    <canvas class="line-chart-ex chartjs" data-height="350"></canvas>
                                </div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-12"  style="margin-top: -150px">
						<div class="card card-congratulation-medal">
							<div class="card-body" style="height: 425px;">
								<h5>도서 대출 현황</h5>
								 <div id="radialbar-chart"></div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-12">
						<div class="card card-congratulation-medal">
							<div class="card-body" style="height: 280px;">
								<h5>AI 이용률</h5>
								 <canvas class="horizontal-bar-chart-ex chartjs" data-height="300"></canvas>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-md-1 col-12"
						style="background: linear-gradient(45deg, #4fc3f7, #0093c4); width: 335px; height: 280px; margin-left:15px">
						<div class="weatherContainer" style="margin-left: -20px; margin-top: -10px;">
							<h1>오늘의 대전 날씨는</h1>
							<img class="weatherIcon money"> 
							<span class="weatherInfo"></span>
						<span class="weatherInfoWeek" style="font-size: 9px; padding-top: 10px"></span>
						</div>
					</div>
					
				 
				</div>

				<div class="row match-height">
				
				<div class="col-lg-3 ">
						 <!-- 3d cube effect swiper -->
								<div class="card card-congratulation-medal">
							<div class="card-body" style="height: 280px;">
								<h5>KDC 대출 통계</h5>
								 <canvas class="bar-chart-ex chartjs" data-height="220"></canvas>
							</div>
						</div>
								
			                <!--/ 3d cube effect swiper -->
					</div>
					
<!-- 					<div class="col-lg-3"> -->
<!-- 						<div class="card card-congratulation-medal"> -->
<!-- 							<div class="card-body"> -->
<!-- 								<h5>오늘의 북적현황</h5> -->
<!-- 								<h5 class="mb-75 mt-2 pt-50"> -->
<!-- 									<a href="#">드라이브 스루 현황</a><br> <a href="#">배송예약현황</a><br> -->
<!-- 									<a href="#">배송 반납 현황</a><br> <a href="#">무인 대출 현황</a><br> -->
<!-- 									<a href="#">엉뚱 도서 현황</a><br> <a href="#">엉뚱 도서 현황</a><br> -->
<!-- 									<a href="#">엉뚱 도서 현황</a><br> <a href="#">엉뚱 도서 현황</a><br> -->
<!-- 									<a href="#">엉뚱 도서 현황</a><br> <a href="#">행사 현황</a> -->
<!-- 								</h5> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->

					<!-- Revenue Report Card -->

					<div class="col-lg-9 col-12">
						<div class="row" id="table-small">
										<div class="card">
							     		  <div class="content-header row" style="padding-top: 20px; padding-left: 20px;">
														<div class="content-header-left col-12 mb-2">
														<div class="row breadcrumbs-top">
																   <div class="col-10">
																		<div>
																		<img src="${webPath}/resources/img/line.png" style="width:30px; float:left; padding-left: 5px;" />
																		<h2 class="content-header-title float-start mb-0" style="margin-left: 15px;">공지 사항</h2>
																		</div>
																	</div>
																	<div class="col-2">
																		<div  onclick="goPage('${webPath}/main/board/notice/list.do','M030100','ifr')" ><a href="#"><i data-feather='plus-square' ></i>더보기</a></div>
																	</div>				
														</div>
														</div>
													</div>	
										<div class="table-responsive" style=" padding-bottom: 20px;">
												<table class="table table-bordered"  style="table-layout:fixed; text-align: center; border-color:white;">
													<tbody>
														<c:forEach items="${recenNotice }" var="notice" varStatus="status">
															<tr onclick="OpenWindow('${webPath}/main/board/notice/detail.do?from=list&notice_no=${notice.notice_no }','상세보기',800,900);">
																<!-- <td>${((cri.page-1) * 20) + status.count}</td> --> <!-- 1부터 -->
							<%-- 									<td>${status.count}</td> <!-- 역순 --> --%>
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
					</div>
					
					<!--/ Revenue Report Card -->
				</div>
			</section>
			
			
			<!-- Dashboard Ecommerce ends -->

		</div>
	</div>

	<!-- jQuery -->
	<script src="${webPath}/resources/jquery/jquery.min.js"></script>
	<%-- 	<script src="${webPath}/resources/js/mainCal.js" ></script> --%>

	<script
		src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.5.1/moment.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>		
	<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
	<script src="${webPath}/resources/js/chart-utils.min.js"></script>
	<script src="${webPath}/resources/js/chart-AdminMainReserve.js"></script>
	<script src="${webPath}/resources/js/chart-AdminMainRent.js"></script>
	<script src="${webPath}/resources/js/chart-AdminMainAICount.js"></script>
	<script src="${webPath}/resources/js/chart-AdminMainKDC.js"></script>
		
	<!-- BEGIN: Vendor JS-->
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
	<!-- BEGIN Vendor JS-->

	<!-- BEGIN: Page Vendor JS-->
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/swiper.min.js"></script>
	<!-- END: Page Vendor JS-->

	<!-- BEGIN: Theme JS-->
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
	<!-- END: Theme JS-->
	<script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/charts/chart.min.js"></script>
<%--     <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/charts/chart-chartjs.js"></script> --%>
	<!-- BEGIN: Page JS-->
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/extensions/ext-component-swiper.js"></script>
	<!-- END: Page JS-->
	<script src="${webPath}/resources/js/common.js"></script>
	
	<script defer
		src="https://use.fontawesome.com/releases/v5.15.2/js/all.js"
		integrity="sha384-vuFJ2JiSdUpXLKGK+tDteQZBqNlMwAjhZ3TvPaDfN9QmbPb7Q8qUpbSNapQev3YF"
		crossorigin="anonymous"></script>
	
	
	<%@ include file="./index_js.jsp"%>
	<%@ include file="./mainCalender_js.jsp"%>

	<script>
        $(window).on('load', function() {
            if (feather) {
                feather.replace({
                    width: 14,
                    height: 14
                });
            }
            lastWeekAjax('${webPath}');
            rentAjax('${webPath}');
            aiAjax('${webPath}');
            rentAllAjax('${webPath}');
        })
    </script>
    
    <script>
		    const container = document.querySelector('.img-box'),
		    slides = document.querySelectorAll('img'),
		    slidecounter = slides.length;
			var currentIndex = 0;
			
			
// 			var lele = 0;
// 			var i = 0;
// 			function moveleft() {
// 			    if (i < slidecounter - 1) {
// 			        lele += 100;
// 			        i++;
// 			        container.style.transition = '.3s'
// 			        setTimeout('moveleft()', 3000);
// 			    } else {
// 			        container.style.transition = '0s'
// 			        lele = 0;
// 			        i = 0;
// 			        setTimeout('moveleft()', 0);
// 			    }
// 			    container.style.left = "-" + lele + "%";
// 			}
// 			moveleft();
    </script>
    

	<script>
    var city = "daejeon";
    var apiURI = "http://api.openweathermap.org/data/2.5/forecast?q="+city+",kr&appid="+"ad2f925e8c1feea7e27ddfcda7d6f253";
    const weatherInfo = document.querySelector('.weatherInfo');
    const weatherIconImg = document.querySelector('.weatherIcon');
    const weatherInfoWeek = document.querySelector('.weatherInfoWeek');
    
    	var weatherIcon = {
    	        '01' : 'fas fa-sun',
    	        '02' : 'fas fa-cloud-sun',
    	        '03' : 'fas fa-cloud',
    	        '04' : 'fas fa-cloud-meatball',
    	        '09' : 'fas fa-cloud-sun-rain',
    	        '10' : 'fas fa-cloud-showers-heavy',
    	        '11' : 'fas fa-poo-storm',
    	        '13' : 'far fa-snowflake',
    	        '50' : 'fas fa-smog'
    	      };
    	
	    $.ajax({
	        url: apiURI,
	        dataType: "json",
	        type: "GET",
	        async: "false",
	        success: function(json) {
	        	$.each(json.list, function(key){
// 		             console.log("json",json.list)
// 		             console.log("json.list[key].main",json.list[key].main)
		             var temperature = Math.floor(json.list[key].main.temp- 272.15);
		             var temperatureMin = Math.floor(json.list[key].main.temp_min - 277.15);
		             var temperatureMax = Math.floor(json.list[key].main.temp_max - 267.15);
		             var weatherDescription = json.list[key].weather[0].main;
		             var weatherIcon = json.list[key].weather[0].icon;
		             var weatherImg;
		             var weatherIconAdrs;
		             if (weatherIcon == '01n' || weatherIcon == '01d' ) {
// 		            	 weatherIcon = '01d'
		            	 weatherImg = '${webPath}/resources/img/sun3.png'
					} else if ( weatherIcon == '04n' || weatherIcon == '04d' || weatherIcon == '02n' || weatherIcon == '02d' || weatherIcon == '03d' ||  weatherIcon == '03n'){
						weatherImg  = '${webPath}/resources/img/cloud2.png'
					} else if ( weatherIcon == '10n' || weatherIcon == '10d' || weatherIcon == '09n' || weatherIcon == '09d'){
						console.log("weatherIcon1", weatherIcon)
						weatherImg  = '${webPath}/resources/img/rain2.png'
					} 
		             weatherIconAdrs = weatherImg;
		             
// 		             console.log("여기까지 됌1");
		             var date = json.list[key].dt_txt.substring(0,10);
		             var time = json.list[key].dt_txt.substring(11,13);
// 		             console.log("여기까지 됌1",date);
				     var yoil = new Date(date).getDay();	// 받아 오는 날짜의 요일 일-0 월-1 화-2....
// 		             console.log("여기까지 됌1",yoil);
		             var week = new Array('일요일','월요일', '화요일', '수요일', '목요일', '금요일', '토요일');
				     var todayLabel = week[yoil];
// 		             console.log("여기까지 됌1",todayLabel)
// 		             console.log("여기까지 됌2")
		             
		              var weath = json.list[key].weather[0].main;
		             if (weatherDescription === 'Clouds') {
		            	 weatherDescription = '흐림';
					}else if(weatherDescription === 'Clear'){
						 weatherDescription = '맑음';
					}else if(weatherDescription === 'Rain'){
						 weatherDescription = '비';
					}
					else if(weatherDescription === 'Mist'){
						 weatherDescription = '안개';
					}
					else if(weatherDescription === 'Snow'){
						 weatherDescription = '눈';
					}
// 		             console.log("weatherDescription",weatherDescription);
		         
		         	let now = new Date(); 
		         
		             //받아온 정보들을 표현한다. 
		             if (key == 3) {
		            	 
		            	 weatherInfo.innerText = '현재 : ' + temperature+'°C / 상태 : '+weatherDescription +' \n 최저 : ' + temperatureMin + '°C  / 최고 : ' + temperatureMax +'°C';
			             weatherIconImg.setAttribute('src', weatherIconAdrs);
			             console.log("weatherDescription2",weatherDescription);
			             console.log("weatherIconAdrs2",weatherIconAdrs);
					}else if(key != 3){
						if(time==='12'){
				    		weatherInfoWeek.innerText += todayLabel +' '+weatherDescription +' 최저 : ' + temperatureMin + '°C  / 최고 : ' + temperatureMax +'°C \n';

				    	}
					}
		             
	        	})
// 	        	 var $Icon = (resp.weather[0].icon).substr(0,2);
// 	             var $weather_description = resp.weather[0].main;
// 	             var $Temp = Math.floor(resp.main.temp- 273.15) + 'º';
// 	             var $humidity = '습도&nbsp;&nbsp;&nbsp;&nbsp;' + resp.main.humidity+ ' %';
// 	             var $wind = '바람&nbsp;&nbsp;&nbsp;&nbsp;' +resp.wind.speed + ' m/s';
// 	             var $city = '대전';
// 	             var $cloud = '구름&nbsp;&nbsp;&nbsp;&nbsp;' + resp.clouds.all +"%";
// 	             var $temp_min = '최저 온도&nbsp;&nbsp;&nbsp;&nbsp;' + Math.floor(resp.main.temp_min- 273.15) + 'º';
// 	             var $temp_max = '최고 온도&nbsp;&nbsp;&nbsp;&nbsp;' + Math.floor(resp.main.temp_max- 273.15) + 'º';

	             
// 	             $('.weather_icon').append('<i class="' + weatherIcon[$Icon] +' fa-5x" style="height : 75px; width : 75px; color:yellow;"></i>');
// 	             $('.weather_description').prepend($weather_description);
// 	             $('.current_temp').prepend($Temp);
// 	             $('.humidity').prepend($humidity);
// 	             $('.wind').prepend($wind);
// 	             $('.city').append($city);
// 	             $('.cloud').append($cloud);
// 	             $('.temp_min').append($temp_min);
// 	             $('.temp_max').append($temp_max);              
	        }
	    });
   
   
    
    </script>

</body>
<!-- END: Body-->

</html>
