<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

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
    <link rel="stylesheet" href="${webPath}/resources/css/confirm.css">
    <!-- END: Custom CSS-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    
<style>
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
					                    	<img src="${book.book_imgURL}" width="200px"; height="282px;" />
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
			<div class="card" style="height: 80px;">
      			<div class="card-header">
       				<h2>?????? ?????? ?????? ?????????</h2>
      			</div>
      		<div style="background-color: white; margin-top: 30px;">
        		<div class="card-body" style="position: relative;">
        		
        		<form id="reserveForm">	
	                <label class="form-label" for="fp-default">????????? ????????????</label>
	                <div class="input-group input-group-merge mb-2">
	                    <input
							  type="tel"
							  class="form-control m-input"
							  name="tel"
							  id="telInput"
							  required
							  pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}"
							  maxlength="13"
							  placeholder="???) 010-1234-5678"
							/>
	                </div>
	           		    <label class="form-label" for="fp-default">???????????? ??????</label>
	                <div class="input-group input-group-merge mb-2">
                        <input type="text" class="form-control" placeholder="???????????? ????????? ????????????." value="" aria-describedby="button-addon2"  id="addressResult" name="addressResult"  readonly="readonly">
                        <button class="btn btn-outline-primary waves-effect" id="address_kakao"  name="address" type="button">????????????</button>
                    </div>
	                <div class="input-group input-group-merge mb-2">
	                    <input type="text" class="form-control" placeholder="??????????????? ???????????????." aria-label="Search..." name="address_detail" id="address_detail" aria-describedby="basic-addon-search2">
	                </div>
	                <label class="form-label" for="fp-default">?????? ?????? 
	         			       (?????? ?????? :  ${fn:length(couponAvailableList)} ???)  </label>
	                 <div class="input-group input-group-merge mb-2">
	                 	<select id="couponBox" name="cp_no">
	                 		<option value="0">?????? ??????</option>
	                 		<c:forEach items="${couponAvailableList }" var="coupon">
	                 			<option value="${coupon.cp_no}">????????? ?????? (????????? : <fmt:formatDate pattern="yyyy-MM-dd" value="${coupon.cp_expireday}"/> )</option>
	                 		</c:forEach>
	                 	</select>
<!-- 	                    <input type="text" class="form-control" placeholder="?????? ?????? ??? ?????? ?????????~~" > -->
	                </div>
	                <label class="form-label" for="fp-default">?????? ??????</label>
	                 <div class="input-group input-group-merge mb-2">
	                 <input type="text" class="form-control"  id= "money" value="2500???"  placeholder="2500???" readonly="readonly">
	                 </div>
	                 <input type='hidden' name="isbn" value="" />
	                 <input type='hidden' name="rm_date" value="" />
	                 <input type='hidden' name="isCoupon" value="0" />
	          </form>
	                 
	            	   <button type="button" onclick = "checkForm(doReserve)"class="btn" style="float: right;">
	            	   <img src="<%=request.getContextPath()%>/resources/img/rez.png" style="width: 150px;" >
	            	   </button>
            	   </div>
            	   </div>
			</div>
		</div>
	</div>
</div>

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
<!-- ????????????API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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
<!-- import ???????????? -->
<script>
window.onload = function(){
    document.getElementById("address_kakao").addEventListener("click", function(){ //?????????????????? ????????????
        //????????? ?????? ??????
        new daum.Postcode({
            oncomplete: function(data) { //????????? ????????? ??????
                document.getElementById("addressResult").value = data.address; // ?????? ??????
                document.querySelector("input[name=address_detail]").focus(); //???????????? ?????????
            }
        }).open();
    });
}
</script>
<script type="text/javascript">
$('#telInput').keyup(function (event) {
	  event = event || window.event;
	  var _val = this.value.trim();
	  this.value = autoHypenTel(_val);
	});
</script>

