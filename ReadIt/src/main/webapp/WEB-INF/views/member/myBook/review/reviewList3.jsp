<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="reviewList" value="${dataMap.reviewList }" />
<c:set var="notReviewList" value="${dataMap.notReviewList }" />
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
<style>
#myform fieldset {
	display: inline-block;
	direction: rtl;
	border: 0;
}

#myform fieldset legend {
	text-align: right;
}

#myform input[type=radio] {
	display: none;
}

#myform label {
	font-size: 3em;
	color: transparent;
	text-shadow: 0 0 0 #f0f0f0;
}

#myform label:hover {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#myform label:hover ~ label {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#myform input[type=radio]:checked ~ label {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#reviewContents {
	width: 100%;
	height: 150px;
	padding: 10px;
	box-sizing: border-box;
	border: solid 1.5px #D3D3D3;
	border-radius: 5px;
	font-size: 16px;
	resize: none;
}

.table td {
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	font-size: 10px;
}

.star-ratings {
	color: #aaa9a9;
	position: relative;
	unicode-bidi: bidi-override;
	width: max-content;
	-webkit-text-fill-color: transparent;
	/* Will override color (regardless of order) */
	-webkit-text-stroke-width: 0.5px;
	-webkit-text-stroke-color: #2b2a29;
}

.star-ratings-fill {
	color: #fff58c;
	padding: 0;
	position: absolute;
	z-index: 1;
	display: flex;
	top: 0;
	left: 0;
	overflow: hidden;
	-webkit-text-fill-color: gold;
}

.star-ratings-base {
	z-index: 0;
	padding: 0;
}
#notmyform fieldset{
    display: inline-block;
    direction: rtl;
    border:0;
}
#notmyform fieldset legend{
    text-align: right;
}
#notmyform input[type=radio]{
    display: none;
}
#notmyform label{
    font-size: 3em;
    color: transparent;
    text-shadow: 0 0 0 #f0f0f0;
}
#notmyform label:hover{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#notmyform label:hover ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#notmyform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}


