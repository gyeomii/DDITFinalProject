<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="reviewList" value="${dataMap.reviewList }" />
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
    <title>Product Details - Vuexy - Bootstrap HTML admin template</title>
    <link rel="apple-touch-icon" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/spinner/jquery.bootstrap-touchspin.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/toastr.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/bordered-layout.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/semi-dark-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/horizontal-menu.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/app-ecommerce-details.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-number-input.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-toastr.css">
    
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-sweet-alerts.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/sweetalert2.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <link rel="stylesheet" href="${webPath}/resources/css/confirm.css">
    <!-- END: Custom CSS-->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    
    

</head>
<!-- END: Head-->
<style>
table {
     border-collapse: collapse;
/*      width: 90%; */
     table-layout: fixed
}
 th, td {
     padding: 10px;
/*      border-bottom: 1px solid #b9d9ff; */
}
/* tr:hover { background-color: #F5F5F5; } */

td {
	text-overflow:ellipsis; 
	overflow:hidden; 
	white-space:nowrap;
}
body{
    		font-family: 'Noto Sans KR', sans-serif;
    	}




</style>


<!-- BEGIN: Body-->

<body class="horizontal-layout horizontal-menu  footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">

	  	<!--       ?????????????????? ?????? ????????? ?????????. ????????? ?????? ??????????????????. -->
      	<select class="form-control col-md-3" name="perPageNum" id="perPageNum" style="display: none;">
  			<option value="10" >????????????</option>
		</select>
		<select class="form-control form-select" name="searchType" id="searchType" style="display: none;">
			<option value="t">??????</option>
		</select>
	                        <div class="wrap" id="wrap" style="position: relative;">
					        
					        <!-- confirm ????????? ??? ???????????? ?????? start-->
					        <section class="modal modal-section type-confirm" style="margin-left: 50%; padding-top: 40px;padding-bottom: 20px; margin-top: 300px;">
					            <div class="enroll_box">
					                <p class="menu_msg"></p>
					            </div>
					            <div class="enroll_btn">
					                <button class="btn pink_btn btn_ok">??????</button>
					                <button class="btn gray_btn modal_close" style="padding-top: 0px;">??????</button>
					            </div>
					        </section>
					        <!-- confirm ????????? ??? ???????????? ?????? end-->
					
					        <!-- alert ????????? ??? ???????????? ?????? start-->
					        <section class="modal modal-section type-alert" style="margin-left: 50%; padding-top: 40px; padding-bottom: 40px; margin-top: 300px;">
					            <div class="enroll_box">
					                <p class="menu_msg"></p>
					            </div>
					            <div class="enroll_btn">
					                <button class="btn pink_btn modal_close">??????</button>
					            </div>
					        </section>
					        <!-- alert ????????? ??? ???????????? ?????? end-->
	  				  </div>

					
					    <!-- BEGIN: Content-->
					    <div class=" content ecommerce-application" style="font-family: 'Noto Sans KR', sans-serif;">
					        <div class="content-overlay"></div>
					        <div class="content-wrapper container-xxl p-0">
					        
					           <div class="content-header row">
					                <div class="content-header-left col-md-9 col-12 mb-2">
					                    <div class="row breadcrumbs-top">
					                        <div class="col-12">
					                            <h2 class="content-header-title float-start mb-0">?????? ?????? ??????</h2>
					                            <div class="breadcrumb-wrapper">
					                                <ol class="breadcrumb">
					                                    <li class="breadcrumb-item">Home
					                                    </li>
					                                    <li class="breadcrumb-item">????????????
					                                    </li>
					                                    <li class="breadcrumb-item active"><a href="#">????????????</a>
					                                    </li>
					                                </ol>
					                            </div>
					                        </div>
					                    </div>
					                </div>
					            </div>
            <div class="content-body">
                <!-- app e-commerce details start -->
                <section class="app-ecommerce-details">
                    <div class="card">
                        <!-- Product Details starts -->
                        <div class="card-body" style="margin-left: 50px; margin-right: 50px;">
                           <div class="ecommerce-details-price d-flex flex-wrap mt-1">
                              <h4 class="item-price me-1" style="padding-bottom: 20px; font-weight: bold; font-size: 30px; padding-left: 140px; ">${book.book_title} </h4>
                            </div>
                            <div class="row my-2" style=" border: 1px solid lightgray; margin-left: 100px;margin-right: 100px; padding-top: 30px;padding-bottom: 30px; ">
                                <div class="col-12 col-md-5 d-flex align-items-center justify-content-center mb-2 mb-md-0" style=" width: 428px;">
                                    <div class="d-flex align-items-center justify-content-center"  style="position:relative">
                                        <img src="${book.book_imgURL}" class="img-fluid product-img" alt="product image" style="width:300px; height:350px; width:auto; "/>
                                    </div>
                                </div>
                                <div class="col-12 col-md-7" style="padding-right: 50px;">
                                    <table>
                                    	<tr>
                                    	<td style="width:100px;">??????</td>
                                    	<td colspan="3" style="width:500px;"> <span class="text-success">${book.book_author}</span></td>
                                    	</tr>
                                    	<tr>
                                    	<td style="width:100px;">?????????</td>
                                    	<td style="width:160px;"> <span class="text-success">${book.book_publisher}</span></td>
                                    	<td>????????????</td>
                                    	<td>
                                    <div class="item-rating">
                                               <c:choose>
													<c:when test="${avg_rev eq 1}">
														<ul class="unstyled-list list-inline">
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                  </ul>
													</c:when>
													<c:when test="${avg_rev eq 2}">
														<ul class="unstyled-list list-inline">
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                  </ul>
													</c:when>
													<c:when test="${avg_rev eq 3}">
														<ul class="unstyled-list list-inline">
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                  </ul>
													</c:when>
													<c:when test="${avg_rev eq 4}">
														<ul class="unstyled-list list-inline">
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                  </ul>
													</c:when>
													<c:when test="${avg_rev eq 5}">
														<ul class="unstyled-list list-inline">
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                  </ul>
													</c:when>
													<c:otherwise>
														<ul class="unstyled-list list-inline">
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                  </ul>	
													</c:otherwise>
												</c:choose>
						                      </div>
											</td>
                                    	</tr>
                                   		<tr>
                                    	<td>????????????</td>
                                    	<td> <span class="text-success">${book.book_publishDate}</span></td>
                                    	<td >?????? ??????</td>
                                    	<td> <span class="text-success">${book.room}/${book.sector}/${book.call_number}</span></td>
                                    	</tr>
                                    </table>
                                    <p class="card-text">
                                    </p>
									<hr/>
                                    <div class="product-color-options">
                                         <ul class="product-features list-unstyled">
                                        <li><i data-feather="book-open"></i> <span> ???????????? ????????? ?????? ??????</span></li>
                                    </ul>
                                    <div id="bookStateList">
                                        <table style="text-align: center; width: 450px; margin-left: auto; margin-right: auto;">
                                        	<tr>
                                        		 <th width="15%">?????? ??????</th>
                                        		 <th width="40%">?????? ?????? ??????</th>
                                        		 <th width="25%">?????? ??????</th>
                                        	</tr>
                                        	<tr>
                                        		<td>${book.book_count } ???</td>
                                        		<td>${book.book_rentable } ???</td>
			                                    <td style="font-weight: bold;"> 
			                                     	 <c:choose>
			                                        	<c:when test="${book.book_rentable le 0 }"> ?????? ????????? </c:when>
			                                        	<c:otherwise> ?????? ??????</c:otherwise>
			                                     	 </c:choose>
			                                    </td>
                                        	</tr>
                                        </table>
                                        	</div>
                                    </div>
                                 	   <hr/>
                                 	   <c:choose>
                                 	   	<c:when test="${loginUser != null }">
	                                         <div class="btn btn-primary btn-cart " style="margin-top: 20px; text-align:center; ">
	                                         
	                                        	<div>
	                                            <i data-feather="shopping-cart" class="me-50"></i>
	                                            <span onclick="cartCheck();">?????? ???????????? ??????</span>
	                                        	</div>
	                                    	 </div>
                                 	   	</c:when>
                                 	   	<c:when test="${loginUser eq null }">
	                                         <div class="btn btn-primary btn-cart " style="margin-top: 20px; text-align:center; ">
	                                         
	                                        	<div>
	                                            <i data-feather="shopping-cart" class="me-50"></i>
	                                            <span onclick="doAlert();">?????? ???????????? ??????</span>
	                                        	</div>
	                                    	 </div>
                                 	   	</c:when>
                                 	   </c:choose>
                                </div>
                            </div>
                        </div>
                        <!-- Product Details ends -->
                        
                            <div style="padding-top: 20px;padding-bottom: 10px; padding-left: 200px;">
                                <h4>??? ?????? ????????????</h4> 
                                <p class="card-text">Process of how to reserve books </p>
                            </div>
                <div style="text-align: center;">
                    <img src="${webPath}/resources/images/process.png"  style="width: 800px; ">
                </div>
                        

                        <!-- Item features starts -->
