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

#searchModal{
		font-family: 'Noto Sans KR', sans-serif;
	    position:fixed; 
        width: 100%;
        height:100%; /* fixed 일때는 요따로 써도 됨 */
        left:0;
        top:0;
        background-color: rgba(248,248,248, 0.8);
        z-index: 200;
        display: none;  /* 보통 초기에 안 보이겡 */
}
#modalContent {
		font-family: 'Noto Sans KR', sans-serif;
        margin: 20% auto;
        width: 50%;   /* 부모 기준 */
        height: 50%;
        left:50%;
        top:50%;
 }

</style>
</head>
<body class="container-xxl" >

	<section class="app-user-view-account">
				<!-- User Pills -->
				<ul class="nav nav-pills" style="padding-top: 10px; margin-bottom: -15px; padding-left: 14px;">
					<li class="nav-item"><a class="nav-link active" id="M050301"
						 onclick="location.href='<%=request.getContextPath()%>/admin/quickRentAndReturn/rent.do'"> <svg xmlns="http://www.w3.org/2000/svg" width="14"
								height="14" viewBox="0 0 24 24" fill="none"
								stroke="currentColor" stroke-width="2" stroke-linecap="round"
								stroke-linejoin="round"
								class="feather feather-user font-medium-3 me-50">
								<path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
								<circle cx="12" cy="7" r="4"></circle></svg> <span class="fw-bold">도서 대출</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" id="M050302"
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
	<div class="container" style="margin-top: 15px; margin-bottom: -15px;">
		<div class="row">
			<div class="col-6">
				<!-- Knowledge base Jumbotron -->

				<section id="basic-horizontal-layouts">
					<div class="row">
						<div class="col-md-12 col-12">
							<div class="card">
								<div>
									<div class="card-header" style="margin-bottom: -30px;">
										<h4 class="card-title">회원정보</h4>
									</div>
									<div class="card-body" style=" margin-bottom: -15px;">
										<form class="form form-horizontal">
											<div class="row">
												<div class="col-9">
													<div class="row" style="padding-top: 20px;">
														<div class="col-sm-3">
															<label class="col-form-label" for="first-name" >회원 아이디</label>
														</div>
														<div class="col-sm-9" style="margin-left: -40px;">
															<div class="input-group mb-2">
																<input type="text" class="form-control"
																	placeholder="회원 아이디를 입력해주세요" aria-label="Search..."
																	aria-describedby="basic-addon-search1" id="searchMemId" name="mem_id" value=""
																	onkeyup="if(window.event.keyCode==13){memInfoSearch()}"
																	/>
																<span class="input-group-text" id="basic-addon-search1"
																	onclick="memInfoSearch()"><i data-feather="search" 
																	></i></span>
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
															<div class="input-group  mb-2" >
																<input type="text" id="info_mem_name" name="mem_name"
																	class="form-control" name="contact"  placeholder="회원명를 입력해주세요"
																	onkeyup="if(window.event.keyCode==13){memNameInfoSearch()}"
																	  >
																	  <span class="input-group-text" id="basic-addon-search1"
																	onclick="memNameInfoSearch()"><i data-feather="search" 
																	></i></span>
																	 
																
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
										<div class="col-sm-9 offset-sm-10" style="margin-right: 20px;  margin-left: 89%;">
											<button type="reset" style="margin-top: -25px;"
												class="btn btn-primary me-1 waves-effect waves-float waves-light"  id="up" onclick="memInfoDel()">등록</button>
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
										<h4 class="card-title">도서정보</h4>
									</div>
									<div class="card-body" style="padding-bottom: 15px;"> 
										<form class="form form-horizontal"  style=" margin-bottom: -15px;">
											<div class="row" style="margin-bottom: -10px;">
												<div class="col-9" >
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
																	onclick="openBarcode()"><i data-feather="search" 
																	></i></span>
