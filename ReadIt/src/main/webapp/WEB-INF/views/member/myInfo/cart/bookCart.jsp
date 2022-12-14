<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="cartList" value="${dataMap.cartList }" />
<c:set var="bookList" value="${dataMap.bookList }" />
<c:set var="rentList" value="${dataMap.rentList }" />
<c:set var="reserveList" value="${dataMap.reserveList }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />
<!DOCTYPE html>
<html class="loading" data-textdirection="ltr">
<!-- BEGIN: Head-->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Checkout - Vuexy - Bootstrap HTML admin template</title>
    <link rel="apple-touch-icon" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/wizard/bs-stepper.min.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/spinner/jquery.bootstrap-touchspin.css">
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
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/app-ecommerce.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-pickadate.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-wizard.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-toastr.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-number-input.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/page-knowledge-base.css">

    <!-- END: Page CSS-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
	
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<style>
body{
    font-family: 'Noto Sans KR', sans-serif;
    	}
table {
	font-family: 'Noto Sans KR', sans-serif;
	font-size:12px;
	border-collapse: separate;
 	border-spacing: 0px;
/*      border-collapse: collapse; */
     width: 90%;
     table-layout: fixed
}
 th, td {
     padding: 10px;
/*      border-bottom: 1px solid #edf5ff; */
}
/* tr:hover { background-color: #F5F5F5; } */

td {
text-overflow:ellipsis; 
overflow:hidden; 
white-space:nowrap;

}
.hei{
	height:30%;
	margin-top:10px;
}

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
.item:nth-child(12) { grid-column: auto / span 2; }

</style>

<!-- BEGIN: Body-->

