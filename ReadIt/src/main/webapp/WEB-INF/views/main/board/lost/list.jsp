<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


<c:set var="lostList" value="${dataMap.lostList }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Dashboard ecommerce - Vuexy - Bootstrap HTML admin template</title>
    <link rel="apple-touch-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;700&display=swap" rel="stylesheet">
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/charts/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/toastr.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/bordered-layout.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/semi-dark-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/horizontal-menu.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/dashboard-ecommerce.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/charts/chart-apex.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-toastr.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->
</head>    
<body>
<div class="container" style="font-family: 'Noto Sans KR', sans-serif;">

	   <div class="content-header row">
                <div class="content-header-left col-md-9 col-12 mb-2">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h2 class="content-header-title float-start mb-0">????????? ??????</h2>
                            <div class="breadcrumb-wrapper">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item ">Home
                                    </li>
                                    <li class="breadcrumb-item ">?????? ?????????
                                    </li>
                                    <li class="breadcrumb-item active"><a href="#">????????? ??????</a>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



<div class="row" style="margin:auto; padding-bottom: 20px;">
	<select class="form-control col-md-3" name="perPageNum" id="perPageNum"	onchange="list_go(1);"  style="display: none;">
  		<option value="20" >????????????</option>
	</select>
	<div class="row col-md-5 ">
		<div class="input-group">
			<select class="form-control form-select" name="searchType" id="searchType" style="width:25%;">
				<option value="tcw" ${cri.searchType eq 'tcw' ? 'selected':'' }>??????</option>
				<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>??????</option>
				<option value="w" ${cri.searchType eq 'w' ? 'selected':'' }>?????????</option>
				<option value="c" ${cri.searchType eq 'c' ? 'selected':'' }>??????</option>
				<option value="tc" ${cri.searchType eq 'tc' ? 'selected':'' }>??????+??????</option>
				<option value="cw" ${cri.searchType eq 'cw' ? 'selected':'' }>?????????+??????</option>
				<option value="tcw" ${cri.searchType eq 'tcw' ? 'selected':'' }>?????????+??????+??????</option>
			</select>
			<input class="form-control " type="text" name="keyword"	placeholder="???????????? ???????????????." value="${param.keyword }" style="width:50%;"/>
				<button class="form-control btn btn-primary btn-outline-secondary" style="width:25%;" type="button" onclick="list_go(1);" value="??????" data-card-widget="search">
				<i class="fa fa-fw fa-search"></i>??????</button>
		</div>
	</div>
	<div class="row col-md-4 ">
	</div>
<sec:authorize access="hasRole('ROLE_ADMIN')"> 
	<div class="col-md-3">
		<button type="button" class="form-control btn btn-primary btn-outline-secondary" id="registBtn" style="width: 150px; border-left-width: 100px; margin-left: 230px;" onclick="OpenWindow('registForm.do','????????? ??????',900,850);">????????? ??????</button>
	</div>
</sec:authorize>
</div>
	<!-- Basic Tables start -->
   <div class="row" id="basic-table" style="font-family: 'Noto Sans KR', sans-serif;">
       <div class="col-12">
           <div class="card">
               
               <div class="table-responsive">
                   <table class="table table-bordered"  style="table-layout:fixed; text-align: center">
                       <thead>
                           <tr>
                               	<th style="width: 10%">?????????</th>
								<th style="width: 35%;">??? ???</th>
								<th style="width: 15%">?????????</th>
								<th style="width: 15%">?????????</th>
								<th style="width: 10%">????????????</th>
                           </tr>
                       </thead>
                       <tbody>
                           <c:forEach items="${lostList }" var="lost" varStatus="status">
									<tr onclick="OpenWindow('detail.do?from=list&lost_no=${lost.lost_no }','????????????',900,750);">
									<!-- <td>${((cri.page-1) * 20) + status.count}</td> --> <!-- 1?????? -->
									<td>${pageMaker.totalCount - (status.index + ((cri.page-1)*20))}</td> <!-- ?????? -->
									<td style="text-align:left;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;">${lost.lost_title}</td>
									<td>${lost.lost_writer}</td>
									<td><fmt:formatDate value="${lost.lost_regdate }" pattern="yyyy-MM-dd"/></td>
									<td>
										<c:if test="${!empty lost.attachList}">
											<i data-feather='file'></i>(${lost.attachList.size() })								
										</c:if>
		
										<c:if test="${empty lost.attachList}">
											<span>-</span>
										</c:if>
										
									</td>
								</tr>
							</c:forEach>
                       </tbody>
                   </table>
               </div>
           </div>
       </div>
   </div>
  <!-- Basic Tables end -->
	<div class="card-footer">
		<%@ include file="/WEB-INF/views/include/pagination.jsp"%>
	</div>
</div>
	<!-- jQuery -->
<script	src="<%=request.getContextPath()%>/resources/jquery/jquery.min.js"></script>
 <!-- BEGIN: Vendor JS-->
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
<!-- BEGIN Vendor JS-->

<!-- BEGIN: Page Vendor JS-->
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/wizard/bs-stepper.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/spinner/jquery.bootstrap-touchspin.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/toastr.min.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Theme JS-->
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
<!-- END: Theme JS-->

<!-- BEGIN: Page JS-->
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-ecommerce-checkout.js"></script>

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
		alert("????????? ????????? ??????????????????.");
		window.opener.location.reload();
		window.close();
	</c:if>
function list_go(page, url){
   if(!url) url="<%=request.getContextPath()%>/main/board/lost/list.do";
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





