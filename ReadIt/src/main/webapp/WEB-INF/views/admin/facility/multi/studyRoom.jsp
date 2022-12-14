<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<input type="hidden" name="mem_id" value="${loginUser.mem_id }" />


	<div class="container">
		<div class="d-flex align-items-center">
			<div style="margin-top: 25px;">
				<h2 style="display: inline;">&nbsp;??????? ????????????</h2>
				<span class="text-success" style="display: inline; font-size: 19px; font-weight: bold;"> &nbsp;- ?????????</span>
			</div>
		</div>

		<br>

		<div class="card">
			<div class="row">
				<div class="col-sm-6 col-6 d-flex justify-content-center"
					style="position: relative;">
					&nbsp;&nbsp;
					<div id="support-trackers-chart" style="min-height: 253.208px;">
						<div id="apexchartskft41xs9l"
							class="apexcharts-canvas apexchartskft41xs9l apexcharts-theme-light"
							style="width: 200px; height: 253.208px;">
							<svg id="SvgjsSvg1708" width="300" height="253.20833333333337"
								xmlns="http://www.w3.org/2000/svg" version="1.1"
								xmlns:xlink="http://www.w3.org/1999/xlink"
								xmlns:svgjs="http://svgjs.com/svgjs" class="apexcharts-svg"
								xmlns:data="ApexChartsNS" transform="translate(0, 0)"
								style="background: transparent; margin: 30px">
							<g id="SvgjsG1710" class="apexcharts-inner apexcharts-graphical" transform="translate(28, 20)">
		<defs id="SvgjsDefs1709">
							<clipPath id="gridRectMaskkft41xs9l">
							<rect id="SvgjsRect1712" width="252" height="270" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none"
								   stroke-dasharray="0" fill="#fff">
		</rect></clipPath>
							<clipPath id="gridRectMarkerMaskkft41xs9l">
							<rect id="SvgjsRect1713" width="250" height="272" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none"
								  stroke-dasharray="0" fill="#fff"></rect></clipPath>
							<linearGradient id="SvgjsLinearGradient1718" x1="0" y1="1" x2="1" y2="1">
							<stop id="SvgjsStop1719" stop-opacity="1" stop-color="rgba(115,103,240,1)" offset="0"></stop>
							<stop id="SvgjsStop1720" stop-opacity="1" stop-color="rgba(255,255,255,1)" offset="1"></stop>
							<stop id="SvgjsStop1721" stop-opacity="1" stop-color="rgba(255,255,255,1)" offset="1">
		</stop></linearGradient>
							<linearGradient id="SvgjsLinearGradient1729" x1="0" y1="1" x2="1" y2="1">
							<stop id="SvgjsStop1730" stop-opacity="1" stop-color="rgba(115,103,240,1)" offset="0"></stop>
							<stop id="SvgjsStop1731" stop-opacity="1" stop-color="rgba(234,84,85,1)" offset="1"></stop>
							<stop id="SvgjsStop1732" stop-opacity="1" stop-color="rgba(234,84,85,1)" offset="1"></stop></linearGradient></defs>
							<g id="SvgjsG1714" class="apexcharts-radialbar">
							<g id="SvgjsG1715">
							<g id="SvgjsG1716" class="apexcharts-tracks">
							<g id="SvgjsG1717" class="apexcharts-radialbar-track apexcharts-track" rel="1">
		<path id="apexcharts-radialbarTrack-0"
									d="M 75.7551829268292 215.83042356502926 A 94.48963414634149 94.48963414634149 0 1 1 170.24481707317074 215.83042356502926"
									fill="none" fill-opacity="1" stroke="rgba(255,255,255,0.85)"
									stroke-opacity="1" stroke-linecap="butt"
									stroke-width="16.828048780487805" stroke-dasharray="0"
									class="apexcharts-radialbar-area"
									data:pathOrig="M 75.7551829268292 215.83042356502926 A 94.48963414634149 94.48963414634149 0 1 1 170.24481707317074 215.83042356502926">
		</path></g></g>
							<g id="SvgjsG1723">
							<g id="SvgjsG1728" class="apexcharts-series apexcharts-radial-series" seriesName="CompletedxTickets" rel="1" data:realIndex="0">
		<path id="SvgjsPath1733"
									d="M 75.7551829268292 215.83042356502926 A 94.48963414634149 94.48963414634149 0 1 1 216.3263099534417 148.78143536953007"
									fill="none" fill-opacity="0.85"
									stroke="url(#SvgjsLinearGradient1729)" stroke-opacity="1"
									stroke-linecap="butt" stroke-width="16.828048780487805"
									stroke-dasharray="8"
									class="apexcharts-radialbar-area apexcharts-radialbar-slice-0"
									data:angle="249" data:value="83" index="0" j="0"
									data:pathOrig="M 75.7551829268292 215.83042356502926 A 94.48963414634149 94.48963414634149 0 1 1 216.3263099534417 148.78143536953007">
		</path></g>
							<circle id="SvgjsCircle1724" r="81.07560975609758" cx="123"
									cy="134" class="apexcharts-radialbar-hollow" fill="transparent">
							</circle>
							<g id="SvgjsG1725" class="apexcharts-datalabels-group"
									transform="translate(0, 0) scale(1)" style="opacity: 1;">
	    <text id="SvgjsText1726"
									font-family="Helvetica, Arial, sans-serif" x="123" y="129"
									text-anchor="middle" dominant-baseline="auto" font-size="1rem"
									font-weight="400" fill="#5e5873"
									class="apexcharts-text apexcharts-datalabel-label"
									style="font-family: Helvetica, Arial, sans-serif;">
									?????? ?????????
		</text>
		<text id="SvgjsText1727"
									font-family="Helvetica, Arial, sans-serif" x="123" y="165"
									text-anchor="middle" dominant-baseline="auto"
									font-size="1.714rem" font-weight="400" fill="#5e5873"
									class="apexcharts-text apexcharts-datalabel-value"
									style="font-family: Helvetica, Arial, sans-serif;">
	    							75%</text></g></g></g></g>
		</text>					
							<line id="SvgjsLine1734" x1="0" y1="0" x2="246" y2="0"
									stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" class="apexcharts-ycrosshairs">
							</line>
							<line id="SvgjsLine1735" x1="0" y1="0" x2="246" y2="0"
									stroke-dasharray="0" stroke-width="0"
									class="apexcharts-ycrosshairs-hidden">
							</line></g>
							<g id="SvgjsG1711" class="apexcharts-annotations"></g></svg>
							<div class="apexcharts-legend"></div>
						</div>
					</div>


					<div class="resize-triggers">
						<div class="expand-trigger">
							<div align="center"
								style="width: 465px; height: 254px; margin: 30px 30px;">
								<br> <br> <br> <br> <br> <br>
								<div>
									<h2 style="display: inline;">?????? ??????</h2>
									<p class="text-primary"
										style="display: inline; font-size: 40px">150</p>
									<h2 style="display: inline;">???</h2>
								</div>
								<br> <br>
								<div>
									<h2 style="display: inline;">?????? ??????</h2>
									<p class="text-danger" style="display: inline; font-size: 40px">120</p>
									<h2 style="display: inline;">???</h2>
								</div>
							</div>
						</div>
						<div class="contract-trigger"></div>
					</div>
				</div>
				<div class="col-sm-6 col-6 d-flex justify-content"
					style="position: relative;">

					<div>
						<br> <br>
						<div>

							<h2>  ????  ????????????</h2>
						</div>
						<br>
						<div>
							&nbsp;?????? ????????? ??????????????? 2???????????????.
						</div>
						<br>
						<div>
							&nbsp;?????? ????????? ??????????????? 2???????????????.
						</div>
						<br>
						<div>
							&nbsp;?????? ??????????????? ?????? ????????????
						</div>
						<br>
						<div>
							&nbsp;?????? ??????????????? ??????????????????
						</div>
						<br>
						<div>
							&nbsp;?????? ?????? ????????? ????????????.
						</div>
					</div>
				</div>
			</div>
		</div>
	
	<div style="margin-top: 40px;">
	<h2>&nbsp;???? ????????? ?????? (??????)</h2>
		<div class="card" style="min-height: 600px; margin-top: 20px; padding-bottom: 0px; margin-bottom: 0px;">
			<br>
			<br>
			<br>
			<br>
			<div style="text-align: center; margin-bottom: 0px; padding-bottom: 0px; margin-top: 0px;" >
			<img alt="seat" src="../../resources/img/????????? ??????.PNG">
			</div>
			
		</div>
	</div>	
	</div>


	<!-- END: Content-->

	<div class="sidenav-overlay"></div>
	<div class="drag-target"></div>

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
	<!-- BEGIN: Page JS-->
	<!-- END: Page JS-->
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
</body>