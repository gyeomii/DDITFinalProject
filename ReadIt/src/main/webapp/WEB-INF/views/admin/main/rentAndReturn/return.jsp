<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


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
<title>현장 대출&반납</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
	
<link rel="apple-touch-icon"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;700&display=swap"
	rel="stylesheet">
<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/charts/apexcharts.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/toastr.min.css">
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
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/dashboard-ecommerce.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/charts/chart-apex.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-toastr.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/vertical-menu.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/page-profile.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-validation.css">
<!-- END: Page CSS-->

<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
	<script src="https://unpkg.com/ag-grid-community/dist/ag-grid-community.min.js"></script>
<!-- END: Custom CSS-->
<style>
.alignCenter{
    	text-align: center;
    }
 body {
    overflow: scroll;
    /* IE scroll 숨김 */
    -ms-overflow-style: none;
}
 
body::-webkit-scrollbar { 
    display: none;
    width: 0 !important;
}
</style>
</head>
<body class="container-xxl" >

	<section class="app-user-view-account">
				<!-- User Pills -->
				<ul class="nav nav-pills " style="padding-top: 10px; margin-bottom: -15px; padding-left: 14px;">
					<li class="nav-item"><a class="nav-link " id="M050301"
						 onclick="location.href='<%=request.getContextPath()%>/admin/quickRentAndReturn/rent.do'"> <svg xmlns="http://www.w3.org/2000/svg" width="14"
								height="14" viewBox="0 0 24 24" fill="none"
								stroke="currentColor" stroke-width="2" stroke-linecap="round"
								stroke-linejoin="round"
								class="feather feather-user font-medium-3 me-50">
								<path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
								<circle cx="12" cy="7" r="4"></circle></svg> <span class="fw-bold">도서 대출</span>
					</a></li>
				<li class="nav-item"><a class="nav-link active" id="M050302"
						onclick="location.href='<%=request.getContextPath()%>/admin/quickRentAndReturn/return.do'"> <svg xmlns="http://www.w3.org/2000/svg" width="14"
								height="14" viewBox="0 0 24 24" fill="none"
								stroke="currentColor" stroke-width="2" stroke-linecap="round"
								stroke-linejoin="round"
								class="feather feather-bookmark font-medium-3 me-50">
								<path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
							<span class="fw-bold" >도서 반납 </span>
					</a></li>
				</ul>
				<!--/ User Pills -->
	</section>
	<div class="container" style="margin-top: 15px;">
		<div class="row">
			<div class="col-6">
				<!-- Knowledge base Jumbotron -->

				

				<section id="basic-horizontal-layouts">
					<div class="row">
						<div class="col-md-12 col-12">
							<div class="card">
								<div>
									<div class="card-header" style="margin-bottom: -30px;">
										<h4 class="card-title">도서정보</h4>
									</div>
									<div class="card-body">
										<form class="form form-horizontal" style=" margin-bottom: -15px; margin-bottom: -15px;">
											<div class="row">
												<div class="col-9">
													<div class="row" style="padding-top: 20px;">
														<div class="col-sm-3">
															<label class="col-form-label" for="first-name">도서번호</label>
														</div>
														<div class="col-sm-9" style="margin-left: -40px;">
															<div class="input-group mb-2">
																<input type="text" class="form-control"
																	placeholder="도서 번호를 입력해주세요" aria-label="Search..."
																	aria-describedby="basic-addon-search1" id="searchBookNo" name="book_no" value=""
																	onkeyup="if(window.event.keyCode==13){bookInfoSearch()}"
																	/>
																<span class="input-group-text" id="basic-addon-search1"
																	onclick="bookInfoSearch()"><i data-feather="search" 
																	></i></span>
															</div>
														</div>
													</div>
													<div class="row" style="padding-top: 20px;">
														<div class="col-sm-3">
															<label class="col-form-label" for="first-name">바코드</label>
														</div>
														<div class="col-sm-9" style="margin-left: -40px;">
															<div class="input-group mb-2">
																<input type="text" class="form-control"
																	placeholder="" aria-label="Search..."
																	aria-describedby="basic-addon-search1" id="pInput" name="" value=""
																	onchange="bookInfoSearch() " 
																	/>
																<span class="input-group-text" id="basic-addon-search1"
																	onclick="OpenWindow('${webPath}/admin/quickRentAndReturn/barcodeScan.do','바코드스캔',600,750);"><i data-feather="search" 
																	></i></span>
