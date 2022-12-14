<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="memberList" value="${dataMap.memberList }" />
<c:set var="memCount" value="${dataMap.memberCountList }" />
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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<style>

.containerHeader {
	background-image: url('${webPath}/resources/images/cart.png');
	border-top-right-radius : 50px;
	border-top-right-radius : 150px; 200px;
	border-bottom-left-radius : 100px; 7px;
	border-bottom-right-radius : 0;
	
	height:180px; width: auto; margin-left:100px; margin-right:100px; padding-bottom: 30px; 
	
	color:white;
	font-family: 'Noto Sans KR', sans-serif;
	justify-content:center;
/*     text-align: center; */
	display: grid;
	grid-template-columns:  repeat(9, 130px);
	grid-template-rows: 100px 100px;
}

.item:nth-child(3) { grid-column: auto / span 3; }

</style>
<body>
<div class="container" >
    	<select class="form-control col-md-3" name="perPageNum" id="perPageNum" style="display: none;">
  			<option value="10" >????????????</option>
		</select>
		
		 <ul class="nav nav-pills mb-2">
                     <li class="nav-item">
                         <a class="nav-link active" onclick="goPage('<%=request.getContextPath() %>/admin/userManage/adminList.do','M910100','ifr');">
                             <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user font-medium-3 me-50"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                             <span class="fw-bold">?????? ??????</span></a>
                     </li>
       </ul>
                <div class="containerHeader" >
              	<div class="item"></div>
                <div class="item" style="padding-top: 40px; ">
                </div>
                <div class="item" style="padding-top: 50px;">
                
                <h1 style="color:white; font-weight: bold;">???????????? ????????? ?????? ??????</h1>
                </div>
                <div class="item"></div><div class="item"></div><div class="item"></div><div class="item"></div>
				<div class="item"></div><div class="item"></div>
                 <div class="item"></div>
                 <div class="item">
                 ???????????????<br/>
                 <h2 style="color:white;">${memCount[0]} ???</h2>
                 </div>
                 <div class="item" >
                 ???????????? ??????<br/>
                 <h2 style="color:white;">${memCount[1]} ???</h2>
                </div>
                 <div class="item">
                 ????????? ??????<br/>
                 <h2 style="color:white;">${memCount[2]}  ???</h2>
                </div>
                 <div class="item">
                  ?????????<br/>
                 <h2 style="color:white;">${memCount[3]}  ???</h2>
                </div>
                 <div class="item">
                  ????????????(???)<br/>
                 <h2 style="color:white;">${memCount[4]} ???</h2>
                </div>
                 <div class="item">
                  ????????????<br/>
                 <h2 style="color:white;">${memCount[5]} ???</h2>
                </div>
                 <div class="item">
                </div>
                 <div class="item">
                </div>
                </div>
       
	<!-- Basic Tables start -->
	<div class="row" id="basic-table">
		<div class="col-12">
			<div class="card" style="margin-top: 50px;">
				<div class="card-header">
				</div>
				<div style="position: relative; ">
					<div style="float: right; padding-right: 50px;">
							<div class="row input-group" style="margin: auto; padding-bottom: 20px ;  float: right;">
								<select class="form-control form-select" name="searchType"
									id="searchType" style="width : 80px;">
										<option value="n" ${cri.searchType eq 'n' ? 'selected':'' }>??????</option>
										<option value="i" ${cri.searchType eq 'i' ? 'selected':'' }>?????????</option>
										<option value="p" ${cri.searchType eq 'p' ? 'selected':'' }>?????????</option>
										<option value="e" ${cri.searchType eq 'e' ? 'selected':'' }>?????????</option>
								</select> <input class="form-control " type="text" name="keyword"
									placeholder="???????????? ???????????????." value="${param.keyword }"
									style="width: 300px;" />
								<button class="form-control btn btn-primary btn-outline-secondary"
									style="width: 100px;" type="button" onclick="list_go(1);"
									value="??????" data-card-widget="search">
									<i class="fa fa-fw fa-search"></i>??????
								</button>
							</div>
					</div>
				</div>
				<div class="table-responsive" style="padding: 50px; padding-top: 0px;">
					<table class="table" style="text-align: center">
						<thead>
							<tr style="font-size: 1.05em;">
								<th>????????????</th>
								<th>?????????</th>
								<th>??????</th>
								<th>??????/?????????</th>
								<th>?????????</th>
								<th>?????????</th>
								<th>?????????</th>
								<th>??????</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${memberList }" var="member" varStatus="status">
								<c:set var="i" value="${i+1 }"/>
								<tr
									onclick="OpenWindow('memDetail.do?from=list&mem_id=${member.mem_id }','????????????',800,950);">
									<td>${pageMaker.totalCount - (status.index + ((cri.page-1)*10))}</td>
									<td style="text-align: left;">${member.mem_id}</td>
									<td>${member.mem_name}</td>
									<td>
										<c:if test="${member.mem_rank eq 1}">
											???
										</c:if>
										<c:if test="${member.mem_rank eq 2}">
											?????????
										</c:if>
										<c:if test="${member.mem_rank eq 3}">
											????????????
										</c:if>
									</td>
									<td style="text-align: left;">${member.mem_email}</td>
									<td>${member.mem_phone}</td>
									<td><fmt:formatDate value="${member.mem_joinDate}" pattern="yyyy-MM-dd"/></td>
									<td>
									<c:if test="${member.mem_isDrop eq '1'}" >
										????????????
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
<script>	
function list_go(page, url){
	 if(!url) url="<%=request.getContextPath()%>/admin/userManage/list.do";
	 console.log($('select[name="searchType"]').val());
	 console.log($('div.input-group>input[name="keyword"]').val());
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