<script>
	var count = ${bookList.size()};
	//?????????????????? ????????? ???????????? ?????? ????????? ?????????
	if(count == 0){
// 		alert("?????? ????????? ????????? ????????????.");
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
$(function() {
		var reserveForm = $('#reserveForm');
	  $('#couponBox').change(function() {
		  var result = $('#couponBox option:selected').val();
		  if (result == '0') {
			  document.getElementById("money").value = '2500???';
			  reserveForm.find("[name='isCoupon']").val(0);
		    }
		  else {
			  document.getElementById("money").value = '0???';
			  reserveForm.find("[name='isCoupon']").val(1);
		  }
		}); 
	}); 
</script>

<script>
	function checkForm(callBack){
		var telInput = document.getElementById("telInput").value;
		var addressResult = document.getElementById("addressResult").value;
		var address_detail = document.getElementById("address_detail").value;
		var money = document.getElementById("money").value;
		console.log(money);
		if(money == '0???'){
			doReserve();
			return false;
		}
		if(!telInput){
			Swal.fire('??????????????? ??????????????????.', '???????????????????????????.', 'success');
			return false;
		}
		if(!addressResult){
			Swal.fire('????????? ??????????????????.', '???????????????????????????.', 'success');
			return false;
		}
		if(!address_detail){
			Swal.fire('??????????????? ??????????????????.', '???????????????????????????.', 'success');
			return false;
		}
		console.log(telInput);
		console.log(addressResult);
		console.log(address_detail);
		
		  var IMP = window.IMP; // ????????????
	        IMP.init('imp22033531'); 
	        // 'iamport' ?????? ???????????? "????????? ????????????"??? ??????
	        // i'mport ????????? ????????? -> ????????? -> ?????????????????????
	        IMP.request_pay({
	        	pg : 'kakaopay.TC0ONETIME',
	            /* 
	                'kakao':???????????????, 
	               ' html5_inicis':????????????(???????????????)
	                    'nice':???????????????
	                    'jtnet':????????????
	                    'uplus':LG????????????
	                    'danal':??????
	                    'payco':?????????
	                    'syrup':????????????
	                    'paypal':?????????
	                */
	            pay_method: 'card',
	            /* 
	                'samsung':????????????, 
	                'card':????????????, 
	                'trans':?????????????????????,
	                'vbank':????????????,
	                'phone':????????????????????? 
	            */
	            merchant_uid: 'merchant_' + new Date().getTime(),
	            name: '???????????? ???????????? ???????????? ??????',
	            //??????????????? ????????? ??????
	            amount: money, 
	            //?????? 
	            buyer_email: 'iamport@siot.do',
	            buyer_name: '???????????????',
	            buyer_tel: '010-1234-5678',
	            buyer_addr: '??????????????? ????????? ?????????',
	            buyer_postcode: '123-456'
	        }, function (rsp) {
	            console.log(rsp);
	            if (rsp.success) {
	                var msg = '????????? ?????????????????????.';
	                callBack();
	            } else {
	                var msg = '????????? ?????????????????????.';
	                msg += '???????????? : ' + rsp.error_msg;
	            }
	            console.log(msg);
	        });
	        
	}
	
</script>
<script>
function doReserve(){
	var today = new Date(); 
	var year = today.getFullYear();
	var month = ('0' + (today.getMonth() + 1)).slice(-2);
	var day = ('0' + today.getDate()).slice(-2);
	var rm_date = year + '-' + month  + '-' + day;
	
	var url = "<%=request.getContextPath()%>/main/myInfo/doDeliveryReserve.do"
	var bookList = document.querySelectorAll('#bookListDiv');
	var isbnList = [];
	for(var i=0; i<bookList.length; i++){
		isbnList[i] = bookList[i].title;
		console.log(isbnList[i]);
	}
	var reserveForm = $('#reserveForm');
	reserveForm.find("[name='isbn']").val(isbnList);
	reserveForm.find("[name='rm_date']").val(rm_date);
	reserveForm.attr({
		action : url,
		method : 'get'
	}).submit();
}
</script>