<!-- 																	 <input type="text" id="pInput" value="부모값" oninput="alert('바코드값')"> -->
															</div>
														</div>
													</div>
												</div>
												<div class="col-3">
													<div class="row">
														<div class="col-sm-12">
															<div class="input-group form-password-toggle mb-2">
																<div class="profile-image">
																	<img id="info_book_img"
																		src="<%=request.getContextPath()%>/resources/images/book2.png"
																		alt="book" height="120" width="80">
																</div>
															</div>
														</div>
													</div>
												</div>




												<div class="col-6">
													<div class="row" style="text-align: center;">
														<div class="col-sm-3">
															<label class="col-form-label" for="first-name">제목</label>
														</div>
														<div class="col-sm-9">
															<div class="input-group form-password-toggle mb-2">
																<input type="text" id="info_book_title"
																	class="form-control" name="contact"
																	placeholder="Mobile" readonly="readonly">
															</div>
														</div>
													</div>
												</div>
												<div class="col-6">
													<div class="row" style="text-align: center;">
														<div class="col-sm-3">
															<label class="col-form-label" for="first-name">저자</label>
														</div>
														<div class="col-sm-9">
															<div class="input-group form-password-toggle mb-2">
																<input type="text" id="info_book_author"
																	class="form-control" name="contact"
																	placeholder="Mobile" readonly="readonly">
															</div>
														</div>
													</div>
												</div>
												<div class="col-6">
													<div class="row" style="text-align: center;">
														<div class="col-sm-3">
															<label class="col-form-label" for="first-name"
																style="width: 80px; margin-left: -7px;">출판사</label>
														</div>
														<div class="col-sm-9">
															<div class="input-group form-password-toggle mb-2">
																<input type="text" id="info_book_publisher"
																	class="form-control" name="contact"
																	placeholder="Mobile" readonly="readonly">
															</div>
														</div>
													</div>
												</div>
												<div class="col-6">
													<div class="row" style="text-align: center;">
														<div class="col-sm-3">
															<label class="col-form-label" for="first-name">ISBN</label>
														</div>
														<div class="col-sm-9">
															<div class="input-group form-password-toggle mb-2">
																<input type="text" id="info_book_isbn"
																	class="form-control" name="contact"
																	placeholder="Mobile" readonly="readonly">
															</div>
														</div>
													</div>
												</div>

												<div class="col-6">
													<div class="row" style="text-align: center;">
														<div class="col-sm-3">
															<label class="col-form-label" for="first-name">출판년도</label>
														</div>
														<div class="col-sm-9">
															<div class="input-group form-password-toggle mb-2">
																<input type="text" id="info_book_publishdate"
																	class="form-control" name="contact"
																	placeholder="Mobile" readonly="readonly">
															</div>
														</div>
													</div>
												</div>

												<div class="col-6">
													<div class="row" style="text-align: center;">
														<div class="col-sm-3">
															<label class="col-form-label" for="first-name" style="font-size: 9px; margin: -10px; margin-top:5px">대출  가능 권수</label>
														</div>
														<div class="col-sm-9">
															<div class="input-group form-password-toggle mb-2">
																<input type="text" id="info_book_rentable"
																	class="form-control" name="contact"
																	placeholder="Mobile" readonly="readonly">
															</div>
														</div>
													</div>
												</div>

											</div>
										</form>

										<div class="col-sm-9 offset-sm-10" style="margin-right: 20px;  margin-left: 89%;">
											<button type="reset"
												class="btn btn-primary me-1 waves-effect waves-float waves-light" onclick="bookAndMemInfoRegist()">등록</button>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</section>
				
				<section id="basic-horizontal-layouts">
					<div class="row">
						<div class="col-md-12 col-12">
							<div class="card">
								<div>
									<div class="card-header" style="margin-bottom: -30px;">
										<h4 class="card-title">회원정보</h4>
									</div>
									<div class="card-body">
										<form class="form form-horizontal" style=" margin-bottom: -15px;">
											<div class="row">
												<div class="col-9">
													<div class="row" style="padding-top: 20px;">
														<div class="col-sm-3">
															<label class="col-form-label" for="first-name" >회원아이디</label>
														</div>
														<div class="col-sm-9" style="margin-left: -40px;">
															<div class="input-group mb-2">
																<input type="text" class="form-control"
																	placeholder="회원 아이디를 입력해주세요" aria-label="Search..."
																	aria-describedby="basic-addon-search1" id="searchMemId" name="mem_id" value=""
																	readonly="readonly"
																	/>
															
															</div>
														</div>
													</div>
												</div>
												<div class="col-3">
													<div class="row">
														<div class="col-sm-12">
															<div class="input-group form-password-toggle mb-2">
																<div class="profile-image">
																	<span class="avatar"> <img class="round" id="info_mem_img"
																		src="<%=request.getContextPath()%>/resources/images/책박이.PNG"
																		alt="avatar" height="80" width="80">
																	</span>
																</div>
															</div>
														</div>
													</div>
												</div>




												<div class="col-6">
													<div class="row" style="text-align: center;">
														<div class="col-sm-3">
															<label class="col-form-label" for="first-name">회원명</label>
														</div>
														<div class="col-sm-9">
															<div class="input-group form-password-toggle mb-2" >
																<input type="text" id="info_mem_name" 
																	class="form-control" name="contact"
																	 readonly >
															</div>
														</div>
													</div>
												</div>
												<div class="col-6">
													<div class="row" style="text-align: center;">
														<div class="col-sm-3">
															<label class="col-form-label" for="first-name">전화번호</label>
														</div>
														<div class="col-sm-9">
															<div class="input-group form-password-toggle mb-2">
																<input type="text" id="info_mem_phone" 
																	class="form-control" name="contact"
																	 readonly="readonly">
															</div>
														</div>
													</div>
												</div>
												<div class="col-6">
													<div class="row" style="text-align: center;">
														<div class="col-sm-3">
															<label class="col-form-label" for="first-name"
																>등급 </label>
														</div>
														<div class="col-sm-9">
															<div class="input-group form-password-toggle mb-2">
																<input type="text" id="info_mem_rank" 
																	class="form-control" name="contact"
																	 readonly="readonly">
															</div>
														</div>
													</div>
												</div>
												<div class="col-6">
													<div class="row" style="text-align: center;">
														<div class="col-sm-3">
															<label class="col-form-label" for="first-name">대출권수</label>
														</div>
														<div class="col-sm-9">
															<div class="input-group form-password-toggle mb-2">
																<input type="text" id="info_member_rentBook" 
																	class="form-control" name="contact"
																	 readonly="readonly">
															</div>
														</div>
													</div>
												</div>

											</div>
										</form>
										<div class="col-sm-9 offset-sm-10">
											<button type="reset"
												class="btn btn-primary me-1 waves-effect waves-float waves-light" id="up" onclick="memInfoDel()" style="display: none;">확인</button>
										</div>
									</div>
								</div>
							</div>


						</div>
					</div>
				</section>

			</div>
			<div class="col-6">
				<div class="card">
					<div class="card-header">
						<h4 class="card-title">반납 도서 정보</h4>
						<h6>현재 반납하려는 도서의 정보입니다.</h6>
					</div>
						<div id="book_info" class="ag-theme-alpine" style="height: 120px; padding-top: 10px; border: solid 0px;" class="ag-theme-alpine"></div>
				</div>
				<!--/ Knowledge base Jumbotron -->
				
				<div class="card" style="height: 485px; ">
					<div class="card-header">
						<h4 class="card-title" style="text-align: right;">미반납 도서 정보</h4>
						<h6> 연체도서 및 반납 만기일이 다가온 도서는 안내 부탁드립니다.</h6>
					</div>
						<div id="bookList" class="ag-theme-alpine" style="height: 350px; padding-top: 10px; border: solid 0px;" class="ag-theme-alpine"></div>
								<div class=" " style="width: 500px;"> 
							<div style="margin: 10px;" class=" row">
								<div class="col-4" style="width: 40%; text-align: center; margin-left: -25px; padding-top: 10px">
										<button type="reset" class="btn btn-primary me-5 waves-effect waves-float waves-light" id="bookReturn" onclick="bookReturn()">반납하기</button>
								</div>
								<div class=" col-6" style="width: 50%; text-align: center; margin-left: -100px;  padding-top: 10px">
									<button type="reset" class="btn btn-danger me-5 waves-effect waves-float waves-light" id="" onclick="closeClick()">창 닫기</button>
								</div>
								</div>
						</div>
					
				</div>
				
			
			</div>
			</div>

		<!-- Basic Vertical form layout section end -->
		
		


