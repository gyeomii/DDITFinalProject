<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>



<c:set var="oftenQnaList" value="${dataMap.oftenQnaList }" />
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
<link rel="preconnect" href="https://fonts.gstatic.com" >
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
<!-- END: Page CSS-->

<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
<!-- END: Custom CSS-->
</head>
<body>
	<div class="container" style="font-family: 'Noto Sans KR', sans-serif;">

		<div class="content-header row">
			<div class="content-header-left col-md-9 col-12 mb-2">
				<div class="row breadcrumbs-top">
					<div class="col-12">
						<h2 class="content-header-title float-start mb-0">?????? ?????? ??????</h2>
						<div class="breadcrumb-wrapper">
							<ol class="breadcrumb">
								<li class="breadcrumb-item ">Home</li>
								<li class="breadcrumb-item ">?????? ?????????</li>
								<li class="breadcrumb-item active"><a href="#">?????? ?????? ??????</a>
								</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="row" style="margin: auto; padding-bottom: 20px; position: relative;">
			<div class="col-md-12" style="float: right;">
				<sec:authorize access="hasRole('ROLE_ADMIN')"> 
				<button type="button"
					class="form-control btn btn-primary btn-outline-secondary"
					id="registBtn" style="width: 200px; float: right;"
					onclick="OpenWindow('registForm.do','????????????',900,850);">?????????????????? ??????</button>
				</sec:authorize>	
				</div>
		</div>



		<section id="accordion">
			<div class="row">
				<div class="col-sm-12">
					<div id="accordionWrapa1" role="tablist"
						aria-multiselectable="true">
						<div class="card">
							<div class="card-header" style="padding-left: 20px;margin-left: 80px;padding-bottom: 5px;">
								<h4 class="card-title">?????? ?????? ???????????? ?????? ???????????????</h4>
							</div>
							<div class="card-body">
								<p class="card-text" style="border-left-width: 80px; margin-left: 90px;">
								 ???????????? ????????? ????????? ?????? 1:1 ????????? ??????????????????</p>


								<c:forEach items="${oftenQnaList }" var="oftenQna"
									varStatus="status">
								<div style="border: 1px solid #e6efff; margin-left: 70px;margin-right: 70px;">
									<div class="accordion" id="accordionExample"
										data-toggle-hover="true">
										<div class="accordion-item">
											<h2 class="accordion-header" id="headingOne">
												<button class="accordion-button collapsed" type="button"
													data-bs-toggle="collapse"
													data-bs-target="#oq${oftenQna.oq_no}" aria-expanded="false"
													aria-controls="${oftenQna.oq_no}">
													<h4><img src="<%=request.getContextPath()%>/resources/img/qa.png" style="height:30px; width: auto;"/>  ${oftenQna.oq_title}</h4>
												</button>
											</h2>
											<div id="oq${oftenQna.oq_no}"
												class="accordion-collapse collapse"
												aria-labelledby="headingOne"
												data-bs-parent="#accordionExample" style="">
												<div class="accordion-body" style="padding-bottom: 50px">
													<div>${oftenQna.oq_content}
													<sec:authorize access="hasRole('ROLE_ADMIN')"> 
														<div style="float: right;">
 														<input type="button" class="btn btn-success" value="????????????" onclick="OpenWindow('detail.do?from=list&oq_no=${oftenQna.oq_no }','????????????',800,700);"/>
														</div>
													</sec:authorize>	
													</div>
												</div>
											</div>
										</div>
									</div>
</div><br>
								</c:forEach>



							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>











	<!-- Basic Tables end -->
	<!-- jQuery -->
	<script
		src="<%=request.getContextPath()%>/resources/jquery/jquery.min.js"></script>
	<!-- BEGIN: Vendor JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
	<!-- BEGIN Vendor JS-->

	<!-- BEGIN: Page Vendor JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/wizard/bs-stepper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/spinner/jquery.bootstrap-touchspin.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/toastr.min.js"></script>
	<!-- END: Page Vendor JS-->

	<!-- BEGIN: Theme JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
	<!-- END: Theme JS-->

	<!-- BEGIN: Page JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-ecommerce-checkout.js"></script>

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
	<c:if test="${from eq 'regist'}">
		alert("?????? ?????? ?????? ????????? ????????? ??????????????????.");
		window.opener.location.reload();
		window.close();
	</c:if>
function list_go(page, url){
   if(!url) url="<%=request.getContextPath()%>/main/board/faq/list.do";
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
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>