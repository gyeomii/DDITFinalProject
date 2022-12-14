
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="reserveList" value="${dataMap.reserveList }" />
<c:set var="reservePastList" value="${dataMap.reservePastList }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
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
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
<!-- END: Custom CSS-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style type="text/css">
.table td {
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	font-size: 15px;
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
<!--                                 <li class="nav-item"> -->
<%--                                     <a class="nav-link"  id="M050304"   onclick="goPage('<%=request.getContextPath()%>/main/myBook/returnList.do','M050304','ifr')"> --%>
<!--                                         <i data-feather="bookmark" class="font-medium-3 me-50"></i> -->
<!--                                         <span class="fw-bold">?????? ?????? ?????? </span> -->
<!--                                     </a> -->
<!--                                 </li> -->
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

	
		
	<c:if test="${!empty reserveList or !empty reservePastList}">
		<c:if test="${!empty reserveList}">
		<div class="card">
				<div style="padding-left: 30px; padding-top: 30px;">
					<button type="button" class="btn btn-flat-primary round active"
						id="" > ?????? ?????? ??????</button>
					
				</div>
	
				<div class="card-body my-2 py-25">
					<div class="table-responsive">
						<table id="table"
							class="table table-bordered text-nowrap text-center"
							style="text-align: center; table-layout: fixed;">
							<thead>
								<tr>
									<th width="15%">????????????</th>
									<th width="15%">??????????????????</th>
									<th width="20%">??????</th>
									<th width="25%">??????</th>
									<th width="10%"></th>
									<th width="10%"></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${reserveList}" var="rm">
									<tr>
										<td><fmt:formatDate value="${rm.rm_date}" pattern="yyyy-MM-dd"/>
											</td>
										<td><fmt:formatDate value="${rm.want_date}" pattern="yyyy-MM-dd"/>
											</td>
										<c:if test="${rm.rent_status == 0 }">
												<td>????????????</td>
											</c:if>
											<c:if test="${rm.rent_status == 1 }">
												<td>????????????</td>
											</c:if>
											<c:if test="${rm.rent_status == 2 }">
												<td>???????????????</td>
											</c:if>
											<c:if test="${rm.rent_status == 3 }">
												<td>????????????</td>
											</c:if>
											<c:if test="${rm.rent_status == 4 }">
												<td>????????????</td>
											</c:if>
											<c:if test="${rm.rent_status == 6 }">
												<td>????????????(?????????)</td>
											</c:if>
										<c:if test="${!empty rm.dv_date}">
												<td><fmt:formatDate value="${rm.dv_date}" pattern="yyyy-MM-dd"/>(???????????????)
												</td>
										</c:if>
										<c:if test="${!empty rm.dt_car_no}">
												<td>${rm.dt_car_no}
												</td>
										</c:if>
										<c:if test="${!empty rm.locker_num}">
												<td>${rm.locker_num}
												</td>
										</c:if>
										<c:if test="${empty rm.locker_num and empty rm.dt_car_no and empty rm.dv_date}">
												<td>????????????
												</td>
										</c:if>
										<td>
												<button type="button"
													class="btn btn-primary waves-effect waves-float waves-light"
													 style="width: 45px; height: 30px; font-size: 10px; padding: 0px;" onclick="reserveBookList('${rm.rm_no}','??????',${rm.rent_status})">
													???????????? </button>
											</td>
											<c:if test="${rm.rent_status == 0 }">
													<td><span
												class="badge rounded-pill badge-light-primary me-1" onclick="reserveCancel('${rm.rm_no}','??????')">??????</span></td>
											</c:if>
											<c:if test="${rm.rent_status != 0 }">
												<td></td>
											</c:if>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			</c:if>
			
				<c:if test="${empty reserveList}">
			<div  style="text-align: center; "> 
				<img src="<%=request.getContextPath()%>/resources/img/notReserve.png"  >
				<br>
				<hr>
				<a onclick="pageGO('<%=request.getContextPath()%>/main/ai/recommand1.do','M040000','AI ?????? ??????')" > 
				<img src="<%=request.getContextPath()%>/resources/img/AI.png"  >
				</a>
				<br>
				<br>
				<br>
			</div>
			</c:if>
		<c:if test="${!empty reservePastList}">
			<div class="card">
				<div style="padding-left: 30px; padding-top: 30px;">
					<button type="button" class="btn btn-flat-danger round active"
						id="" > ?????? ?????? ?????? ??????</button>
					
				</div>
				<div style="padding-top: 10px; padding-left: 10px; display: none;" >
					<select class="form-control col-md-3" name="perPageNum"
						id="perPageNum" onchange="list_go(1);" style="display: none;">
						<option value="5"></option>
					</select>
					<div style="padding-left: 10px; padding-top: 10px;">
						<div class="kb-search-input" style="float: left;">
							<div class="input-group input-group-merge"
								style="height: 30px; width: 320px; margin-left: 20px; margin-top: 10px;">
							</div>
						</div>
					</div>
				</div>
	
				<div class="card-body my-2 py-25">
					<div class="table-responsive">
						<table id="table"
							class="table table-bordered text-nowrap text-center"
							style="text-align: center; table-layout: fixed;">
							<thead>
								<tr>
									<th width="15%">????????????</th>
									<th width="15%">??????????????????</th>
									<th width="20%">??????</th>
									<th width="25%">??????</th>
									<th width="10%"></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${reservePastList}" var="rePast">
									<tr>
										<td><fmt:formatDate value="${rePast.rm_date}" pattern="yyyy-MM-dd"/>
											</td>
										<td><fmt:formatDate value="${rePast.want_date}" pattern="yyyy-MM-dd"/>
											</td>
										<c:if test="${rePast.rent_status == 0 }">
												<td>????????????</td>
											</c:if>
											<c:if test="${rePast.rent_status == 1 }">
												<td>????????????</td>
											</c:if>
											<c:if test="${rePast.rent_status == 2 }">
												<td>???????????????</td>
											</c:if>
											<c:if test="${rePast.rent_status == 3 }">
												<td>????????????</td>
											</c:if>
											<c:if test="${rePast.rent_status == 4 }">
												<td>????????????</td>
											</c:if>
											<c:if test="${rePast.rent_status == 5 }">
												<td>????????????</td>
											</c:if>
											<c:if test="${rePast.rent_status == 6 }">
												<td>????????????(?????????)</td>
											</c:if>
										<c:if test="${!empty rePast.dv_date}">
												<td><fmt:formatDate value="${rePast.dv_date}" pattern="yyyy-MM-dd"/>(???????????????)
												</td>
										</c:if>
										<c:if test="${!empty rePast.dt_car_no}">
												<td>(??????????????????) ${rePast.dt_car_no}
												</td>
										</c:if>
										<c:if test="${!empty rePast.locker_num}">
												<td>(?????????)${rePast.locker_num}
												</td>
										</c:if>
										<c:if test="${empty rePast.locker_num and empty rePast.dt_car_no and empty rePast.dv_date}">
												<td>????????????
												</td>
										</c:if>
										<td>
											
												<button type="button"
													class="btn btn-primary waves-effect waves-float waves-light"
													 style="width: 45px; height: 30px; font-size: 10px; padding: 0px;" onclick="reserveBookList('${rePast.rm_no}','??????',${rePast.rent_status})">
													???????????? </button>
											</td>
										
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
								<div class="card-footer">
					<%@ include file="/WEB-INF/views/include/pagination.jsp"%>
				</div>
					
				</div>
			</div>
		</c:if>
			<c:if test="${empty reservePastList}">
		<div  style="text-align: center; ">
		<img src="<%=request.getContextPath()%>/resources/img/notPastReserve.png"  >
			<br>
			<hr>
		</div>
		</c:if>
			
		
		</c:if>
		
		<c:if test="${empty reserveList and empty reservePastList}">
		               	<div  style="text-align: center; ">
		               	
							<img src="<%=request.getContextPath()%>/resources/img/reserve.png"  >
							<br>
							<hr>
							<a onclick="pageGO('<%=request.getContextPath()%>/main/ai/recommand1.do','M040000','AI ?????? ??????')" > 
							<img src="<%=request.getContextPath()%>/resources/img/AI.png"  >
							</a>
							<br>
							<hr>
							<a onclick="pageGO('<%=request.getContextPath()%>/main/search/bestList.do','M020400','????????? ??????')" >
							<img src="<%=request.getContextPath()%>/resources/img/best.png" >
							</a>
							<br>
							<hr>
							<a onclick="pageGO('<%=request.getContextPath()%>/main/search/recommandList.do','M020300','????????? ?????? ??????')">
							<img src="<%=request.getContextPath()%>/resources/img/recommend.png" >
							</a>
                      		</div>
                      		  <div class="card-body" style="padding-top: 0px; padding-bottom: 0px;">
	                        </div>     
                   	</c:if>

	<!--/ connection -->
	
	
	


	<!-- END: content-->


	<!-- Basic Tables end -->
	<div class="card-footer"></div>

	<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

	<script src="<%=request.getContextPath()%>/resources/js/member.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>


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
	
	console.log('${reserveList}')
	console.log('${reservePastList}')
	
function list_go(page, url){
	   if(!url) url="<%=request.getContextPath()%>/main/myBook/waitingList.do";
// 	   alert("????????? : " + document.querySelector("input[name='keyword']").value)

				var jobForm = $('#jobForm');
				jobForm.find("[name='page']").val(page);
				jobForm.find("[name='perPageNum']").val(
						$('select[name="perPageNum"]').val());
				jobForm.find("[name='searchType']").val(
						$('select[name="searchType"]').val());
				jobForm.find("[name='keyword']").val(
						$('div.input-group>input[name="keyword"]').val());
				jobForm.attr({
					action : url,
					method : 'get'
				}).submit();
			}
   </script>
	
	<script>
	function reserveBookList(rm_no,text,status){
		var rm_no = rm_no;
		var title_text = text;
		var rm_status = status;
		console.log(rm_no);
		var url = "<%=request.getContextPath()%>/main/myBook/waitingBookList.do?rm_no="+rm_no+"&rm_status="+rm_status;
		
		OpenWindow(url, title_text+'?????? ???????????????', 800, 600);
	}
	
	</script>
	
	
	<script type="text/javascript">
		function reserveCancel(rm_no, take){
			var rmNo = rm_no;
			var takeMethod = take;
			Swal.fire({
				   title: takeMethod +" ????????? ?????????????????????????",
				   icon: 'info',
				   
				   showCancelButton: true, // cancel?????? ?????????. ????????? ?????? ??????
				   confirmButtonColor: '#3085d6', // confrim ?????? ?????? ??????
				   cancelButtonColor: '#d33', // cancel ?????? ?????? ??????
				   confirmButtonText: '??????', // confirm ?????? ????????? ??????
				   cancelButtonText: '??????', // cancel ?????? ????????? ??????
				   
				   reverseButtons: false, // ?????? ?????? ?????????
				   
				}).then(result => {
				   // ?????? Promise????????? ?????????,
				   if (result.isConfirmed) { // ?????? ??????????????? confirm ????????? ????????????
					   cancelAJAX(rmNo)
				   } else{
					   Swal.fire({
			                 icon: 'success',
			                 title: ' ????????? ?????? ?????? ???????????????.',
			              })
				   }
				});
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
					Swal.fire({
		                 icon: 'success',
		                 title: ' ????????? ?????? ??????????????? .',
		                 text: ' '
		              })
		               .then(function(){
		            		location.reload(true);
		               })
				}
				
			});
		}
		
		function pageGO(url, mCode, text){
			var url = url;
			var mCode = mCode;
			var text = text;
			
			Swal.fire({
					 title: "",
					text : text +"????????? ?????????????????????????",
				   icon: 'info',
				   
				   showCancelButton: true, // cancel?????? ?????????. ????????? ?????? ??????
				   confirmButtonColor: '#3085d6', // confrim ?????? ?????? ??????
				   cancelButtonColor: '#d33', // cancel ?????? ?????? ??????
				   confirmButtonText: '??????', // confirm ?????? ????????? ??????
				   cancelButtonText: '??????', // cancel ?????? ????????? ??????
				   
				   reverseButtons: false, // ?????? ?????? ?????????
				   
				}).then(result => {
				   // ?????? Promise????????? ?????????,
				   if (result.isConfirmed) { // ?????? ??????????????? confirm ????????? ????????????
						goPage(url,mCode,'ifr');
				   }
				});
			
			}
	</script>
	




</body>