</style>
</head>
<body class="container-xxl">
	<section class="app-user-view-account">
		<div class="row">
			<div class="col-xl-12 col-lg-7 col-md-7 order-0 order-md-1">
				<!-- User Pills -->
				<ul class="nav nav-pills mb-2">
					<li class="nav-item"><a class="nav-link " id="M050301"
						onclick="goPage('<%=request.getContextPath()%>/main/myBook/rentList.do','M050301','ifr');">
							<i data-feather="user" class="font-medium-3 me-50"></i> <span
							class="fw-bold">MY ?????? ??????</span>
					</a></li>
					<li class="nav-item"><a class="nav-link active" id="M050302"
						onclick="goPage('<%=request.getContextPath()%>/main/myBook/reviewList.do','M050302','ifr')">
							<i data-feather="bookmark" class="font-medium-3 me-50"></i> <span
							class="fw-bold">MY ??????</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" id="M050303"
						onclick="goPage('<%=request.getContextPath()%>/main/myBook/waitingList.do','M050303','ifr')">
							<i data-feather="lock" class="font-medium-3 me-50"></i> <span
							class="fw-bold">MY ?????? ??????</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" id="M050304"
						onclick="goPage('<%=request.getContextPath()%>/main/myBook/returnList.do','M050304','ifr')">
							<i data-feather="bookmark" class="font-medium-3 me-50"></i> <span
							class="fw-bold">?????? ?????? ?????? </span>
					</a></li>
					<li class="nav-item"><a class="nav-link" id="M050305"
						onclick="goPage('<%=request.getContextPath()%>/main/myBook/myWishBook.do','M050305','ifr')">
							<i data-feather="bookmark" class="font-medium-3 me-50"></i> <span
							class="fw-bold">?????? ?????? ?????? </span>
					</a></li>
				</ul>
				<!--/ User Pills -->
			</div>
		</div>
	</section>



	<!-- Project table -->
	<section id="bodyContents">

		<!-- Activity Timeline -->
		<!--?????? ?????? -->
		<div class="card">
			<div style="padding-left: 30px; padding-top: 30px;">
				<button type="button" class="btn btn-flat-primary round active"
					id="" >?????? ??????</button>
				<button type="button" class="btn btn-flat-danger round  "
					id="notReviewListBtn" onclick="acyncMovePage('<%=request.getContextPath()%>/main/myBook/notReviewList.do')">?????? ????????? ??????</button>
			</div>
			<div style="padding-top: 10px; padding-left: 10px;">
				<select class="form-control col-md-3" name="perPageNum"
					id="perPageNum" onchange="list_go(1);" style="display: none;">
					<option value="5"></option>
				</select>
				<div style="padding-left: 10px; padding-top: 10px;">
					<div class="kb-search-input" style="float: left;">
						<div class="input-group input-group-merge"
							style="height: 30px; width: 320px; margin-left: 20px; margin-top: 10px;">
							<select class="form-control form-select" name="searchType"
								id="searchType" style="width: 65px;">
								<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>?????????</option>
							</select> <span class="input-group-text"><i data-feather=""></i></span> <input
								type="text" class="form-control" id="searchText"
								style="width: 60%" name="keyword" value="${param.keyword }"
								placeholder="????????? ?????? ??? enter"
								onkeyup="if(window.event.keyCode==13){list_go(1)}" />
						</div>
					</div>
					<div style="float: right; padding-right: 20px;">
						<button type="button" id="modifyRadioButton"
							class="btn btn-primary waves-effect waves-float waves-light"
							data-bs-toggle="modal" data-bs-target="#modifyReview">
							????????????</button>
						<button type="button"
							class="btn btn-danger waves-effect waves-float waves-light" id="removeReview" >
							????????????</button>
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
								<th width="10%">??????</th>
								<th width="25%">?????????</th>
								<th width="30%">??????</th>
								<th width="15%">?????????</th>
								<th width="10%">?????????</th>
								<th width="10%">?????? ??????</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${reviewList}" var="review">
								<tr>
									<td><input class="form-check-input" type="radio"
										name="inlineRadioOptions" id="inlineRadio"
										value="${review.rent_no }">
												<label style="display: none;">${review.rev_no }</label>
										</td>
										
									<td id="book_title"> ${review.book_title} </td>
									<td >${review.rev_content}
									</td>
									<td><c:choose>
											<c:when test="${!empty review.rev_updatedate }">
												<fmt:formatDate value="${review.rev_updatedate }"
													pattern="yyyy-MM-dd" />
											</c:when>
											<c:otherwise>
												<fmt:formatDate value="${review.rev_regdate }"
													pattern="yyyy-MM-dd" />
											</c:otherwise>
										</c:choose></td>
									<td>${review.keyword}</td>
									<td>

										<div class="star-ratings">
											<div class="star-ratings-fill space-x-2 text-lg">
												<c:choose>
													<c:when test="${review.rev_grade eq 5}">
														<span>???</span>
														<span>???</span>
														<span>???</span>
														<span>???</span>
														<span>???</span>
													</c:when>
													<c:when test="${review.rev_grade eq 4}">
														<span>???</span>
														<span>???</span>
														<span>???</span>
														<span>???</span>
													</c:when>
													<c:when test="${review.rev_grade eq 3}">
														<span>???</span>
														<span>???</span>
														<span>???</span>
													</c:when>
													<c:when test="${review.rev_grade eq 2}">
														<span>???</span>
														<span>???</span>
													</c:when>
													<c:when test="${review.rev_grade eq 1}">
														<span>???</span>
													</c:when>
												</c:choose>
											</div>
											<div class="star-ratings-base space-x-2 text-lg">
												<span>???</span><span>???</span><span>???</span><span>???</span><span>???</span>
											</div>
										</div>
									</td>

								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div class="card-footer">
				<%@ include file="/WEB-INF/views/include/pagination.jsp"%>
			</div>
		</div>

	</section>



	<section id="notReviewList" style="display: none;">

		<!-- Activity Timeline -->
		<!--????????? ?????? -->

		<div class="card">
			<div style="padding-left: 30px; padding-top: 30px;">
				<button type="button" class="btn btn-flat-primary round "
					id="reviewListBtn">?????? ??????</button>
				<button type="button" class="btn btn-flat-danger round active " id="">??????
					????????? ??????</button>
			</div>
			<div style="padding-top: 10px; padding-left: 10px;">
				<select class="form-control col-md-3" name="perPageNum"
					id="perPageNum" onchange="list_go(1);" style="display: none;">
					<option value="5"></option>
				</select>
				<div style="padding-left: 10px; padding-top: 10px;">
					<div class="kb-search-input" style="float: left;">
						<div class="input-group input-group-merge"
							style="height: 30px; width: 320px; margin-left: 20px; margin-top: 10px;">
							<select class="form-control form-select" name="searchType"
								id="searchType" style="width: 65px;">
								<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>?????????</option>
							</select> <span class="input-group-text"><i data-feather=""></i></span> <input
								type="text" class="form-control" id="searchText"
								style="width: 60%" name="keyword" value="${param.keyword }"
								placeholder="????????? ??????"
								onkeyup="if(window.event.keyCode==13){list_go(1)}" />
						</div>
					</div>
					<div style="float: right; padding-right: 20px;">
						<button type="button" id="registRadioButton"
							class="btn btn-primary waves-effect waves-float waves-light"
							data-bs-toggle="modal" data-bs-target="#registReview">
							????????????</button>
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
								<th width="10%">??????</th>
								<th width="30%">?????????</th>
								<th width="30%">?????????</th>
								<th width="10%">?????????</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${notReviewList}" var="notReview">
								<tr>
									<td><input class="form-check-input" type="radio"
										name="notinlineRadioOptions" id="inlineRadio"
										value="${notReview.rent_no }"></td>
									<td id="book_title">${notReview.book_title}
									</td>
									<td><fmt:formatDate value="${notReview.rent_date }"
											pattern="yyyy-MM-dd" />
									<td><fmt:formatDate value="${notReview.return_date }"
											pattern="yyyy-MM-dd" /></td>

								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

		</div>

		<!-- / recent device -->

	</section>

	<!-- / recent device -->




	<!--?????? ?????? -->
	<div class="modal fade" id="modifyReview" tabindex="-1"
		aria-labelledby="referEarnTitle" aria-hidden="true"
		style="height: 30%; overflow: hidden; height: 900px;">
		<div
			class="modal-dialog modal-dialog-centered modal-lg modal-refer-earn">
			<div class="modal-content" style="width: 1000px; height: 750px;">
				<div class="modal-header bg-transparent">
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body pb-5 px-sm-0">
					<div class="px-sm-4 mx-50">
						<h1 class="text-center mb-1" id="referEarnTitle">?????? ????????????</h1>
						<hr>
						<!-- Product Details starts -->
						<div class="card-body" style="padding: 0px;">
							<div class="row my-2">
								<div
									class="col-12 col-md-5 d-flex align-items-center justify-content-center mb-2 mb-md-0">
									<div class="d-flex align-items-center justify-content-center">
										<img src="" id="modalImgurl" alt="product image" />
									</div>
								</div>
								<div class="col-12 col-md-7">
									<!--                                     <h4>?????? ?????? ????????? ??????</h4> -->
									<!--                                     <span class="card-text item-company">By <a href="#" class="company-name">?????? ????????? ??? ??????????????????</a></span> -->
									<div class="ecommerce-details-price d-flex flex-wrap mt-1">
										<h4 class="item-price me-1" style="padding-bottom: 20px;"
											id="modalTitle"></h4>
										<!--                                        <span class="card-text item-company">By <a href="#" class="company-name">?????? ????????? ??? ??????????????????</a></span> -->
									</div>

									<p class="card-text">
										?????? <span class="text-success" id="modalAuthor"></span>
									</p>
									<p class="card-text">
										????????? <span class="text-success" id="modalPublisher"></span>
									</p>
									<p class="card-text">
										???????????? <span class="text-success" id="modalPublishdate"></span>
									</p>
									<p class="card-text">
										ISBN <span class="text-success" id="modalIsbn" name="modalIsbn"></span>
									</p>

									<p class="card-text">?????? ??????</p>


									<ul class="unstyled-list list-inline ps-1 border-start">
										<li class="ratings-list-item"><i data-feather="star"
											class="filled-star"></i></li>
										<li class="ratings-list-item"><i data-feather="star"
											class="filled-star"></i></li>
										<li class="ratings-list-item"><i data-feather="star"
											class="filled-star"></i></li>
										<li class="ratings-list-item"><i data-feather="star"
											class="filled-star"></i></li>
										<li class="ratings-list-item"><i data-feather="star"
											class="unfilled-star"></i></li>
									</ul>

									<p class="card-text">
								</div>
							</div>
						</div>
					</div>
					<!-- Product Details ends -->

					<hr />

					<div class="px-sm-5 mx-50">
						<h4 class="fw-bolder ">?????? ????????????</h4>
						<form class="mb-3" action="<%=request.getContextPath()%>/main/myBook/reviewModify.do" name="myform" id="myform" method="POST" role="form" >
						<input id="modifymodalbook_Isbn" style="display: none;" value="" name="book_isbn">
						<input id="modifymodalRent_no" style="display: none;" value=""  name="rent_no">
						<input id="modifymodalRev_no" style="display: none;" value=""  name="rev_no">
						
							<fieldset>
								<span class="text-bold">????????? ??????????????????</span> 
								<input type="radio" name="rev_grade" value="5" id="rate5"><label for="rate5">???</label> 
									<input type="radio" name="rev_grade" value="4" id="rate4"><label for="rate4">???</label> 
									<input type="radio" name="rev_grade" value="3" id="rate3"><label for="rate3">???</label> 
									<input type="radio" name="rev_grade" value="2" id="rate2"><label for="rate2">???</label> 
									<input type="radio" name="rev_grade" value="1" id="rate1"><label for="rate1">???</label>
							</fieldset>
							<div>
								<textarea class="col-auto form-control" type="text" name="rev_content"
									id="modifyRev_content" placeholder="??????  ?????? ???????????????  ????????? ?????? ?????? ?????? ?????? ??????!!"></textarea>
							</div>
							<div class="col-lg-2 d-flex align-items-end"
								style="margin-left: 35%; margin-top: 5px;">
								<input type="button" class="btn btn-primary w-70" onclick="modify_go()" value="????????????">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- / refer and earn modal -->
	
	<!-- / refer and earn modal -->
	
	<div class="modal fade" id="registReview" tabindex="-1"
		aria-labelledby="referEarnTitle" aria-hidden="true"
		style="height: 30%; overflow: hidden; height: 900px;">
		<div
			class="modal-dialog modal-dialog-centered modal-lg modal-refer-earn">
			<div class="modal-content" style="width: 1000px; height: 750px;">
				<div class="modal-header bg-transparent">
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body pb-5 px-sm-0">
					<div class="px-sm-4 mx-50">
						<h1 class="text-center mb-1" id="referEarnTitle">?????? ????????????</h1>
						<hr>
						<!-- Product Details starts -->
						
						<div class="card-body" style="padding: 0px;">
							<div class="row my-2">
								<div
									class="col-12 col-md-5 d-flex align-items-center justify-content-center mb-2 mb-md-0">
									<div class="d-flex align-items-center justify-content-center">
										<img src="" id="notmodalImgurl" alt="product image" />
									</div>
								</div>
								<div class="col-12 col-md-7">
									<!--                                     <h4>?????? ?????? ????????? ??????</h4> -->
									<!--                                     <span class="card-text item-company">By <a href="#" class="company-name">?????? ????????? ??? ??????????????????</a></span> -->
									<div class="ecommerce-details-price d-flex flex-wrap mt-1">
										<h4 class="item-price me-1" style="padding-bottom: 20px;"
											id="notmodalTitle"></h4>
										<!--                                        <span class="card-text item-company">By <a href="#" class="company-name">?????? ????????? ??? ??????????????????</a></span> -->
									</div>
				
									<p class="card-text">
										?????? <span class="text-success" id="notmodalAuthor"></span>
									</p>
									<p class="card-text">
										????????? <span class="text-success" id="notmodalPublisher"></span>
									</p>
									<p class="card-text">
										???????????? <span class="text-success" id="notmodalPublishdate"></span>
									</p>
									<p class="card-text">
										ISBN <span class="text-success" id="notmodalIsbn"></span>
									</p>

									<p class="card-text">?????? ??????</p>


									<ul class="unstyled-list list-inline ps-1 border-start">
										<li class="ratings-list-item"><i data-feather="star"
											class="filled-star"></i></li>
										<li class="ratings-list-item"><i data-feather="star"
											class="filled-star"></i></li>
										<li class="ratings-list-item"><i data-feather="star"
											class="filled-star"></i></li>
										<li class="ratings-list-item"><i data-feather="star"
											class="filled-star"></i></li>
										<li class="ratings-list-item"><i data-feather="star"
											class="unfilled-star"></i></li>
									</ul>

									<p class="card-text">
								</div>
							</div>
						</div>
					</div>
					<!-- Product Details ends -->

					<hr />
					
					<div class="px-sm-5 mx-50">
						<h4 class="fw-bolder ">?????? ????????????</h4>
						<form class="mb-3" action="reviewRegist.do" name="notmyform" id="notmyform" method="POST" role="form" >
						<input id="modalbook_Isbn" style="display: none;" value="" name="book_isbn">
						<input id="modalRent_no" style="display: none;" value=""  name="rent_no">
						
							<fieldset>
								<span class="text-bold">????????? ??????????????????</span> 
								<input type="radio" name="rev_grade" value="5" id="rate6"><label for="rate6">???</label> 
									<input type="radio" name="rev_grade" value="4" id="rate7"><label for="rate7">???</label> 
									<input type="radio" name="rev_grade" value="3" id="rate8"><label for="rate8">???</label> 
									<input type="radio" name="rev_grade" value="2" id="rate9"><label for="rate9">???</label> 
									<input type="radio" name="rev_grade" value="1" id="rate10"><label for="rate10">???</label>
							</fieldset>
							<div>
								<textarea class="col-auto form-control" type="text" name="rev_content"
									id="rev_content" placeholder="??????  ?????? ???????????????  ????????? ?????? ?????? ?????? ?????? ??????!!"></textarea>
							</div>
							<div class="col-lg-2 d-flex align-items-end"
								style="margin-left: 35%; margin-top: 5px;">
								<input type="button" class="btn btn-primary w-70" onclick="regist_go()" value="????????????">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
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
	
	
function list_go(page, url){
	   if(!url) url="<%=request.getContextPath()%>/main/myBook/reviewList.do";
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
   	$('#modifyRadioButton').click(function (event) {
	   		// getter
	       var radioVal = $('input[name="inlineRadioOptions"]:checked').val();
	       console.log("radioVal: ", radioVal)
	       var cookie = document.cookie;
	       
	       if (radioVal == null || radioVal == "" || typeof radioVal =="undefined"){	
	    	   alert("????????? ?????? ?????? ??????????????????.");
	    	   $('#modifyReview').modal('dispose');
	    	   return false;
	       } else if (radioVal != null || radioVal != "" || typeof radioVal !="undefined") {
	       var radioOn = $('input[name="inlineRadioOptions"]:checked').next().text();
			console.log("radioOn : ",radioOn);
	       var url = "<%=request.getContextPath()%>/main/myBook/reviewBookInfo.do";
			var data = {
				rent_no : radioVal,
				rev_no : "16"
			};
			var modalTitle = $('#modalTitle');
			var modalImgurl = $('#modalImgurl');
			var modalAuthor = $('#modalAuthor');
			var modalPublisher = $('#modalPublisher');
			var modalPublishdate = $('#modalPublishdate');
			var modalIsbn = $('#modalIsbn');
			var modalbook_Isbn = $('#modifymodalbook_Isbn');
			var modalRent_no = $('#modifymodalRent_no');
			var rev_content = $("#modifyRev_content");
			var rev_no = $("#modifymodalRev_no");
			
			console.log(modalbook_Isbn.value);
			console.log(modalRent_no.value);
			$.ajax({
				url : url,
				type : 'post',
				data : data,
				success : function(data) {
					console.log(data.rentBook)
					modalTitle
							.text(data.rentBook.book_title);
					modalAuthor
							.text(data.rentBook.book_author);
					modalPublisher
							.text(data.rentBook.book_publisher);
					modalPublishdate
							.text(data.rentBook.book_publishdate);
					modalIsbn
							.text(data.rentBook.book_isbn);
					modalImgurl.attr("src",
							data.rentBook.book_imgurl);
					modalRent_no.attr("value",data.rentBook.rent_no);
					modalbook_Isbn.attr("value",data.rentBook.book_isbn);
					rev_content.text(data.reviewBook.rev_content);
					rev_no.attr("value", radioOn);
					console.log(data.reviewBook.rev_grade);
					console.log(data.reviewBook.rev_no);
					console.log(data.reviewBook.rev_content);
					
					if (data.reviewBook.rev_grade == 1){
						$("#rate1").prop("checked", true);
						console.log(data.reviewBook.rev_grade);
					}else if(data.reviewBook.rev_grade == 2){
						$("#rate2").prop("checked", true);
					}else if(data.reviewBook.rev_grade == 3){
						$("#rate3").prop("checked", true);
					}else if(data.reviewBook.rev_grade == 4){
						$("#rate4").prop("checked", true);
						console.log(data.reviewBook.rev_grade);
					}else if(data.reviewBook.rev_grade == 5){
						$("#rate5").prop("checked", true);
					}
				},
				error : function(error) {
						alert(JSON.stringify(error));
					}
				});
	       }
		});
	</script>
	
	<script>
   	$('#registRadioButton').click(function () {
	   		// getter
	       var radioVal = $('input[name="notinlineRadioOptions"]:checked').val();
	      
			console.log(radioVal);
	
	       
			 if (radioVal == null || radioVal == "" || typeof radioVal =="undefined"){	
		    	   alert("????????? ?????? ?????? ??????????????????.");
		    	   $('#registReview').modal('dispose');
		    	   return false
		    	}else if (radioVal != null || radioVal != "" || typeof radioVal !="undefined") {
	       var url = "<%=request.getContextPath()%>/main/myBook/reviewBookInfo.do";
			var data = {
				rent_no : radioVal
			};
			var modalTitle = $('#notmodalTitle');
			var modalImgurl = $('#notmodalImgurl');
			var modalAuthor = $('#notmodalAuthor');
			var modalPublisher = $('#notmodalPublisher');
			var modalPublishdate = $('#notmodalPublishdate');
			var modalIsbn = $('#notmodalIsbn');
			var modalbook_Isbn = $('#modalbook_Isbn');
			var modalRent_no = $('#modalRent_no');
			console.log(modalbook_Isbn);
			console.log(modalRent_no);
			
			$.ajax({
				url : url,
				type : 'post',
				data : data,
				success : function(data) {
					console.log(data.rentBook)
					modalTitle
							.text(data.rentBook.book_title);
					modalAuthor
							.text(data.rentBook.book_author);
					modalPublisher
							.text(data.rentBook.book_publisher);
					modalPublishdate
							.text(data.rentBook.book_publishdate);
					modalIsbn
							.text(data.rentBook.book_isbn);
					modalRent_no.attr("value",data.rentBook.rent_no);
					modalbook_Isbn.attr("value",data.rentBook.book_isbn);
					modalImgurl.attr("src",
							data.rentBook.book_imgurl);
				},
				error : function(error) {
						alert(JSON.stringify(error));
					}
				});
		    	}
			});
	</script>
	
	


	<script>
		$("#reviewListBtn").on("click", function() {
			document.getElementById("notReviewList").style.display = "none";
			document.getElementById("reviewList").style.display = "";
		});
		$("#notReviewListBtn").on("click", function() {
			document.getElementById("reviewList").style.display = "none";
			document.getElementById("notReviewList").style.display = "";
		});
	</script>
	
	<script>
	function regist_go(){
		var form = document.querySelector('#notmyform');
		form.submit();
	}
	</script>
	
	<script>
	function modify_go(){
		var form = document.querySelector('#myform');
		form.submit();
	}
	
	$('#removeReview').click(function () {
		var radioVal = $('input[name="inlineRadioOptions"]:checked').val();
		var radio_revNo = $('input[name="inlineRadioOptions"]:checked').next().text();
		var rev_no = parseInt(radio_revNo);
		 if (radioVal == null || radioVal == "" || typeof radioVal =="undefined"){	
	    	   alert("????????? ?????? ?????? ??????????????????.");
	    	   $('#registReview').modal('dispose');
	    	   return false
	    	} else {
		  if (confirm("????????? ????????? ?????????????????????????")) {
				alert("????????? ?????? ???????????????.")
				console.log(rev_no);
				location.href = "remove.do?rev_no=" + rev_no
		  } else {
			  alert("????????? ???????????????.")
		    }
		
 		}
	});
	</script>
	
	<script>
??
????????function??acyncMovePage(url){
????????????????//??ajax??option
????????????????var??ajaxOption??=??{
????????????????????????????????url??:??url,
????????????????????????????????async??:??true,
????????????????????????????????type??:??"POST",
????????????????????????????????dataType??:??"html",
????????????????????????????????cache??:??false
????????????????};
????????????????
????????????????$.ajax(ajaxOption).done(function(data){
????????????????????????//??Contents????????????????
????????????????????????$('#bodyContents').children().remove();
????????????????????????//??Contents????????????????
????????????????????????$('#bodyContents').html(data);
????????????????});
????????}
??
</script>
??????: https://cofs.tistory.com/402 [CofS:????????????]



</body>