<!--                         <div class="item-features" style="padding-left: 70px; padding-right: 70px; padding-top: 40px;padding-bottom: 40px;"> -->
                        
<!--                         <div style="padding-bottom: 40px;padding-left: 125px;"> -->
<!--                                 <h4>??? ????????? ??????</h4> -->
<!--                                 <p class="card-text">people's reviews</p> -->
<!--                         </div> -->
                        
<!--                             <div class="row text-center" style="padding-bottom: 40px;padding-left: 125px;"> -->
<!--                                 <div class="col-12 col-md-4 mb-4 mb-md-0"> -->
<!--                                     <div class="w-75 mx-auto"> -->
<!--                                         <i data-feather="award"></i> -->
<!--                                         <h4 class="mt-2 mb-1">Book Point</h4> -->
<!--                                         <p class="card-text"> 23232??? ????????? ???????????? ?????????</p> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <div class="col-12 col-md-4 mb-4 mb-md-0"> -->
<!--                                     <div class="w-75 mx-auto"> -->
<!--                                         <i data-feather="clock"></i> -->
<!--                                         <h4 class="mt-2 mb-1">?????? ?????? ??????</h4> -->
<!--                                         <p class="card-text">?????? ?????? ?????? 2 ???. ????????? ????????? ????????????</p> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <div class="col-12 col-md-4 mb-4 mb-md-0"> -->
<!--                                     <div class="w-75 mx-auto"> -->
<!--                                         <i data-feather="shield"></i> -->
<!--                                         <h4 class="mt-2 mb-1">?????? ?????? ??????</h4> -->
<!--                                         <p class="card-text"> -->
                                        