<!-- 																	 <input type="text" id="pInput" value="부모값"> -->
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

										<div class="col-sm-9 offset-sm-10" style="margin-right: 20px;  margin-left: 89%; margin-bottom: -10px;">
											<button type="reset"
												class="btn btn-primary me-1 waves-effect waves-float waves-light" onclick="bookInfoDel()">등록</button>
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
						<h4 class="card-title">회원정보</h4>
						<div>
						<h6>도서를 대출하는 회원의 정보입니다.</h6>
						<h6>정보가 일치하는지 다시 한 번 확인하여 주세요.</h6>
						</div>
					</div>
						<div id="mem_info" class="ag-theme-alpine" style="height: 130px; padding-top: -20px; border: solid 0px;" class="ag-theme-alpine"></div>
				</div>
				<!--/ Knowledge base Jumbotron -->
				
				<div class="card">
					<div class="card-header">
						<h4 class="card-title">도서 정보</h4>
						<h6>회원의 대출 가능권수 만큼 일괄 대여가 가능합니다.</h6>	
						
					</div>
						<div id="book_info" class="ag-theme-alpine" style="height: 345px; padding-top: 10px; border: solid 0px;" class="ag-theme-alpine"></div>
							<div class=" " style="width: 500px;"> 
							<div style="margin: 10px;" class=" row">
								<div class="col-4" style="width: 30%; text-align: center; margin-left: -25px;">
									<button type="reset" class="btn btn-primary  waves-effect waves-float waves-light" id="bookRent" onclick="bookRent()">대출하기</button>
								</div>
								<div class=" col-6" style="width: 50%; text-align: center; margin-left: -80px;">
									<button type="reset" class="btn btn-danger waves-effect waves-float waves-light" id="" onclick="closeClick()">창 닫기</button>
								</div>
								</div>
						</div>
				</div>
				
		
			</div>
			</div>

		</div>
		<!-- Basic Vertical form layout section end -->
		
		<!-- BEGIN modal -->
<div id="searchModal" >
	<div id="modalContent">
		<div class="card">
			<div class="card-header"><h3>회원 조회</h3></div>
			<div class="card-body">
				<div>
					<div class="row pd">
					<div id="rmlistDiv"></div>
					</div>
				</div>
			</div>
			<div class="card-footer d-flex  justify-content-end" >
				<div style="position: relative;"></div>
				<div style="float: right;">
					<button type="button"  class="btn btn-outline-primary" onclick="choiceRM();">선택</button>
					<button type="button"  class="btn btn-outline-primary" onclick="closeModal();">닫기</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END Modal -->
		
		


<div id="count" style="display: none;"> 0 </div>
<div id="comfirmBook_no"  style="display: none;"></div>
<input type="text" id="mem_id_save" value=""   style="display: none;"/>

		<!-- Basic Tables end -->
		
	
		
		  <script type="text/javascript" src="https://unpkg.com/@zxing/library@latest/umd/index.min.js"></script>
		
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

		<!-- BEGIN: Theme JS-->
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
		<!-- END: Theme JS-->
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
		

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
var bookData =[]

//회원 정보
const columnDefs = [
  {headerName:"회원아이디",field: "mem_id", width:120},
  {headerName:"회원명",field: "mem_name",  width:110},
  {headerName:"전화번호",field: "mem_phone",  width:200},
  {headerName:"등급",field: "mem_rank",  width:110},
  {headerName:"대출권수",field: "rent_book",  width:100}
];
const rowData = [
	  { mem_id: "example", mem_name: "북적북적", mem_phone: "010123445678",mem_rank:"알", rent_book:"0권"}
	];
	
const gridOptions = {
	 columnDefs: columnDefs,
	 rowData: rowData,
	 defaultColDef: {  // 모든 컬럼에 공통으로 주는 옵션 설정
	   sortable:true,
	   filter:false,
	   resizable:false,
	   editable:false,
	 },
	 pagination:false,
	 //paginationAutoPageSize:true,
	 paginationPageSize:2,  //위 AutoPageSize랑 배타적
};

document.addEventListener('DOMContentLoaded', () => {
    const gridDiv = document.querySelector('#mem_info');
    new agGrid.Grid(gridDiv, gridOptions);
});

function sizeToFit(){
	gridOptions.api.sizeColumnsToFit({defaultMinWidth: 100});
}