<body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">
      <div class="container">
	<!--       ?????????????????? ?????? ????????? ?????????. ????????? ?????? ??????????????????. -->
      	<select class="form-control col-md-3" name="perPageNum" id="perPageNum" style="display: none;">
  			<option value="10" >????????????</option>
		</select>
		<select class="form-control form-select" name="searchType" id="searchType" style="display: none;">
			<option value="t">??????</option>	
		</select>
    <!-- BEGIN: Content-->
    <div class=" content ecommerce-application">
    
     <div class="content-header row">
                <div class="content-header-left col-md-9 col-12 mb-2">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h2 class="content-header-title float-start mb-0">?????? ????????????</h2>
                            <div class="breadcrumb-wrapper">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">Home
                                    </li>
                                    <li class="breadcrumb-item active"> <a href="#">?????? ???????????? </a>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
      </div>
      
      
    
        <div class="content-wrapper container-xxl p-0">
            <div class="content-body">
                <div class="bs-stepper checkout-tab-steps">     
                          
                <div class="containerHeader" >
              	<div class="item"></div>
                <div class="item" style="padding-top: 40px; ">
                   <c:choose>
						<c:when test="${loginUser.mem_rank == 1}">
							<span class="badge bg-light-success">???</span>
							<img src="${webPath}/resources/images/egg3.png" style="height:100px; width: auto;"/>
						</c:when>
						<c:when test="${loginUser.mem_rank == 2}">
							<span class="badge bg-light-success">?????????</span>
							<img src="${webPath}/resources/images/bookbug.png" style="height:100px; width: auto;"/>
						</c:when>
						<c:otherwise>
							<span class="badge bg-light-waring">????????????</span>
							<img src="${webPath}/resources/images/???????????????.PNG" style="height:100px; width: auto;"/>
						</c:otherwise>
					</c:choose>
                </div>
                <div class="item" style="padding-top: 50px;">
                
                <h1 style="color:white; font-weight: bold;">${loginUser.mem_id }</h1>
                </div>
                <div class="item"></div><div class="item"></div><div class="item"></div><div class="item"></div>
				<div class="item"></div><div class="item"></div>
                 <div class="item"></div><div class="item"></div>
                 <div class="item" >
                ${loginUser.mem_name }?????? ?????? ???????????? <br/>
                <small>* ????????????????????? ???????????? ????????????.</small> 
                </div>
                 <div class="item">
                </div>
                 <div class="item">
                </div>
                 <div class="item">
                ??????????????????<br/>
                 <h2 style="color:white;">${rentList.size()} ???</h2>
                </div>
                 <div class="item">
                ??????????????????<br/>
                 <h2 style="color:white;">${reserveList.size()}???</h2>
                </div>
                 <div class="item">
                ??????????????????<br/>
                 <h2 style="color:white;"> ${5 - rentList.size() - reserveList.size()} ???</h2>
                </div>
                 <div class="item">
                </div>
                </div>
                <div class="col-12 ">
          				<input type="hidden" id="canRent" value="${5 - rentList.size() - reserveList.size()}">
          				<c:forEach items="${rentList}" var="rent">
           				<input type="hidden" id="rentIsbn" value="${rent.isbn}">
          				</c:forEach>
          				<c:forEach items="${reserveList}" var="reserve">
           				<input type="hidden" id="rentIsbn" value="${reserve.isbn}">
          				</c:forEach>
          			</div>
				<div class="col-12 ">
				</div>
				<div style="text-align: center;">
					<button onclick="goReserve('field');" class="btn">
                	<img src="${webPath}/resources/img/1.png" style="width: 150px;">
                	</button>
                	<button onclick="goReserve('locker');" class="btn">
                	<img src="${webPath}/resources/img/2.png" style="width: 150px;">
                	</button>
                	<button onclick="goReserve('drive');" class="btn">
                	<img src="${webPath}/resources/img/3.png" style="width: 150px;">
                	</button>
                	<button onclick="goReserve('delivery');" class="btn">
                	<img src="${webPath}/resources/img/4.png" style="width: 150px;">
                	</button>
				</div>
				
                     <c:if test="${!empty cartList }">
                    <!-- Wizard starts -->
                    <div class="bs-stepper-header" style=" padding-left: 900px;">
                        <div class="step" data-target="#step-cart" role="tab" id="step-cart-trigger">
                            <button type="button" class="step-trigger" >
                                <span class="bs-stepper-box">
                                    <i data-feather="shopping-cart" class="font-medium-3" onclick="deleteCart()"></i>
                                </span>
                                <span class="bs-stepper-label" style="margin-left: 5px;">
                                    <span class="bs-stepper-title" onclick="deleteCart()">?????? ?????? ??????</span>
                                </span>
                            </button>
                             <button type="button" class="step-trigger" style="padding-left: 5px;">
                                <span class="bs-stepper-box">
                                    <i data-feather="shopping-cart" class="font-medium-3" onclick ="checkBoxAll()"></i>
                                </span>
                                <span class="bs-stepper-label" style="margin-left: 5px;">
                                    <span class="bs-stepper-title" id="cbx_chkAll" onclick ="checkBoxAll()">?????? ?????? ??????</span>
                                </span>
                            </button>
                            <button type="button" class="step-trigger" style="padding-left: 5px;">
                                <span class="bs-stepper-box">
                                    <i data-feather="shopping-cart" class="font-medium-3" onclick ="noCheckBox()"></i>
                                </span>
                                <span class="bs-stepper-label" style="margin-left: 5px;">
                                    <span class="bs-stepper-title" id="cbx_chkAll" onclick ="noCheckBox()">?????? ??????</span>
                                </span>
                            </button>
                        </div>
                    </div>
                    
                    <!-- Wizard ends -->
                    <div class="bs-stepper-content">
                            
                        <!-- Checkout Place order starts -->
                        <div id="step-cart" class="content" role="tabpanel" aria-labelledby="step-cart-trigger">
                            <div id="place-order" class="list-view product-checkout">
                               <form action ="${webPath}/main/myInfo/bookCart/delete.do" method="get" role="checkForm">
                               	<input type="hidden" name="mem_id" id="mem_id" value="">
                                  <div id="searchResult" style="width: 1200px; margin:0 auto; ">
                                  	<c:forEach items="${bookList }" var="book">
	                         			<div class="checkout-items" id="bookListDiv">                              
						                  <div class="card ecommerce-card" >
						                      <div class="item-img" style="width: 200px;">
						                      		<div class="form-check form-check-warning" style="padding-right: 20px;">
						                      			<input type="checkbox" class="form-check-input" name= "checkedValue" id="checkedValue" value ="${book.book_isbn}" title="${book.book_title}">
						                      		</div>
						                            <img src="${book.book_imgURL}" style="width: 100px;" onclick="goPage('${webPath}/main/search/bookDetail.do?book_no=${book.book_no}','M020310','ifr');"/>
						                      </div>
						                      <div class="card-body" style="padding-top: 0px;">
						                          <div class="item-name" style=" width: 700px;" onclick="goPage('${webPath}/main/search/bookDetail.do?book_no=${book.book_no}','M020310','ifr');">
						                              <h4 class="mb-0"><a  class="text-body" style="margin-bottom: 25px; margin-top: 10px;">${book.book_title}</a></h4>
						                            
						                              <span class="item-company">????????? <a href="#" class="company-name">${book.book_title}</a></span><br>
						                              <span class="item-company">?????? <a href="#" class="company-name">${book.book_author}</a></span><br>
						                              <span class="item-company">????????? <a href="#" class="company-name">${book.book_publisher}</a></span>
						                              <span class="item-company">???????????? <a href="#" class="company-name">${book.book_publishDate}</a></span><br>
						                              <span class="item-company">?????? ??????  <a href="#" class="company-name">${book.room}/${book.sector}/${book.call_number}</a></span>
						                            
						                             <div class="item-rating">
			                                               <c:choose>
																<c:when test="${book.avg_rev eq 1}">
																	<ul class="unstyled-list list-inline">
									                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
									                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
									                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
									                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
									                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
									                                  </ul>
									                                 
																</c:when>
																<c:when test="${book.avg_rev eq 2}">
																	<ul class="unstyled-list list-inline">
									                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
									                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
									                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
									                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
									                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
									                                  </ul>
																</c:when>
																<c:when test="${book.avg_rev eq 3}">
																	<ul class="unstyled-list list-inline">
									                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
									                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
									                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
									                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
									                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
									                                  </ul>
																</c:when>
																<c:when test="${book.avg_rev eq 4}">
																	<ul class="unstyled-list list-inline">
									                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
									                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
									                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
									                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
									                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
									                                  </ul>
																</c:when>
																<c:when test="${book.avg_rev eq 5}">
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
						                      
						                      
						                          </div>
						                      </div>
						                      <div class="item-options text-center">
						                          <div class="item-wrapper">
						                              <div class="item-cost">
						                               <table style="text-align: left;">
				                                        	<tr>
				                                        		 <td>?????? ??????</td>
				                                        		 <td>${book.book_count } ???</td>
				                                        	</tr>
				                                        	<tr>
				                                        		<td>??????????????????</td>
				                                        		<td>${book.book_rentable } ???</td>
				                                        	</tr>
				                                        	<tr>
				                                        		<td>?????? ??????</td>
				                                        		<td>
				                                        		<c:choose>
							                                        	<c:when test="${book.book_rentable le 0 }"> ?????? ????????? </c:when>
							                                        	<c:otherwise> ?????? ??????</c:otherwise>
							                                   </c:choose>
				                                        		
				                                        		</td>
				                                        	</tr>
                                    				    </table>
						                              </div>
						                          </div>
						                      </div>
						                  </div>       
						          		</div>
					          		</c:forEach>
					          		
                   			      </div>
			          		  </form>
                            
                            <!-- Checkout Place order Ends -->
                        </div>
                        
                        <div class="card-footer">
						  <%@ include file="/WEB-INF/views/include/bookpagination.jsp"%>
						</div>
                        
				<div style="text-align: center;">
					<button onclick="goReserve('field');" class="btn">
                	<img src="${webPath}/resources/img/1.png" style="width: 150px;">
                	</button>
                	<button onclick="goReserve('locker');" class="btn">
                	<img src="${webPath}/resources/img/2.png" style="width: 150px;">
                	</button>
                	<button onclick="goReserve('drive');" class="btn">
                	<img src="${webPath}/resources/img/3.png" style="width: 150px;">
                	</button>
                	<button onclick="goReserve('delivery');" class="btn">
                	<img src="${webPath}/resources/img/4.png" style="width: 150px;">
                	</button>
				</div>
                   
                        <!-- Checkout Customer Address Starts -->
                        <div id="step-address" class="content" role="tabpanel" aria-labelledby="step-address-trigger">
                        </div>
                        <!-- Checkout Customer Address Ends -->
                        <!-- Checkout Payment Starts -->
                        <div id="step-payment" class="content" role="tabpanel" aria-labelledby="step-payment-trigger">
                        </div>
                        <!-- Checkout Payment Ends -->
                   </div>
                </div>
                   	</c:if>	    
            </div>
          </div>
        </div>
      </div>