<!-- 												????????? ?????? : -->
<!-- 												????????? ????????? ?????? ???????????? ????????? ????????? -->
<!-- 												??????????????? ?????? :  -->
<!-- 												????????????????????? ???????????? ????????? ????????? ??? ????????? -->
<!-- 												?????????????????? ?????? : -->
<!-- 												????????? ????????? ?????? pick-up ?????? ! -->
<!-- 												???????????? : -->
<!-- 												?????? ?????? ????????? -->
                                        
<!--                                         </p> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
                        <!-- Item features ends -->

                        <!-- Related Products starts -->
                         <div style="padding-top: 40px;padding-bottom: 10px;padding-left: 200px;">
                                <h4>??? ?????? ??????</h4>
<!--                                 <p class="card-text">people's reviews</p> -->
                        </div>
                        <!-- Related Products ends -->
                        
                <!-- Card Advance -->
                    <!-- User Timeline Card -->
                    <div class="col-lg-12 col-12">
                        <div class="card card-user-timeline" style="margin-left: 140px; margin-right: 140px;">
                            <div class="card-body">
                                <ul class="timeline ms-50">
                                
                                <c:if test="${empty reviewList }">
                                <div style="text-align: center;">
                                <img src="${webPath}/resources/img/rore.jpg" style="height: 270px;">
                                </div>
                                </c:if>
                                
                                <c:if test="${!empty reviewList }">
                                
                                <c:forEach items="${reviewList }" var="review">
                                    <li class="timeline-item">
                                        <span class="timeline-point timeline-point-warning timeline-point-indicator"></span>
                                        <div class="timeline-event">
                                            <div class="d-flex justify-content-between flex-sm-row flex-column mb-sm-0 mb-1">
