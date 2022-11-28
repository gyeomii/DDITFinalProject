<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<link rel="apple-touch-icon" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/swiper.min.css">
<!-- END: Vendor CSS-->

<!-- BEGIN: Theme CSS-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap-extended.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/colors.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/components.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/dark-layout.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/bordered-layout.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/semi-dark-layout.css">

<!-- BEGIN: Page CSS-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/horizontal-menu.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-swiper.css">
<!-- END: Page CSS-->

<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
<!-- END: Custom CSS-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title></title>
</head>
<body>
	<div class="container" style="font-family: 'Noto Sans KR', sans-serif;">
		        <!-- coverflow effect swiper -->
                <section id="component-swiper-coverflow">
               		<div class="content-header row">
						<div class="content-header-left col-12 mb-2">
							<div class="row breadcrumbs-top">
								<div class="col-6">
									<h2 class="content-header-title float-start mb-0">추천도서</h2>
									<div class="breadcrumb-wrapper">
										<ol class="breadcrumb">
											<li class="breadcrumb-item active">HOME</li>
											<li class="breadcrumb-item active">도서검색</li>
											<li class="breadcrumb-item"><a href="#">추천도서</a></li>
										</ol>
									</div>
								</div>
							</div>
						</div>
					</div>	
                    <div class="card">
                        <div class="card-header">
                        </div>
                        <div class="card-body" >
                            <div class="swiper-coverflow swiper-container" style="height:600px">
                                <div class="swiper-wrapper" style="width:355px; height:500px;">
                                	<c:forEach items="${bookList }" var="book">
	                                    <div class="swiper-slide" style="width:355px; height:500px;"  onclick="goPage('<%=request.getContextPath()%>/main/search/bookDetail.do?book_no=${book.book_no}','M020310','ifr');" >
	                                        <img class="img-fluid"  id="${book.book_isbn }" src="${book.book_imgURL }" alt="banner" style="width:355px; height:500px;"/>
	                                    </div>
                                	</c:forEach>
                                </div>
                                <!-- Add Pagination -->
                                <br>
                                <br>
                                <div class="swiper-pagination"></div>
                            </div>
                        </div>
                    </div>
                </section>
                <!--/ coverflow effect swiper -->    
				<div class="card">
					<div class="card-body">
			       		<div class="row justify-content-center">
				        	<c:forEach var="i" begin="0" end="4" step="1">
			   	    			<div class="col-2" style="margin: 10px;">
			   	    				 <img class="img-fluid"  id="${bookList[i].book_isbn}" src="${bookList[i].book_imgURL }" alt="banner" style="width:209px; height:308px; border: 1px solid #aaa"/>
			   	    				  <button class="btn btn-primary w-100" style="margin-top:5px;" onclick="goPage('<%=request.getContextPath()%>/main/search/bookDetail.do?book_no=${bookList[i].book_no}','M020310','ifr');">상세보기</button>
			   	    			</div>
				        	</c:forEach>
				        </div>
			       		<div class="row justify-content-center">
				        	<c:forEach var="i" begin="5" end="9" step="1">
			   	    			<div class="col-2" style="margin: 10px;">
			   	    				 <img class="img-fluid"  id="${bookList[i].book_isbn}" src="${bookList[i].book_imgURL }" alt="banner" style="width:209px; height:308px; border: 1px solid #aaa"/>
			   	    				  <button class="btn btn-primary w-100" style="margin-top:5px;" onclick="goPage('<%=request.getContextPath()%>/main/search/bookDetail.do?book_no=${bookList[i].book_no}','M020310','ifr');">상세보기</button>
			   	    			</div>
				        	</c:forEach>
				        </div>
					</div>
				</div>

	</div>

<!-- BEGIN: Vendor JS-->
<script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
<!-- BEGIN Vendor JS-->

<!-- BEGIN: Page Vendor JS-->
<script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
<script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/swiper.min.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Theme JS-->
<script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
<script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
<!-- END: Theme JS-->

<!-- BEGIN: Page JS-->
<script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/extensions/ext-component-swiper.js"></script>
<!-- END: Page JS-->
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
	<%@ include file="../../common/index_js.jsp" %>