<div id="count"  style="display: none;"> 0 </div>
<input type="text" id="returnBook_no" value=""   style="display: none;"/>
<input type="text" id="returnBook_title" value=""   style="display: none;"/>




		<!-- Basic Tables end -->

		<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

		<script src="<%=request.getContextPath()%>/resources/js/member.js"></script>

	<script src="https://unpkg.com/ag-grid-community/dist/ag-grid-community.min.js"></script>

		<!-- BEGIN: Vendor JS-->
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
		<!-- BEGIN Vendor JS-->

		<!-- BEGIN: Page Vendor JS-->
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/select/select2.full.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/cleave.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/addons/cleave-phone.us.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/moment.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/responsive.bootstrap5.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/jszip.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/pdfmake.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/vfs_fonts.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/buttons.html5.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/buttons.print.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.rowGroup.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/polyfill.min.js"></script>
		<!-- END: Page Vendor JS-->
		<!-- END: Page Vendor JS-->
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
		
		<!-- BEGIN: Theme JS-->
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
		<!-- END: Theme JS-->

		<!-- BEGIN: Page JS-->
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/cards/card-analytics.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/page-profile.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/modal-edit-user.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-user-view-account.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-user-view.js"></script>
		<!-- END: Page JS-->
		<%@ include file="../../../common/index_js.jsp"%>
		<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>

		<script>
		$(window).on('load', function() {
			if (feather) {
				feather.replace({
					width : 14,
					height : 14
				});
			}
		})
	</script>
	