<%--                                                 <h6>?????? : ${review.rev_grade} ??? </h6> --%>
                                                
                                              <div class="item-rating">
                                               <c:choose>
													<c:when test="${review.rev_grade eq 1}">
														<ul class="unstyled-list list-inline">
															<li> <h5>?????? : 1???</h5></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                  </ul>
						                                 
													</c:when>
													<c:when test="${review.rev_grade eq 2}">
														<ul class="unstyled-list list-inline">
																<li> <h5>?????? : 2???</h5></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                  </ul>
													</c:when>
													<c:when test="${review.rev_grade eq 3}">
														<ul class="unstyled-list list-inline">
						                         		      <li> <h5>?????? : 3???</h5></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                  </ul>
													</c:when>
													<c:when test="${review.rev_grade eq 4}">
														<ul class="unstyled-list list-inline">
															<li> <h5>?????? : 4???</h5></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                  </ul>
													</c:when>
													<c:when test="${review.rev_grade eq 5}">
														<ul class="unstyled-list list-inline">
															<li> <h5>?????? : 5???</h5></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
						                                  </ul>
													</c:when>
													<c:otherwise>
														<ul class="unstyled-list list-inline">
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
						                                  </ul>	
													</c:otherwise>
												</c:choose>
						                      </div>
											
                                                <span class="timeline-event-time me-1">????????? :<fmt:formatDate value="${review.rev_regdate }" pattern="yyyy-MM-dd" /></span>
                                            </div>
                                            <p>????????? : ${review.mem_id} ???</p>
                                            <div class="d-flex flex-row align-items-center">
                                                <div class="user-info">
                                                    <h6 class="mb-0"> ?????? ?????? : ${review.rev_content}</h6>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    
                                      <div class="card-footer">
									</div>
                                </c:forEach>
                                </c:if>
									  <%@ include file="/WEB-INF/views/include/bookpagination.jsp"%>
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                     
                    
                    <!--/ User Timeline Card -->
                <!--/ Card Advance -->
                    </div>
                </section>


            </div>
        </div>
    </div>
    <!-- END: Content-->

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>


    <!-- BEGIN: Vendor JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/spinner/jquery.bootstrap-touchspin.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/swiper.min.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/toastr.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-ecommerce-details.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/forms/form-number-input.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/extensions/ext-component-sweet-alerts.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/sweetalert2.all.min.js"></script>
    <!-- END: Page JS-->
    <script src="${webPath}/resources/js/common.js"></script>
	<%@ include file="../../common/index_js.jsp" %>    
	<script src="${webPath}/resources/js/confirm.js"></script>


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
	function doAlert() {
		
			 Swal.fire({
                 icon: 'warning',
                 title: '???????????? ????????? ????????? ??? ????????????.',
                 text: '???????????? ???????????????.'
              })
//               .then(function(){
//             	  parent.location.href = "http://localhost/readit/common/loginForm.do";
//               })
	
	}

</script>
    
    <script>
    function cartCheck(){
    	var book_isbn = ${book.book_isbn};
    	
		$.ajax({
			url : "${webPath}/main/myInfo/checkCart.do",
			type:"post",
			data : {book_isbn:book_isbn},
			success : function(result){
				if(result == "DUPLICATED"){
// 			      alert("?????? ???????????? ?????? ???????????????.");
			      action_popup.alert("?????? ???????????? ?????? ???????????????");
			      
				}else{
	              insertCart();
	           } 
			},
			error:function(error){
		       alert("?????????????????? ???????????? ????????? ???????????????..");
		    }
		});
    }
    
    </script>
    
   <script>
    function insertCart(){
//     	alert("?????????????????????");
    	
    	var book_no = ${book.book_no};
    	var book_isbn = ${book.book_isbn};
    	var data = {book_isbn:book_isbn,
					book_no:book_no}
    
    	$.ajax({
    		type:"post",
			url:"${webPath}/main/myInfo/insertCart.do",
			data: data,
			dataType:"text", // ?????? ????????? ???????????? JSON.parse??? ?????? ????????? ??????
			success:function(data){
				action_popup.confirm("??????????????? ???????????????. \n ?????????????????????????",function(){
					goPage('${webPath}/main/myInfo/bookCart.do','M050210','ifr'); 
				})
			},
			error: function(){
				console.log("??????");
			}
				
		});
    	
    }
    
    </script>
    
     <script>
	function search_go(page,url) {
		if(!url) url="${webPath}/main/search/bookDetail.do";
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
</body>
<!-- END: Body-->

</html>