<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="lockerList" value="${dataMap.lockerList }" />
<c:set var="bookList" value="${dataMap.bookList }" />

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Checkout - Vuexy - Bootstrap HTML admin template</title>
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

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    
<style>
.locker{
	width:120%;
	height:100px;
	margin-top: 10px;
}
</style>

</head>
<body>

<div class="container" style="font-family: 'Noto Sans KR', sans-serif;">

	<!-- BEGIN: Content-->
	<div class="row">
		<div class="ecommerce-application col-6">
			<div class="card">
      			<div class="card-header">
       				<h2>?????? ?????? ??????</h2>
      			</div>
      		</div>
        	<div class="bs-stepper-content">
            	<!-- Checkout Place order starts -->
               	<div id="step-cart" role="tabpanel" aria-labelledby="step-cart-trigger">
                   	<div id="place-order" class="list-view product-checkout">
                       	<c:forEach items="${bookList }" var="book">
                          	<div class="checkout-items" id="bookListDiv" title="${book.book_isbn}">                              
					        	<div class="card ecommerce-card">
					            	<div class="item-img">
					                	<a>
					                    	<img src="${book.book_imgURL}" width="200px;" height="282px;" />
					                    </a>
					               	</div>
					                <div class="card-body">
					                	<div class="item-name">
					                    	<h4 class="mb-0"><a class="text-body" style="margin-bottom: 25px; margin-top: 10px;">${book.book_title}</a></h4>
				                            <span class="item-company">?????? <a class="company-name">${book.book_author}</a></span><br>
					                        <span class="item-company">????????? <a class="company-name">${book.book_publisher}</a></span><br>
					                        <span class="item-company">???????????? <a class="company-name">${book.book_publishDate}</a></span><br>
											<span class="item-company">ISBN <a class="company-name">${book.book_isbn}</a></span><br>
					                        <span class="item-company">?????? ?????? <a class="company-name">3??? ??????????????? 329</a></span>
					                        <div class="item-rating">
					                        	<ul class="unstyled-list list-inline">
					                            	<li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
					                                <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
					                                <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
					                                <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
					                                <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
					                            </ul>
					                        </div>
					                    </div>
					                </div>
					                <div class="item-options text-center">
										<button class="btn btn-warning" onclick="deleteBook('${book.book_isbn}')">??????</button>       
					                </div>
					            </div>       
					         </div>
				        </c:forEach>
					</div>
				</div>
            </div>
        </div>
        <div class="col-6 row justify-content-center">
        	<div class="card">
        		<div class="card-header">
	        		<h2>?????? ????????? ??????</h2>
        		</div>
        	</div>
       		<div class="row justify-content-center">
	        	<c:forEach var="i" begin="0" end="4" step="1">
   	    			<div class="col-2">
   	    				<c:if test="${lockerList[i].is_usable == 1}">
			        		<button class="btn btn-primary locker" onclick="doReserve('${lockerList[i].locker_num}')"><i data-feather='inbox'></i>${lockerList[i].locker_num}</button>
   	    				</c:if>
   	    				<c:if test="${lockerList[i].is_usable == 0}">
			        		<button class="btn btn-secondary locker" disabled="disabled">${lockerList[i].locker_num}</button>
   	    				</c:if>
   	    			</div>
	        	</c:forEach>
	        </div>
	        <div class="row justify-content-center">
	        	<c:forEach var="i" begin="5" end="9" step="1">
   	    			<div class="col-2">
		        		<c:if test="${lockerList[i].is_usable == 1}">
			        		<button class="btn btn-primary locker" onclick="doReserve('${lockerList[i].locker_num}')"><i data-feather='inbox'></i>${lockerList[i].locker_num}</button>
   	    				</c:if>
   	    				<c:if test="${lockerList[i].is_usable == 0}">
			        		<button class="btn btn-secondary locker" disabled="disabled">${lockerList[i].locker_num}</button>
   	    				</c:if>
   	    			</div>
	        	</c:forEach>
	        </div>
	        <div class="row justify-content-center">
	        	<c:forEach var="i" begin="10" end="14" step="1">
   	    			<div class="col-2">
		        		<c:if test="${lockerList[i].is_usable == 1}">
			        		<button class="btn btn-primary locker" onclick="doReserve('${lockerList[i].locker_num}')"><i data-feather='inbox'></i>${lockerList[i].locker_num}</button>
   	    				</c:if>
   	    				<c:if test="${lockerList[i].is_usable == 0}">
			        		<button class="btn btn-secondary locker" disabled="disabled">${lockerList[i].locker_num}</button>
   	    				</c:if>
   	    			</div>
	        	</c:forEach>
	        </div>
	        <div class="row justify-content-center">
	        	<c:forEach var="i" begin="15" end="19" step="1">
   	    			<div class="col-2">
		        		<c:if test="${lockerList[i].is_usable == 1}">
			        		<button class="btn btn-primary locker" onclick="doReserve('${lockerList[i].locker_num}')"><i data-feather='inbox'></i>${lockerList[i].locker_num}</button>
   	    				</c:if>
   	    				<c:if test="${lockerList[i].is_usable == 0}">
			        		<button class="btn btn-secondary locker" disabled="disabled">${lockerList[i].locker_num}</button>
   	    				</c:if>
   	    			</div>
	        	</c:forEach>
	        </div>
	        <div class="row justify-content-center">
	        	<c:forEach var="i" begin="20" end="24" step="1">
   	    			<div class="col-2">
		        		<c:if test="${lockerList[i].is_usable == 1}">
			        		<button class="btn btn-primary locker" onclick="doReserve('${lockerList[i].locker_num}')"><i data-feather='inbox'></i>${lockerList[i].locker_num}</button>
   	    				</c:if>
   	    				<c:if test="${lockerList[i].is_usable == 0}">
			        		<button class="btn btn-secondary locker" disabled="disabled">${lockerList[i].locker_num}</button>
   	    				</c:if>
   	    			</div>
	        	</c:forEach>
	        </div>
	        <div class="row justify-content-center">
	        	<c:forEach var="i" begin="25" end="29" step="1">
   	    			<div class="col-2">
		        		<c:if test="${lockerList[i].is_usable == 1}">
			        		<button class="btn btn-primary locker" onclick="doReserve('${lockerList[i].locker_num}')"><i data-feather='inbox'></i>${lockerList[i].locker_num}</button>
   	    				</c:if>
   	    				<c:if test="${lockerList[i].is_usable == 0}">
			        		<button class="btn btn-secondary locker" disabled="disabled">${lockerList[i].locker_num}</button>
   	    				</c:if>
   	    			</div>
	        	</c:forEach>
	        </div>
		</div>
	</div>