function memInfoDel(){
	
	comfirmBook_no = "";
	console.log("comfirmBook_no1",comfirmBook_no)
	
	
	bookData = [	]
	book_gridOptions.api.setRowData(bookData);
	
	var ag_mem_id = $('#mem_id_save').val();
	var ag_mem_name =$('#info_mem_name').val();
	var ag_mem_phone =$('#info_mem_phone').val();
	var ag_mem_rank =$('#info_mem_rank').val();
	var ag_member_rentBook =$('#info_member_rentBook').val();
	
	
	
	const data = [
			 { mem_id:ag_mem_id, mem_name: ag_mem_name, mem_phone :ag_mem_phone, mem_rank: ag_mem_rank, rent_book : ag_member_rentBook}
	]
	gridOptions.api.setRowData(data);
	sizeToFit();

	}
	
	var count = 0;
	var counter = document.querySelector('#count');
	document.querySelector('#up').addEventListener('click', function() {
	  count++;
	  counter.textContent = count; // 중복됨
	  console.log(count)
	});

//도서 정보 정의
const book_columnDefs = [
  {headerName:"도서번호",field: "book_no", width:115},
  {headerName:"제목",field: "book_title",  width:160},
  {headerName:"저자",field: "book_author",  width:90},
  {headerName:"출판사",field: "book_publisher",  width:90},
  {headerName:"ISBN",field: "book_isbn",  width:100},
  {headerName:"출판년도",field: "book_publishdate",  width:100}
];
const book_rowData = [
	  { book_no: "example", book_title: "example", book_author: "35000",book_publisher:"1000", book_isbn:"1000", book_publishdate:"1000"}
	];
	
const book_gridOptions = {
	 columnDefs: book_columnDefs,
	 rowData: book_rowData,
	 defaultColDef: {  // 모든 컬럼에 공통으로 주는 옵션 설정
	   sortable:true,
	   filter:false,
	   resizable:false,
	   editable:false,
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



var comfirmBook_no = document.querySelector('#comfirmBook_no').textContent;

function bookInfoDel(){
	
	// 대출 가능 권수	
	var mem_rentBook = $('#info_member_rentBook').val();
	var mem_rentBook_no = parseInt(mem_rentBook.substr(0, 1));
	
	var ag_book_no = $('#searchBookNo').val();
	var ag_book_title =$('#info_book_title').val()
	var ag_book_author =$('#info_book_author').val();
	var ag_book_publisher =$('#info_book_publisher').val();
	var ag_book_isbn =$('#info_book_isbn').val();
	var ag_book_publishdate =$('#info_book_publishdate').val();
	
	
	var book_data = { book_no : ag_book_no, book_title: ag_book_title, book_author :ag_book_author, book_publisher: ag_book_publisher,
				 book_isbn : ag_book_isbn, book_publishdate: ag_book_publishdate}
	// 대출 가능 권수
	var rent_agree_count = mem_rentBook_no;
	
	if(mem_rentBook_no + bookData.length > 4){
		 Swal.fire({
             icon: 'info',
             text: '대출권수 한도를 초과하였습니다.  '
          }). then(function(){
        		return false;
           })
	
	};
	
	
	// 동일한 도서 거르는 부분
	console.log(" bookData.length", bookData.length);
	comfirmBook_no += book_data.book_no + ","
	var words = comfirmBook_no.split(',');
	for (i = 0 ; i <= bookData.length; i++){
	
		if (words[i] == words[i+1]) {
			comfirmBook_no = comfirmBook_no.replace( words[i+1]+"," ,'')
			 Swal.fire({
                 icon: 'warning',
                 text: ' 동일한 도서는 빌릴 수 없습니다.'
              }). then(function(){
          		return false;
              })
		}
	}
	
	bookData.push(book_data)
	book_gridOptions.api.setRowData(bookData);
	book_sizeToFit();

	}

function bookRent(){
	var url = "<%=request.getContextPath()%>/admin/quickRentAndReturn/rentBook.do";
	var memList = [];
	var bookList = [];
	
	gridOptions.api.forEachNode((obj,idx)=>{
        console.log(obj);
        memList.push( obj.data.mem_id);
	});
	
	book_gridOptions.api.forEachNode((obj,idx)=>{
	            console.log(obj);
	            bookList.push( obj.data.book_no);
	});
	console.log(memList);
	console.log(bookList);
	
	
	var dataMap = {"memList" : memList,
				"bookList" : bookList
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
                 title: '대출 완료 ',
              })  .then(function(){
            		location.reload();
               })
		},
	
		error : function(error){
			Swal.fire({
                icon: 'warning',
                title: ' ',
                text: '대출이 완료되지 않았습니다. '
             })
	}
	});
}
</script>