</div>
                   	 <c:if test="${empty cartList }">
		               	<div  style="text-align: center; ">>
							<img src="${webPath}/resources/img/empty.jpg"  style="width: 700px;  ">
                      		</div>
                      		  <div class="card-body" style="padding-top: 0px; padding-bottom: 0px;">
	                        </div>     
                   	</c:if>
<form id="reserveForm">	
	<input type='hidden' name="isbn" value="" />
	<input type='hidden' name="mem_id" value="" />
</form>
    <!-- END: Content-->
    <!-- BEGIN: Vendor JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/wizard/bs-stepper.min.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/spinner/jquery.bootstrap-touchspin.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/toastr.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-ecommerce-checkout.js"></script>
    <!-- END: Page JS-->
    <script	src="${webPath}/resources/jquery/jquery.min.js"></script>
    <script src="${webPath}/resources/js/common.js"></script>
	<%@ include file="../../../common/index_js.jsp" %>
	
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
   function goReserve(type){
	   var url = ""

	   
	   if(type == 'field'){
		   url = "${webPath}/main/myInfo/fieldReserve.do";
	   }else if(type == 'locker'){
		   url = "${webPath}/main/myInfo/lockerReserve.do";
	   }else if(type == 'drive'){
		   url = "${webPath}/main/myInfo/driveReserve.do";
	   }else if(type == 'delivery'){
		   url = "${webPath}/main/myInfo/deliveryReserve.do";
	   }
	   
	   var canRent = $('#canRent').val();
	   
	   var rentBook = document.querySelectorAll('#rentIsbn');
	   var checkedBook = document.querySelectorAll('input[name="checkedValue"]:checked');
	   var cob_check = checkedBook.length;
	   var isbnList = [];
	   for(var i = 0; i < cob_check; i++){
		   console.log(checkedBook);
		   isbnList[i] = checkedBook[i].defaultValue;
	   }
	   
	   for(var i=0; i< cob_check; i++){
		   for(var j=0; j<rentBook.length; j++){
			   if(checkedBook[i].defaultValue == rentBook[j].defaultValue){
				   
// 				   alert("["+checkedBook[i].title + "]??? ?????? ??????????????????.");
				   Swal.fire('?????????????????????????????????.', '['+checkedBook[i].title + ']??? ?????? ??????????????????.', 'success');
				   return false;
			   }
		   }
	   }
	   console.log(isbnList);
	
	   if(cob_check == 0) {
// 		      alert('????????? ????????? ????????????');
		      Swal.fire('????????? ????????? ????????????.', '????????? ??????????????????.', 'success');
		      return false;
		  }
	   
	   if(cob_check > canRent){
// 		   alert("?????? " + canRent + "??? ?????? ???????????????.");
		   Swal.fire('????????????????????????.', "?????? " + canRent + "??? ?????? ???????????????.", 'success');
		   return false;
	   }
	   

	   
	   
	   var reserveForm = $('#reserveForm');
	   reserveForm.find("[name='isbn']").val(isbnList);
	   reserveForm.find("[name='mem_id']").val($('[name="mem_id"]').val());
	   reserveForm.attr({
			action : url,
			method : 'get'
		}).submit();
   }
   
   </script>
   <script>
    function list_go(page, url){
    	   if(!url) url="${webPath}/main/myInfo/bookCart.do";
    				var jobForm = $('#jobForm');
    				jobForm.find("[name='page']").val(page);jobForm
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
	function search_go(page,url) {
		if(!url) url="${webPath}/main/myInfo/bookCart.do";
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
   function deleteCart(){
	   var cob_check = document.querySelectorAll('input[name="checkedValue"]:checked').length;
	   console.log(cob_check);
	
	   if(cob_check == 0) {
// 		      alert('????????? ????????? ????????????')
		      Swal.fire('????????? ????????? ????????????.', '????????? ??????????????????.', 'success');
		      return false;
		  }
	   
	   $("form[role='checkForm']").submit();
   }
	   
   </script>
   
   <script>
   function checkBoxAll(){
		var chks = document.getElementsByName("checkedValue");
		for(var i = 0; i < chks.length; i++){
			chks[i].checked = true;
		}
	}
   </script>   
   <script>
   function noCheckBox(){
		var chks = document.getElementsByName("checkedValue");
		for(var i = 0; i < chks.length; i++){
			chks[i].checked = false;
		}
	}
   </script>   
   
   
   <script>
	<c:if test="${from eq 'reserve'}">
	 Swal.fire('????????? ?????? ???????????????.', '??????????????? ?????????????????? ?????????????????????', 'success');
	</c:if>
   
   
   </script>