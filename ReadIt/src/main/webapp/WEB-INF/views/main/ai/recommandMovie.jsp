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
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
<meta name="description"
	content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
<meta name="keywords"
	content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="PIXINVENT">
<title>Swiper - Vuexy - Bootstrap HTML admin template</title>
<link rel="apple-touch-icon"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600"
	rel="stylesheet">

<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/swiper.min.css">
<!-- END: Vendor CSS-->

<!-- BEGIN: Theme CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap-extended.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/colors.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/components.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/dark-layout.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/bordered-layout.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/semi-dark-layout.css">

<!-- BEGIN: Page CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/horizontal-menu.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-swiper.css">
<!-- END: Page CSS-->

<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
<!-- END: Custom CSS-->
<style>

</style>


</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body
	class="horizontal-layout horizontal-menu  navbar-floating footer-static  "
	data-open="hover" data-menu="horizontal-menu" data-col="">
	<div class="container">

                    <div class="card row">
                        <div class="card-body align-self-center" >
                            <ul class="nav nav-pills">
                            <!-- account -->
                            <li class="nav-item">
                                <a class="nav-link" onclick="goPage('<%=request.getContextPath()%>/main/ai/recommandReview.do','M040100','ifr');" >
                                    <i data-feather="film" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">MBTI??? ?????? ?????? ??????</span>
                                </a>
                            </li>
                            <!-- security -->
                            <li class="nav-item">
                                <a class="nav-link" onclick="goPage('<%=request.getContextPath()%>/main/ai/recommandRecord.do','M040200','ifr');">
                                    <i data-feather="book-open" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">?????? ????????? ?????? ?????? ??????</span>
                                </a>
                            </li>
                            <!-- billing and plans -->
                            <li class="nav-item">
                                <a class="nav-link " onclick="goPage('<%=request.getContextPath()%>/main/ai/recommandMBTI.do','M040300','ifr');" >
                                    <i data-feather="book" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">MBTI??? ?????? ??????</span>
                                </a>
                            </li>
                            <!-- notification -->
                            <li class="nav-item">
                                <a class="nav-link" onclick="goPage('<%=request.getContextPath()%>/main/ai/recommandPersonal.do','M040500','ifr');" >
                                    <i data-feather="user" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">?????? ????????? ?????? ??????</span>
                                </a>
                            </li>
                            <!-- connection -->
                            <li class="nav-item">
                                <a class="nav-link" onclick="goPage('<%=request.getContextPath()%>/main/ai/recommandFace.do','M040600','ifr');" >
                                    <i data-feather="eye" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">????????? ?????? ??????</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" onclick="goPage('<%=request.getContextPath()%>/main/ai/recommandMovie.do','M040400','ifr');">
                                    <i data-feather="monitor" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">?????? ??? ???????</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" onclick="goPage('<%=request.getContextPath()%>/main/ai/recommand1.do','M040000','ifr');">
                                    <i data-feather="list" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">AI ???????????? ??????</span>
                                </a>
                            </li>
                        </ul>
                        </div>
                    </div>

		<div class="row">
			<div class="col-lg-3 col-sm-6">
				<div class="card">
					<div
						class="card-body d-flex align-items-center justify-content-between">
						<div>
							<h3 class="fw-bolder mb-75">??????</h3>
							<span>gender</span>
						</div>
						<div class="avatar bg-light-primary p-50">
							<span class="avatar-content"> <i data-feather="user"
								class="font-medium-4"></i>
							</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-sm-6">
				<div class="card">
					<div
						class="card-body d-flex align-items-center justify-content-between">
						<div>
							<h3 class="fw-bolder mb-75">20???</h3>
							<span>age group</span>
						</div>
						<div class="avatar bg-light-danger p-50">
							<span class="avatar-content"> <i data-feather="user-plus"
								class="font-medium-4"></i>
							</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-sm-6">
				<div class="card">
					<div
						class="card-body d-flex align-items-center justify-content-between">
						<div>
							<h3 class="fw-bolder mb-75">??????</h3>
							<span>interest</span>
						</div>
						<div class="avatar bg-light-success p-50">
							<span class="avatar-content"> <i data-feather="user-check"
								class="font-medium-4"></i>
							</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-sm-6">
				<div class="card">
					<div
						class="card-body d-flex align-items-center justify-content-between">
						<div>
							<h3 class="fw-bolder mb-75">?????? ????????? ??????</h3>
							<span> change myInfo</span>
						</div>
						<div class="avatar bg-light-warning p-50">
							<span class="avatar-content"> <i data-feather="user-x"
								class="font-medium-4"></i>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>



		<div style="margin-top: 40px;">
			<div class="row" id="target-template">
				<!--/ centered-slides option-2 swiper -->
				<c:forEach items="${movielist }" var="movie">
					<!-- pricing plan cards -->
					<div class="col-12 col-md-4">
						<div class="card standard-pricing popular text-center">
							<div class="card-body" style="height: 660px">
								<div class="pricing-badge text-end">
									<span class="badge rounded-pill badge-light-primary">recommand</span>
								</div>
								<%-- 							           <iframe width="280" height="320" src="${movie.mo_img}" title="[????????? ????????? ????????? : ????????????! ????????? ??????????????????] ??????????????? 9??? 28??? ?????????!"  autoplay; frameborder="0" allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> --%>
								<img src="${movie.mo_img}" class="mb-1" style="height: 321px;" />
								<h3></h3>
								<div class="annual-plan" >
									<div class="plan-price mt-2">
										<sup class="font-medium-1 fw-bold text-primary"></sup> <span
											class="pricing-basic-value fw-bolder text-primary"></span>
										<h6 class="text-success">${movie.mo_title}</h6>
										<sub class="pricing-duration text-body font-medium-1 fw-bold"></sub>
									</div>
									<small class="annual-pricing d-none text-muted"></small>
								</div>
								<ul class="list-group list-group-circle text-start">
									<li class="list-group-item">?????? : ${movie.mo_title}</li>
									<c:choose>
										<c:when test="${movie.mo_genre eq 0}">
											<li class="list-group-item">?????? : ???????????????</li>
										</c:when>
										<c:when test="${movie.mo_genre eq 1}">
											<li class="list-group-item">?????? : ??????(??????)</li>
										</c:when>
										<c:when test="${movie.mo_genre eq 2}">
											<li class="list-group-item">?????? : ???????????????</li>
										</c:when>
										<c:when test="${movie.mo_genre eq 3}">
											<li class="list-group-item">?????? : ?????????</li>
										</c:when>
										<c:when test="${movie.mo_genre eq 4}">
											<li class="list-group-item">?????? : ??????</li>
										</c:when>
										<c:when test="${movie.mo_genre eq 5}">
											<li class="list-group-item">?????? : SF</li>
										</c:when>
									</c:choose>
									<li class="list-group-item">?????? : ${movie.mo_rating}</li>
								</ul>
								<!-- <button class="btn w-100 btn-primary mt-2 btn-open-popup "
									id="show">?????? ????????? ??????</button> -->
									
									 <div class="d-flex justify-content-center pt-2">
		                                      <a href="javascript:;" class="btn btn-primary me-1" data-bs-target="#editUser" data-bs-toggle="modal">
                                                	?????? ????????? ??????
                                            </a>
                                      </div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<!-- upgrade your plan Modal -->
		<div class="modal fade" id="editUser" tabindex="-1"
			aria-hidden="true">
			<div class="modal-dialog modal-upgrade-plan" style="margin: 5%;">
				<div class="modal-content" style="width: 1280px; height: 720;">
					<div class="modal-header bg-transparent">
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<iframe width="1280" height="720" id="movie_preview"
						src="https://www.youtube.com/embed/qAPdFL_Z1ck"
						title="[????????? ????????? ????????? : ????????????! ????????? ??????????????????] ??????????????? 9??? 28??? ?????????!"
						frameborder="0" autoplay
						allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture"></iframe>
				</div>
			</div>
		</div>
		<!--/ upgrade your plan Modal -->

	</div>

	<!--/ centered-slides option-2 swiper -->



	<!-- END: Content-->


	<!-- BEGIN: Vendor JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
	<!-- BEGIN Vendor JS-->

	<!-- BEGIN: Page Vendor JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/swiper.min.js"></script>
	<!-- END: Page Vendor JS-->

	<!-- BEGIN: Theme JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
	<!-- END: Theme JS-->

	<!-- BEGIN: Page JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/extensions/ext-component-swiper.js"></script>
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
    function page_go(click_id){
	var pageName=click_id;
//     	console.log(pageName);
	var url = "<%=request.getContextPath()%>"/main/ai/" + pageName+ ".do";
			console.log(url); // /readit/main/ai/recommandMovie.do
			location.href = url;

		}
	</script>
	<script>
	function preview () {
		  document.querySelector(".annual-plan").className = "background show";
		}

		function close () { 
		  document.querySelector(".background").className = "background";
		}

		document.querySelector("#show").addEventListener('click', show);
		document.querySelector("#close").addEventListener('click', close);
	</script>
</body>
<!-- END: Body-->

</html>