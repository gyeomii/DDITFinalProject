
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="takeLibraryList" value="${dataMap.takeLibraryList }" />
<c:set var="takeDeliveryList" value="${dataMap.takeDeliveryList }" />
<c:set var="takeDriveThruList" value="${dataMap.takeDriveThruList }" />
<c:set var="takeLockerList" value="${dataMap.takeLockerList }" />

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
<title>Dashboard ecommerce - Vuexy - Bootstrap HTML admin
	template</title>
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
<!-- END: Custom CSS-->
<style type="text/css">
.table td {
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	font-size: 10px;
}
</style>
</head>
<body class="container-xxl">
	<!-- User Content -->
	 <section class="app-user-view-account">
                    <div class="row">
                        <div class="col-xl-12 col-lg-7 col-md-7 order-0 order-md-1">
                            <!-- User Pills -->
                            <ul class="nav nav-pills mb-2">
                                <li class="nav-item">
                                    <a class="nav-link "  id="M050301" onclick="goPage('<%=request.getContextPath()%>/main/myBook/rentList.do','M050301','ifr');" >
                                        <i data-feather="user" class="font-medium-3 me-50"></i>
                                        <span class="fw-bold">MY ?????? ??????</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  id="M050302"   onclick="goPage('<%=request.getContextPath()%>/main/myBook/reviewList.do','M050302','ifr')">
                                        <i data-feather="bookmark" class="font-medium-3 me-50"></i>
                                        <span class="fw-bold">MY ??????</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active"  id="M050303"   onclick="goPage('<%=request.getContextPath()%>/main/myBook/waitingList.do','M050303','ifr')" >
                                        <i data-feather="lock" class="font-medium-3 me-50"></i>
                                        <span class="fw-bold">MY ?????? ??????</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  id="M050304"   onclick="goPage('<%=request.getContextPath()%>/main/myBook/returnList.do','M050304','ifr')">
                                        <i data-feather="bookmark" class="font-medium-3 me-50"></i>
                                        <span class="fw-bold">?????? ?????? ?????? </span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  id="M050305"   onclick="goPage('<%=request.getContextPath()%>/main/myBook/myWishBook.do','M050305','ifr')">
                                        <i data-feather="bookmark" class="font-medium-3 me-50"></i>
                                        <span class="fw-bold">?????? ?????? ??????  </span>
                                    </a>
                                </li>
                            </ul>
                            <!--/ User Pills -->
                        </div>
                    </div>
                </section>
                <div class="content-header row">
                <div class="content-header-left col-md-9 col-12 mb-2">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h2 class="content-header-title float-start mb-0">MY ????????????</h2>
                            <div class="breadcrumb-wrapper">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item ">Home
                                    </li>
                                    <li class="breadcrumb-item ">My Library
                                    </li>
                                 
									<li class="breadcrumb-item active"><a href="#">MY ?????? ??????</a>
                                    </li>
                                      </ol>
                            </div>
                        </div>
                    </div>
                </div>
	</div>

	
	<!-- Project table -->
	<div class="card-header border-bottom">
							<h6 class="card-title"> ????????? ?????????????????? ??????????????? ???????????????.</h6>
							<h6 class="card-title"> ????????? ??????????????? ??????????????????</h6>
							<h6 class="card-title"> ????????? ????????? 4?????? ???????????? ????????? ????????? ???????????? ???????????? ????????? ?????????????</h6>
							<h6 class="card-title"> ??????????????? ????????????????????? ??????. ?????? ????????? ?????????????????????</h6>
						</div>
		
		<div class="row match-height">
		<div class="col-md-6 col-12">
			<div class="row" id="table-small">
				<div class="col-12">
					<div class="card">
						<div class="card-header border-bottom">
							<h4 class="card-title">??????</h4>
						</div>
						<div class="card-body pt-2">
							<p class="card-text">
								??????
								<code class="highlighter-rouge">????????? ?????? ??????</code>
								?????????.
							</p>
						
						<div class="table-responsive">
							<table class="table table-sm">
								<thead>
									<tr>
										<th>????????????</th>
										<th>????????????</th>
										<th>??????</th>
										<th></th>
										<th></th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${takeLibraryList}" var="library">
									<tr>
										<td>????????????</td>
										<td>????????????</td>
										<c:if test="${library.rent_status == 0 }">
											<td>????????????</td>
										</c:if>
										<c:if test="${library.rent_status == 1 }">
											<td>????????????</td>
										</c:if>
										<c:if test="${library.rent_status == 2 }">
											<td>???????????????</td>
										</c:if>
										<c:if test="${library.rent_status == 3 }">
											<td>????????????</td>
										</c:if>
										<c:if test="${library.rent_status == 4 }">
											<td>????????????</td>
										</c:if>
										<c:if test="${library.rent_status == 6 }">
											<td>????????????(?????????)</td>
										</c:if>
										<td>
											<button type="button"
												class="btn btn-primary waves-effect waves-float waves-light"
												 style="width: 45px; height: 30px; font-size: 10px; padding: 0px;" onclick="reserveBookList('${library.rm_no}','??????')">
												???????????? </button>
										</td>
										<c:if test="${library.rent_status == 0 }">
												<td><span
											class="badge rounded-pill badge-light-primary me-1" onclick="reserveCancel('${library.rm_no}','??????')">??????</span></td>
										</c:if>
										<c:if test="${library.rent_status != 0 }">
											<td></td>
										</c:if>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				</div>
			</div>
		</div>
		<div class="col-md-6 col-12">
			<div class="card">
				<div class="card-header border-bottom">
					<h4 class="card-title">?????? ?????????</h4>
				</div>
				<div class="card-body pt-2">
					<p class="card-text">
								??????
								<code class="highlighter-rouge">?????? ????????? ?????? ??????</code>
								?????????.
							</p>
						<div class="table-responsive">
							<table class="table table-sm">
								<thead>
									<tr>
										<th>?????????</th>
										<th>???????????????</th>
										<th>????????? ??????</th>
										<th>??????</th>
										<th></th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${takeLockerList}" var="locker">
									<tr>
										<td>????????????</td>
										<td>????????????</td>
										<td>${locker.locker_num }</td>
										<c:if test="${locker.rent_status == 0 }">
											<td>????????????</td>
										</c:if>
										<c:if test="${locker.rent_status == 1 }">
											<td>????????????</td>
										</c:if>
										<c:if test="${locker.rent_status == 2 }">
											<td>???????????????</td>
										</c:if>
										<c:if test="${locker.rent_status == 3 }">
											<td>????????????</td>
										</c:if>
										<c:if test="${locker.rent_status == 4 }">
											<td>????????????</td>
										</c:if>
										<c:if test="${locker.rent_status == 6 }">
											<td>????????????(?????????)</td>
										</c:if>
										<td>
										<button type="button"
												class="btn btn-primary waves-effect waves-float waves-light"
												 style="width: 45px; height: 30px; font-size: 10px; padding: 0px;" onclick="reserveBookList('${locker.rm_no}','?????? ?????????')">
												???????????? </button>
										</td>
										<c:if test="${locker.rent_status == 0 }">
												<td><span
											class="badge rounded-pill badge-light-primary me-1" onclick="reserveCancel('${locker.rm_no}','?????? ?????????')">??????</span></td>
										</c:if>
										<c:if test="${locker.rent_status != 0 }">
											<td></td>
										</c:if>
										
										
									</tr>
									</c:forEach>
									
								</tbody>
							</table>
						</div>
					
					<!-- /Social Accounts -->
				</div>
			</div>
		</div>
		</div>
		
		<!--  ???????????? ?????? / ?????? -->
		<div class="row match-height">
		<div class="col-md-6 col-12">
			<div class="card">
				<div class="card-header border-bottom">
					<h4 class="card-title">??????????????????</h4>
				</div>
				<div class="card-body pt-2">
					<p class="card-text">
								??????
								<code class="highlighter-rouge">???????????? ?????? ?????? ??????</code>
								?????????.
							</p>
						<div class="table-responsive">
							<table class="table table-sm">
								<thead>
									<tr>
										<th>?????????</th>
										<th>???????????????</th>
										<th>????????????</th>
										<th>??????</th>
										<th></th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${takeDriveThruList}" var="drive">
									<tr>
										<td>????????????</td>
										<td>????????????</td>
										<td>${drive.dt_car_no }</td>
										<c:if test="${drive.rent_status == 0 }">
											<td>????????????</td>
										</c:if>
										<c:if test="${drive.rent_status == 1 }">
											<td>????????????</td>
										</c:if>
										<c:if test="${drive.rent_status == 2 }">
											<td>???????????????</td>
										</c:if>
										<c:if test="${drive.rent_status == 3 }">
											<td>????????????</td>
										</c:if>
										<c:if test="${drive.rent_status == 4 }">
											<td>????????????</td>
										</c:if>
										<c:if test="${drive.rent_status == 6 }">
											<td>????????????(?????????)</td>
										</c:if>
										<td>
											<button type="button"
												class="btn btn-primary waves-effect waves-float waves-light"
												 style="width: 45px; height: 30px; font-size: 10px; padding: 0px;" onclick="reserveBookList('${drive.rm_no}','???????????? ??????')">
												???????????? </button>
										</td>
										<c:if test="${drive.rent_status == 0 }">
												<td><span
											class="badge rounded-pill badge-light-primary me-1" onclick="reserveCancel('${drive.rm_no}','???????????? ??????')">??????</span></td>
										</c:if>
										<c:if test="${drive.rent_status != 0 }">
											<td></td>
										</c:if>
										
										
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					
					<!-- /Social Accounts -->
				</div>
			</div>
		</div>
		<div class="col-md-6 col-12">
			<div class="card">
				<div class="card-header border-bottom">
					<h4 class="card-title">??????</h4>
				</div>
				<div class="card-body pt-2">
					<p class="card-text">
								??????
								<code class="highlighter-rouge">?????? ?????? ??????</code>
								?????????.
							</p>
						<div class="table-responsive">
							<table class="table table-sm">
								<thead>
									<tr>
										<th>?????????</th>
										<th>?????? ?????????</th>
										<th>??????</th>
										<th></th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${takeDeliveryList}" var="delivery">
									<tr>
										<td>????????????</td>
										<td>${delivery.dv_duedate  }</td>
										<c:if test="${delivery.rent_status == 0 }">
											<td>????????????</td>
										</c:if>
										<c:if test="${delivery.rent_status == 1 }">
											<td>????????????</td>
										</c:if>
										<c:if test="${delivery.rent_status == 2 }">
											<td>???????????????</td>
										</c:if>
										<c:if test="${delivery.rent_status == 3 }">
											<td>????????????</td>
										</c:if>
										<c:if test="${delivery.rent_status == 4 }">
											<td>????????????</td>
										</c:if>
										<c:if test="${delivery.rent_status == 6 }">
											<td>????????????(?????????)</td>
										</c:if>
										<td>
											<button type="button"
												class="btn btn-primary waves-effect waves-float waves-light"
												 style="width: 45px; height: 30px; font-size: 10px; padding: 0px;" onclick="reserveBookList('${delivery.rm_no}','??????')">
												???????????? </button>
										</td>
										<c:if test="${delivery.rent_status == 0 }">
												<td><span
											class="badge rounded-pill badge-light-primary me-1" onclick="reserveCancel('${delivery.rm_no}','??????')">??????</span></td>
										</c:if>
										<c:if test="${delivery.rent_status != 0 }">
											<td></td>
										</c:if>
										
										
									</tr>
									</c:forEach>
									
								</tbody>
							</table>
						</div>
					
					<!-- /Social Accounts -->
				</div>
			</div>
		</div>
		</div>
		
		
		

	<!--/ connection -->
	
	
	


	<!-- END: content-->


	<!-- Basic Tables end -->
	<div class="card-footer"></div>

	<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

	<script src="<%=request.getContextPath()%>/resources/js/member.js"></script>



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
	<%@ include file="../../../common/index_js.jsp" %>   
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
	function reserveBookList(rm_no,text){
		var rm_no = rm_no;
		var title_text = text;
		console.log(rm_no);
		var url = "<%=request.getContextPath()%>/main/myBook/waitingBookList.do?rm_no="+rm_no;
		
		OpenWindow(url, title_text+'?????? ???????????????', 800, 600);
	}
	
	</script>
	
	
	<script type="text/javascript">
		function reserveCancel(rm_no, take){
			var rmNo = rm_no;
			var takeMethod = take;
			
			if(confirm(takeMethod +" ????????? ?????????????????????????")){
				cancelAJAX(rmNo)
			
			} else{
				alert("????????? ?????? ?????? ???????????????.")
				return false;
			}
		}
		
		function cancelAJAX(rmNo){
			console.log("ajax",rmNo);
			var url = "<%=request.getContextPath()%>/main/myBook/waitingListCancel.do";
			
			var data ={rm_no : rmNo}
			
			$.ajax({
				
				url : url,
				type : 'post',
				data: data,
				success : function(data){
					alert("????????? ?????? ??????????????? .");
					location.reload(true);
				}
				
			});
		}
	</script>
	




</body>






