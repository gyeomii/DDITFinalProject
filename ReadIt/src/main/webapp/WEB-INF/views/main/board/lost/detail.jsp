<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
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

</head>
<body>
		<div class="container">
			<div class="card" style="margin-top: 30px; min-height: 600px; min-width: 750px;">
				<div style="float: left;"></div>
				<div class="demo-inline-spacing" style="float: right;">
					<span class="badge bg-primary"> <i data-feather="star" class="me-25"></i> <span>????????? ??????</span></span>
				</div>
				<div style="float: right;">
					<h3 class="card-title" style="text-align: center; font-style: oblique;">${lost.lost_title}</h3>
				</div>

				<div class="card-body">
					<div class="d-flex" style="float: right; padding-right: 30px;">
						<div class="avatar me-50">
							<img src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/portrait/small/avatar-s-7.jpg" alt="" width="24" height="24">
						</div>
						<div class="author-info">
							<small class="text-muted me-25">by</small>
							<small><a href="#" class="text-body">${lost.lost_writer}</a></small>
							<span class="text-muted ms-50 me-25">|</span>
							<small class="text-muted">?????????</small>
							<small><a href="#" class="text-body"><fmt:formatDate value="${lost.lost_regdate }" pattern="yyyy-MM-dd"/></a></small>
						</div>
					</div>
					<br/>
					<hr>
					<div class="author-info" style="padding: 40px; min-height: 400px;">${lost.lost_content}</div>
					<div class="form-group col-sm-12">
							<div class="card card-outline card-success">	
								<div class="card-footer">
									<div class="row">
										<!-- ???????????? ????????? -->
										<c:forEach items="${lost.attachList }" var="attach">
										<div class="col-xl-2 col-md-4 col-sm-5">
											<div class="card bg-primary text-white h-75" style="cursor:pointer;" onclick="location.href='<%=request.getContextPath()%>/main/board/lost/getFile.do?ano=${attach.ano }';">
												<div class="card-body">
													
													<span class="card-text"><i data-feather='file'></i>&nbsp;${attach.fileName }</span>
												</div>
											</div>
										</div>
										</c:forEach>
									</div>
								</div>				
							</div>
						</div>
					<div class="dropdown blog-detail-share" style="padding-left: 450px;">
						<sec:authorize access="hasRole('ROLE_ADMIN')"> 
							<button type="button" id="modifyBtn" class="btn btn-success" onclick="modify_go('${lost.lost_no}');">??? ???</button>
							<button type="button" id="removeBtn" class="btn btn-warning" onclick="remove_go('${lost.lost_no}');">??? ???</button>
						</sec:authorize>	
							<button type="button" id="cancelBtn" class="btn btn-secondary" onclick="CloseWindow();">??? ???</button>
					</div>
				</div>
			</div>
	</div>
	<!-- BEGIN: Vendor JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
	<!-- BEGIN Vendor JS-->

	<!-- BEGIN: Page Vendor JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
	<!-- END: Page Vendor JS-->

	<!-- BEGIN: Theme JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/resources/js/common.js"></script>
	<!-- END: Theme JS-->
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
	<!-- BEGIN: Page JS-->
	<!-- END: Page JS-->

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
		function modify_go(lost_no) {
			location.href = "modifyForm.do?lost_no=" + lost_no;
		}

		function remove_go(lost_no) {
			location.href = "remove.do?lost_no=" + lost_no;
		}

		<c:if test="${from eq 'modify'}">
		alert("?????????????????????.");
		</c:if>
		<c:if test="${from eq 'remove'}">
		alert("?????????????????????.")
		window.close();
		window.opener.location.reload();
		</c:if>
	</script>
	
	<script>	
		function CloseWindow(){
			window.close();
		}
	</script>