<script>
function memInfoSearch(memberList){
	console.log("memberList",memberList);
	
	var memId = $('#searchMemId').val();
	var mem_id_pla = $('#searchMemId');
	var mem_id_save = $('#mem_id_save');
	console.log("memId",memId)
	
	if (memberList) {
		memId = memberList.mem_id;
		console.log("여기 실행됨")
	}
	
	console.log("memId",memId);
	var mem_name =$('#info_mem_name');
	var mem_phone =$('#info_mem_phone');
	var mem_img =$('#info_mem_img');
	var mem_rank =$('#info_mem_rank');
	var member_rentBook =$('#info_member_rentBook');
	
	var url="<%=request.getContextPath()%>/admin/quickRentAndReturn/memInfo.do";
	
	if(!memId){
		console.log("memId",memId);
		 Swal.fire({
             icon: 'info',
             title: '아이디를 입력해주세요 ',
          })
		return false;
	}
	
	var data = {mem_id : memId};
	
	$.ajax({
		url : url,
		type: 'post',
		data : data,
		success : function(data){
			mem_id_pla.prop("value","");
			mem_id_pla.prop("placeholder",data.member.mem_id);
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
					mem_img.prop("src","<%=request.getContextPath()%>"+data.member.mem_img) ;
				}else{
					mem_img.prop("src","<%=request.getContextPath()%>/resources/images/책박이.PNG")
				} 
		},
	
		error : function(error){
			 Swal.fire({
	             icon: 'warning',
	             title: '아이디가 존재하지 않습니다. ',
	          })
	}
	})
}
var memberList =[];

function memNameInfoSearch(){
	
	var mem_id_pla = $('#searchMemId');
	var mem_id_save = $('#mem_id_save');
	
	
	var mem_name =$('#info_mem_name').val();
	var mem_name_pla =$('#info_mem_name');
	var mem_phone =$('#info_mem_phone');
	var mem_img =$('#info_mem_img');
	var mem_rank =$('#info_mem_rank');
	var member_rentBook =$('#info_member_rentBook');
	
	var url="<%=request.getContextPath()%>/admin/quickRentAndReturn/memNameInfo.do";
	
	if(!mem_name){
		console.log("mem_name",mem_name);
		Swal.fire({
            icon: 'warning',
            title: '이름을 입력해주세요',
         })
		return false;
	}
	
	var data = {mem_name : mem_name};
	
	
	$.ajax({
		url : url,
		type: 'post',
		data : data,
		success : function(data){
			memberList = data.memberList
				console.log(memberList)
				console.log(memberList.length)
				if (memberList.length == 0 ) {
					 Swal.fire({
		                 icon: 'warning',
		                 title: '회원이 존재하지 않습니다.',
		                 text: ' '
		              })
	 				return false;
				}
				
				if (memberList.length == 1) {
				console.log("data",data[0])	
				mem_id_pla.prop("value","");
				mem_id_pla.prop("placeholder",memberList[0].mem_id);
				mem_id_save.prop("value",memberList[0].mem_id);
				mem_name_pla.prop("value",memberList[0].mem_name);
				mem_phone.prop("value",memberList[0].mem_phone);
				member_rentBook.attr("value",memberList[0].rentBookCount+"권")
			
				if(memberList[0].mem_rank == 1){
					mem_rank.prop("value","알");
				}else if(memberList[0].mem_rank == 2){
					mem_rank.prop("value","책벌레");
				}else if(memberList[0].mem_rank == 3){
					mem_rank.prop("value","책책박사");
				}
			
				if(memberList[0].mem_img != null){
					mem_img.prop("src","<%=request.getContextPath()%>"+data.member.mem_img) ;
				}else{
					mem_img.prop("src","<%=request.getContextPath()%>/resources/images/책박.PNG")
				} 
			} else if(memberList.length > 1){
				var v_table = "<table style='width: 100%; border-width:1px;'>";
				  v_table += "<tr>";
                 v_table += "<td>" + "선택" + "</td>";
                 v_table += "<td>" + "회원아이디" + "</td>";
                 v_table += "<td>" + "회원이름" + "</td>";
                 v_table += "<td>" + "나이"  + "</td>";
                 v_table += "<td>" + "생년월일"  + "</td>";
                 v_table += "<td>" + "전화번호"  + "</td>";
                 v_table += "</tr>";
					for (var i = 0; i < memberList.length; i++) {
						var mem_id_mo = memberList[i].mem_id;
						var mem_name_mo = memberList[i].mem_name;
						var mem_age_mo = memberList[i].mem_age;
						var mem_birth_mo = memberList[i].mem_birth;
						var mem_phone_mo = memberList[i].mem_phone;
						v_table += "<tr>";
	                   v_table += "<td>" + "<input type='radio' name = 'number' class='form-check-input' value = '"+i+"'></td>";
	                   v_table += "<td>" + mem_id_mo + "</td>";
	                   v_table += "<td>" + mem_name_mo  + "</td>";
	                   v_table += "<td>" + mem_age_mo + "</td>";
	                   v_table += "<td>" + mem_birth_mo  + "</td>";
	                   v_table += "<td>" + mem_phone_mo  + "</td>";
	                   v_table += "</tr>";
					}	         				
					 v_table += "</table>";
					 document.querySelector("#rmlistDiv").innerHTML += v_table;
					 console.log("모달창")
					 searchRM();
					 
					 return false;
				} else if (data.length == 0) {
					 Swal.fire({
		                 icon: 'warning',
		                 title: '회원이 존재하지 않습니다. ',
		              })
 				return false;
				} 
				memInfoSearch(memberList[0])
		},
	
		error : function(error){
			Swal.fire({
                icon: 'warning',
                title: '회원이 존재하지 않습니다. ',
             })
		return false;
	}
	})
}