<script>

//회원 정보
const NotReturnBookList_columnDefs = [
		{headerName:"도서번호",field: "book_no", width:100},
	  {headerName:"제목",field: "book_title",  width:180,resizable:true,},
	  {headerName:"저자",field: "book_author",  width:90},
	  {headerName:"대출일자",field: "rent_date",  width:140, filter:true, cellEditor: 'datePicker'},
	  {headerName:"반납기한",field: "due_date",  width:140, filter:true, cellEditor: 'datePicker'},
];
const NotReturnBookList_rowData = [
	{ book_no: "example", book_title: "불편한 편의점", book_author: "김호연",rent_date:"2022-10-22", due_date:"2022-11-07" }
	];
	
const NotReturnBookList_gridOptions = {
	 columnDefs: NotReturnBookList_columnDefs,
	 rowData: NotReturnBookList_rowData,
	 defaultColDef: {  // 모든 컬럼에 공통으로 주는 옵션 설정
	   sortable:true,
	   filter:false,
	   editable:false,
	 },
	 pagination:false,
	 //paginationAutoPageSize:true,
	 paginationPageSize:2,  //위 AutoPageSize랑 배타적
};

document.addEventListener('DOMContentLoaded', () => {
    const NotReturnBookList_gridDiv = document.querySelector('#bookList');
    new agGrid.Grid(NotReturnBookList_gridDiv, NotReturnBookList_gridOptions);
});

