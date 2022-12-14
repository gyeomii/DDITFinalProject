<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>


<c:set var="noticeList" value="${dataMap.noticeList }" />
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

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
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
						<h2 class="content-header-title float-start mb-0">공지 사항</h2>
						<div class="breadcrumb-wrapper">
							<ol class="breadcrumb">
								<li class="breadcrumb-item ">Home</li>
								<li class="breadcrumb-item ">북적 라운지</li>
								<li class="breadcrumb-item active"><a href="#">공지 사항</a></li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row" style="margin: auto; padding-bottom: 20px;">
			<select class="form-control col-md-3" name="perPageNum" id="perPageNum" onchange="list_go(1);" style="display: none;">
				<option value="20">정렬개수</option>
			</select>
			<div class="row col-md-5 ">
				<div class="input-group">
					<select class="form-control form-select" name="searchType" id="searchType" style="width: 25%;">
						<option value="tcw" ${cri.searchType eq 'tcw' ? 'selected':'' }>전체</option>
						<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>제목</option>
						<option value="w" ${cri.searchType eq 'w' ? 'selected':'' }>작성자</option>
						<option value="c" ${cri.searchType eq 'c' ? 'selected':'' }>내용</option>
						<option value="tc" ${cri.searchType eq 'tc' ? 'selected':'' }>제목+내용</option>
						<option value="cw" ${cri.searchType eq 'cw' ? 'selected':'' }>작성자+내용</option>
						<option value="tcw" ${cri.searchType eq 'tcw' ? 'selected':'' }>작성자+제목+내용</option>
					</select> <input class="form-control " type="text" name="keyword" placeholder="검색어를 입력하세요." value="${param.keyword }" style="width: 50%;" />
					<button class="form-control btn btn-primary btn-outline-secondary" style="width: 25%;" type="button" onclick="list_go(1);" value="검색" data-card-widget="search">
						<i class="fa fa-fw fa-search"></i>검색
					</button>
				</div>
			</div>
			<div class="row col-md-4 "></div>
			<div class="col-md-3">
				<sec:authorize access="hasRole('ROLE_ADMIN')">
					<button type="button"
						class="form-control btn btn-primary btn-outline-secondary"
						id="registBtn"
						style="width: 150px; border-left-width: 100px; margin-left: 230px;"
						onclick="OpenWindow('registForm.do','공지등록',900,850);">공지등록</button>
				</sec:authorize>
			</div>
		</div>
		<!-- Basic Tables start -->
		<div class="row" id="basic-table"
			style="font-family: 'Noto Sans KR', sans-serif;">
			<div class="col-12">
				<div class="card">
					<!-- 				<div class="card-header"> -->
					<!-- 					<h1 class="card-title" style="font-family: 'Noto Sans KR', sans-serif;">공지사항</h1> -->
					<!-- 				</div> -->
					<div class="table-responsive">
						<table class="table table-bordered"
							style="table-layout: fixed; text-align: center">
							<thead>
								<tr style="font-size: 1.05em;">
									<th style="width: 10%">글번호</th>
									<th style="width: 40%;">제 목</th>
									<th style="width: 15%">작성자</th>
									<th style="width: 15%">작성일</th>
									<th style="width: 10%">첨부파일</th>
									<th style="width: 10%">조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${noticeList }" var="notice" varStatus="status">
									
									<c:if test="${notice.is_top eq '1'}">
										<tr onclick="OpenWindow('detail.do?from=list&notice_no=${notice.notice_no }','상세보기',900,750);" style="font-weight: bolder; color:#FF6347;">
											<!-- <td>${((cri.page-1) * 20) + status.count}</td> -->
											<!-- 1부터 -->
											<td>고정글</td>
											<!-- 역순 -->
											<td
												style="text-align: left; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">${notice.notice_title}</td>
											<td>${notice.notice_writer}</td>
											<td><fmt:formatDate value="${notice.notice_regdate }"
													pattern="yyyy-MM-dd" /></td>
											<td><c:if test="${!empty notice.attachList}">
													<i data-feather='file'></i>(${notice.attachList.size() })
											</c:if> <c:if test="${empty notice.attachList}">
													<span>-</span>
												</c:if></td>
											<td>${notice.notice_hits}</td>
										</tr>
									</c:if>
									
									<c:if test="${notice.is_top eq '0'}">
										<tr onclick="OpenWindow('detail.do?from=list&notice_no=${notice.notice_no }','상세보기',900,750);">
											<!-- <td>${((cri.page-1) * 20) + status.count}</td> -->
											<!-- 1부터 -->
											<td>${pageMaker.totalCount - (status.index + ((cri.page-1)*20))}</td>
											<!-- 역순 -->
											<td
												style="text-align: left; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">${notice.notice_title}</td>
											<td>${notice.notice_writer}</td>
											<td><fmt:formatDate value="${notice.notice_regdate }"
													pattern="yyyy-MM-dd" /></td>
											<td><c:if test="${!empty notice.attachList}">
													<i data-feather='file'></i>(${notice.attachList.size() })
											</c:if> <c:if test="${empty notice.attachList}">
													<span>-</span>
												</c:if></td>
											<td>${notice.notice_hits}</td>
										</tr>
									</c:if>
									
									
									
									
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
<script src="<%=request.getContextPath()%>/resources/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/wizard/bs-stepper.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/spinner/jquery.bootstrap-touchspin.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/toastr.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-ecommerce-checkout.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
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
		window.onload = function(){ 
		Swal.fire({
       		icon: 'success',
       		title: '등록 완료.',
       text: '공지사항 등록이 성공했습니다.'
 	}).then(function(){
 		window.opener.location.reload();
		window.close();
 		})
 	}
	</c:if>


	
function list_go(page, url){
   if(!url) url="<%=request.getContextPath()%>/main/board/notice/list.do";
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
 document.on
	if(document.querySelectorAll('#red').value == '1'){
		alert("aaaaa");
	}

</script>

	