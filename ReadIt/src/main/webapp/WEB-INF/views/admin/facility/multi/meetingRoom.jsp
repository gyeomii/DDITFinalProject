<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<c:set var="meetingRoomList" value="${dataMap.meetingRoomList}" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />

<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<!-- BEGIN: Head-->


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
<meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
<meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="PIXINVENT">
<title>Security - Vuexy - Bootstrap HTML admin template</title>
<link rel="apple-touch-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/wizard/bs-stepper.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/spinner/jquery.bootstrap-touchspin.css">
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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/app-ecommerce.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-pickadate.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-wizard.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-toastr.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-number-input.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/page-knowledge-base.css">
<!-- END: Page CSS-->
<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/pickers/pickadate/pickadate.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/pickers/flatpickr/flatpickr.min.css">
<!-- END: Vendor CSS-->
<!-- BEGIN: Page CSS-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/horizontal-menu.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-flat-pickr.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-pickadate.css">

<style>
.mg {
	margin: 10px;
}

.btnSize {
	width: 100%;
	height: 100%;
}

.divSize {
	height: 80px;
}
#readyModal{
	    position:fixed; 
        width: 100%;
        height:100%; /* fixed 일때는 요따로 써도 됨 */
        left:0;
        top:0;
        background-color: rgba(248,248,248, 0.8);
        z-index: 200;
        display: none;  /* 보통 초기에 안 보이겡 */
}
#readyContent {
        margin: 10% auto;
        width: 60%;   /* 부모 기준 */
        height: 50%;
        left:50%;
        top:20%;
 }
</style>
</head>



<body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">



    <!-- BEGIN: Content-->
    <div class="app-content content " style="padding-top: 0px;">
        <div class="content-wrapper container-xxl p-0">
            <div class="content-body">
                
                
                <div class="row">
                    <div class="col-12">
                        <ul class="nav nav-pills mb-2" style="padding-top: 40px; padding-bottom: 20px; margin-left: 8px;">
	                           <li class="nav-item" >
    	                            <a class="nav-link active" onclick="goPage('<%=request.getContextPath()%>/admin/facilityManage/restrictedArea.do','M930100','ifr')">
            	                        <span class="fw-bold">🔎  회의실 사용자 조회</span>
                	                </a>
                    	        </li>
                        	</ul>
                  	  </div>
             	 </div>
         
         <div class="row" style="margin:auto; padding-bottom: 20px;">
					<select class="form-control col-md-3" name="perPageNum" id="perPageNum"	onchange="list_go(1);"  style="display: none;">
				  		<option value="20" >정렬개수</option>
					</select>
					<div class="row col-md-5 ">
						<div class="input-group"  style="margin-left: -10px;">
							<select class="form-control form-select" name="searchType" id="searchType" style="width:25%;">
								<option value="tcw" ${cri.searchType eq 'tcw' ? 'selected':'' }>전체</option>
								<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>이용 날짜</option>
								<option value="w" ${cri.searchType eq 'w' ? 'selected':'' }>회의실</option>
								<option value="c" ${cri.searchType eq 'c' ? 'selected':'' }>이용자ID</option>
								<option value="tc" ${cri.searchType eq 'tc' ? 'selected':'' }>이용 날짜+이용자ID</option>
								<option value="cw" ${cri.searchType eq 'cw' ? 'selected':'' }>이용자ID+회의실</option>
								<option value="tcw" ${cri.searchType eq 'tcw' ? 'selected':'' }>이용 날짜+이용자ID+회의실</option>
							</select>
							<input class="form-control " type="text" name="keyword"	placeholder="검색어를 입력하세요." value="${param.keyword }" style="width:50%;"/>
							<button class="form-control btn btn-primary btn-outline-secondary" style="width:25%;" type="button" onclick="list_go(1);" 
									value="검색" data-card-widget="search"><i class="fa fa-fw fa-search"></i>검색</button>
						</div>
					</div>
		</div>
         
         
         
                <div class="card">
                
                	<div style="margin-bottom: 10px;"> 
                    	<!-- <div class="col-md-12 mb-1" style="margin:0 auto; float: right;">
							<input type="text" id="fp-default" name="fr_day" class="form-control flatpickr-basic" value="" placeholder="YYYY-MM-DD"  style="width:300px; margin-top :50px; margin-right:30px; float: right;"/>
						</div> -->
                	</div>
                
                <div class="card-bady" style="margin: 30px;">
                <div class="table-responsive">
					<table class="table table-bordered"  style="table-layout:fixed; text-align: center">
						<thead>
							<tr style="font-size: 1.05em;">
								<th style="width: 13%">번호</th>
								<th style="width: 13%">회의실명</th>
								<th style="width: 13%;">이용자 ID</th>
								<th style="width: 13%">이용 시간</th>
								<th style="width: 13%">이용 날짜</th>
								<th style="width: 13%">비고</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${meetingRoomList }" var="meetingRoomList" varStatus="status">
								<tr>
									<!-- <td>${((cri.page-1) * 20) + status.count}</td> --> <!-- 1부터 -->
									<td>${pageMaker.totalCount - (status.index + ((cri.page-1)*20))}</td> <!-- 역순 -->
									<td>${meetingRoomList.fac_code}</td>
									<td>${meetingRoomList.mem_id}</td>
									<td>${meetingRoomList.fr_hour}~${meetingRoomList.fr_hour+2}시</td>
									<td>${meetingRoomList.fr_day}</td>
									<td>
										<button type="button" id="removeBtn" class="btn btn-warning" onclick="remove_go('${meetingRoomList.fr_no}');">
												삭 제</button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					</div>
          	      </div>
				</div>         
         
                
			</div>
		<div class="card-footer">
			<%@ include file="/WEB-INF/views/include/pagination.jsp"%>
		</div>
		</div>
	</div>
    
    <script>
	    <c:if test="${from eq 'remove'}">
			alert("삭제 되었습니다..");
			window.opener.location.reload();
		</c:if>
	</script>
	
	
    <script>
    function list_go(page, url){
    	   if(!url) url="<%=request.getContextPath()%>/admin/facilityManage/list.do"
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
    
    function remove_go(fr_no) {
		location.href = "remove.do?fr_no=" + fr_no;
	}
    
    </script>
    
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
    
    
    
    <!-- jQuery -->
	<script	src="<%=request.getContextPath()%>/resources/jquery/jquery.min.js"></script>
    <!-- END: Content-->

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

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
	<!-- BEGIN: Page Vendor JS-->
	<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/picker.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/legacy.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
	<!-- END: Page Vendor JS-->
	<!-- BEGIN: Page JS-->
	<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/forms/pickers/form-pickers.js"></script>
	<!-- END: Page JS-->
	<!-- BEGIN: Page JS-->
	<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-ecommerce-checkout.js"></script>
	<!-- handlebars Template -->
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>

</body>
<!-- END: Body-->

</html>