function NotReturnBookList_sizeToFit(){
	NotReturnBookList_gridOptions.api.sizeColumnsToFit({defaultMinWidth: 100});
}


//반납 도서 정보 정의
const book_columnDefs = [
	{headerName:"도서번호",field: "book_no", width:100},
	  {headerName:"제목",field: "book_title",  width:180,resizable:true,},
	  {headerName:"저자",field: "book_author",  width:90},
	  {headerName:"대출일자",field: "rent_date",  width:140, filter:true, cellEditor: 'datePicker'},
	  {headerName:"반납기한",field: "due_date",  width:140, filter:true, cellEditor: 'datePicker'},
];
const book_rowData = [
	  { book_no: "example", book_title: "불편한 편의점", book_author: "김호연",rent_date:"2022-10-22", due_date:"2022-11-07" }
	];
	
const book_gridOptions = {
	 columnDefs: book_columnDefs,
	 rowData: book_rowData,
	 defaultColDef: {  // 모든 컬럼에 공통으로 주는 옵션 설정
	   sortable:true,
	   filter:false,
	   editable:false,
	   suppressHorizontalScroll:false,
	 },
	 pagination:false,
	 //paginationAutoPageSize:true,
	 paginationPageSize:2,  //위 AutoPageSize랑 배타적
};

document.addEventListener('DOMContentLoaded', () => {
    const book_gridDiv = document.querySelector('#book_info');
    new agGrid.Grid(book_gridDiv, book_gridOptions);
});

function book_sizeToFit(){
	book_gridOptions.api.sizeColumnsToFit({defaultMinWidth: 100});
}



function bookAndMemInfoRegist(){
	
	var book_no =$('#returnBook_no').val();
	
	
	var mem_id = $('#searchMemId');
	var mem_id_save = $('#mem_id_save');
	var mem_name =$('#info_mem_name');
	var mem_phone =$('#info_mem_phone');
	var mem_img =$('#info_mem_img');
	var mem_rank =$('#info_mem_rank');
	var member_rentBook =$('#info_member_rentBook');
	
	
	var data = {
			book_no : book_no
	}
	
	$.ajax({
		url:"<%=request.getContextPath()%>/admin/quickRentAndReturn/bookReturnInfoRegist.do",
		type:"post",
		data:data,
		//dataType:'application/json; charset=utf-8',
		success:function(data){
			console.log("data",data);
			
			// 회원정보
			mem_id.prop("value",data.member.mem_id)
			mem_id_save.prop("value",data.member.mem_id);
			mem_name.prop("value",data.member.mem_name);
			mem_phone.prop("value",data.member.mem_phone);
			member_rentBook.attr("value",data.count+"권")
			
				if(data.member.mem_rank == 1){
					mem_rank.prop("value","알");
				}else if(data.member.mem_rank == 2){
					mem_rank.prop("value","책벌레");
				}else if(data.member.mem_rank == 3){
					mem_rank.prop("value","책책박사");
				}
			
				if(data.member.mem_img != null){
					mem_img.prop("src","<%=request.getContextPath()%>"+data.member.mem_img);
				}else{
					mem_img.prop("src","<%=request.getContextPath()%>/resources/images/책박.PNG")
				} 
				
				for(var i= 0; i<data.rentBack.length; i++){
					console.log(data.rentBack[i].rent_date);
					data.rentBack[i].rent_date = moment(data.rentBack[i].rent_date).format('YYYY-MM-DD');
					data.rentBack[i].due_date = moment(data.rentBack[i].due_date).format('YYYY-MM-DD');
				}
				for(var i= 0; i<data.rentBackList.length; i++){
					console.log(data.rentBackList[i]);
					data.rentBackList[i].rent_date = moment(data.rentBackList[i].rent_date).format('YYYY-MM-DD');
					data.rentBackList[i].due_date = moment(data.rentBackList[i].due_date).format('YYYY-MM-DD');
				}
		
			book_gridOptions.api.setRowData(data.rentBack);
			book_sizeToFit();
			
			NotReturnBookList_gridOptions.api.setRowData(data.rentBackList);
			NotReturnBookList_sizeToFit();
		},
		error:function(error){
			console.log(error);
			Swal.fire({
                icon: 'warning',
                text: ' 대출내역이 존재하지 않습니다.'
             })
		}
	})
}
	