</div>
<form id="reserveForm">	
	<input type='hidden' name="isbn" value="" />
	<input type='hidden' name="mem_id" value="${loginUser.mem_id }" />
	<input type='hidden' name="locker_num" value="" />
</form>
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
<!-- END: Page JS-->
<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
	
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
	var count = ${bookList.size()};
	//?????????????????? ????????? ???????????? ?????? ????????? ?????????
	if(count == 0){
	//		alert("?????? ????????? ????????? ????????????.");
		Swal.fire({
			icon: 'success',
			title: '?????? ????????? ????????? ????????????.',
			text: '?????? ???????????? ???????????????.'
		}).then(function(){
			history.back();
		})
		
	}

function deleteBook(title){
	 Swal.fire({
		  title: '?????? ?????????????????????????',
		  text: "????????? ????????? ?????????????????? ???????????????.",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonText: '???',
		  cancelButtonText: '?????????',
		  customClass: {
			  confirmButton: 'btn btn-secondary',
			  cancelButton: 'btn btn-outline-danger ms-1'
		  },
	  }).then((result) => {
	        if (result.isConfirmed) {
	        	$("[title='"+ title +"']").remove();
	    		if(count == 0){
	    			Swal.fire({
	    				icon: 'success',
	    				title: '?????? ????????? ????????? ????????????.',
	    				text: '?????? ???????????? ???????????????.'
	    			}).then(function(){
	    				history.back();
	    			})
	    		}
	      }
 	 });
	
	count--;
	
}
</script>
<script>
	function doReserve(locker_num){
		
		 Swal.fire({
			  title: "[" + locker_num + "]??? ?????????????????????????",
			  text: "????????? ????????? ????????? ??? ????????????",
			  icon: 'success',
			  showCancelButton: true,
			  confirmButtonText: '???',
			  cancelButtonText: '?????????',
			  customClass: {
				  confirmButton: 'btn btn-secondary',
				  cancelButton: 'btn btn-outline-danger ms-1'
			  },
		  }).then((result) => {
		        if (result.isConfirmed) {
		        	var url = "<%=request.getContextPath()%>/main/myInfo/doLockerReserve.do"
		 			var bookList = document.querySelectorAll('#bookListDiv');
		 			var isbnList = [];
		 			for(var i=0; i<bookList.length; i++){
		 				isbnList[i] = bookList[i].title;
		 				console.log(isbnList[i]);
		 			}
		 			var reserveForm = $('#reserveForm');
		 			reserveForm.find("[name='isbn']").val(isbnList);
		 			reserveForm.find("[name='mem_id']").val($('[name="mem_id"]').val());
		 			reserveForm.find("[name='locker_num']").val(locker_num);
		 		   	reserveForm.attr({
		 				action : url,
		 				method : 'get'
		 			}).submit();
		      }
	 	 });
		
	}
</script>