</script>

<script>
	function searchRM(){
		var smodal = document.querySelector("#searchModal");
		smodal.style.display = "block";
	}
	function choiceRM(){
		var smodal = document.querySelector("#searchModal");
		var checkVal = $('input[name=number]:checked').val();
		console.log("checkVal",checkVal)
		memInfoSearch(memberList[checkVal]);
		console.log(memberList[checkVal]);
		document.querySelector("#rmlistDiv").innerHTML = "";
		smodal.style.display = "none";
	}
	function closeModal(){
		var smodal = document.querySelector("#searchModal");
		document.querySelector("#rmlistDiv").innerHTML = "";
		smodal.style.display = "none";
	}
	</script>
	

	
<script>

function bookInfoSearch(){
	
	var ag_mem_id = $('#mem_id_save').val();
	var ag_mem_name =$('#info_mem_name').val();
	
	var counter = document.querySelector('#count').textContent;
	
	console.log("ag_mem_id",ag_mem_id);
	console.log("counter",counter);
	if(ag_mem_id == "" || ag_mem_name == "" || counter == 0){
		 Swal.fire({
             icon: 'warning',
             text: '회원 아이디를 먼저 검색해주세요 ',
          })
		return false;
	}
	if(counter == 0){
		 Swal.fire({
             icon: 'warning',
             text: '회원 정보를 입력해주세요. ',
          })
		return false;
	}
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
	
	var url="<%=request.getContextPath()%>/admin/quickRentAndReturn/bookInfo.do";
	
	
	var data = {book_no : book_no};
	if(!book_no){
		 Swal.fire({
             icon: 'warning',
             title: '도서번호를 입력해주세요 ',
          })
		return false;
	}
	
	$.ajax({
		url : url,
		type: 'post',
		data : data,
		success : function(data){
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
	             title: '도서가 존재하지 않습니다. ',
	          })
			return false;
	}
	})
}
function openBarcode(){
	
	var ag_mem_id = $('#mem_id_save').val();
	var ag_mem_name =$('#info_mem_name').val();
	
	var counter = document.querySelector('#count').textContent;
	
	console.log("ag_mem_id",ag_mem_id);
	console.log("counter",counter);
	if(ag_mem_id == "" || ag_mem_name == "" || counter == 0){
		 Swal.fire({
             icon: 'warning',
             text: '회원 아이디를 먼저 검색해주세요 ',
          })
		return false;
	}
	if(counter == 0){
		 Swal.fire({
             icon: 'warning',
             text: '회원 정보를 입력해주세요." ',
          })
		return false;
	}
	
	OpenWindow('${webPath}/admin/quickRentAndReturn/barcodeScan.do','바코드스캔',600,750);
}

// setInterval(function() {
// 	var pInput = document.getElementById("pInput").value;
// 	console.log(pInput);
// 	if(pInput){
// 		bookInfoSearch();
// 		}
// 	}, 2000);
</script>
<script>
function closeClick(){
	window.close();
}
</script>
  

</body>