</script>


<script>
function bookInfoSearch(){
	
	var book_no;
	var book_no_input = $('#searchBookNo');
	var book_no_barcode = $('#pInput');
	
	
	if (book_no_input.val()) {
		book_no =  book_no_input.val();
		book_no_barcode.attr("value",book_no_input.val());
		console.log("book_no_input",book_no_input.val());
	} else if(book_no_barcode.val()){
		book_no = book_no_barcode.val();
		book_no_input.attr("value",book_no_barcode.val());
		console.log("book_no_barcode",book_no_barcode.val());
	}
	
	console.log("book_no",book_no);
	var book_title =$('#info_book_title');
	var book_author =$('#info_book_author');
	var book_img =$('#info_book_img');
	var book_publisher =$('#info_book_publisher');
	var book_isbn =$('#info_book_isbn');
	var book_rentable =$('#info_book_rentable');
	var book_publishdate =$('#info_book_publishdate');
	
	var saveBookNo =$('#returnBook_no');
	var saveBookTitle =$('#returnBook_title');
	
	var url="<%=request.getContextPath()%>/admin/quickRentAndReturn/bookReturnInfo.do";
	
	
	var data = {book_no : book_no};
	if(!book_no){
		 Swal.fire({
             icon: 'info',
             title: '도서번호를 입력해주세요 ',
          })
		return false;
	}
	
	$.ajax({
		url : url,
		type: 'post',
		data : data,
		success : function(data){
			saveBookNo.attr("value", data.book.book_no);
			saveBookTitle.attr("value", data.book.book_title);
			
			book_title.attr("value",data.book.book_title);
			book_author.attr("value",data.book.book_author);
			book_publisher.attr("value",data.book.book_publisher);
			book_isbn.attr("value",data.book.book_isbn);
			book_rentable.attr("value",data.book_rentable.book_rentable +"권");
			book_publishdate.attr("value",data.book.book_publishDate+"년");
			
			console.log(data);
			
			book_img.prop("src",data.book.book_imgURL) ;
			
		},
		error : function(error){
			Swal.fire({
                icon: 'warning',
                text: ' 도서가 존재하지 않습니다.'
             })
	}
	})
}

</script>


<script>
function closeClick(){
	window.close();
}
</script>



<script>
function bookReturn(){
	var url = "<%=request.getContextPath()%>/admin/quickRentAndReturn/returnBook.do";
	var mem_id_return = [$('#searchMemId').val()];
	console.log(mem_id_return);
	var bookList = [];
	book_gridOptions.api.forEachNode((obj,idx)=>{
	            console.log(obj);
	            bookList.push( obj.data.book_no);
	});
	console.log(bookList);
	
	
	var dataMap = {
				bookList : bookList,
				memId : mem_id_return
				}
	console.log("dataMap",dataMap)
	
	$.ajax({
		url : url,
		type: 'post',
		data : JSON.stringify(dataMap),
		contentType : "application/json; charset=UTF-8",
		success : function(data){
			 Swal.fire({
                 icon: 'success',
                 title: '반납 완료 ',
              })
              .then(function(){
            		location.reload();
              })
		},
	
		error : function(error){
			 Swal.fire({
                 icon: 'error',
                 title: '반납이 완료되지 않았습니다. ',
              })
	}
	});
}

// setInterval(function() {
// 	var pInput = document.getElementById("pInput").value;
// 	console.log(pInput);
// 	if(pInput){
// 		bookInfoSearch();
// 		}
// 	}, 2000);]

</script>



</body>






