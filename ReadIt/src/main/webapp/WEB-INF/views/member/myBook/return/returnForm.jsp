<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- <c:set var="lockerList" value="${dataMap.lockerList }" /> --%>

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
<style>
.locker{
	width:120%;
	height:100px;
	margin-top: 10px;
}
</style>

</head>
<body>

<div class="container">
	<!-- BEGIN: Content-->
	<div class="row">
		<div class="ecommerce-application col-6">
			<div class="card">
      			<div class="card-header">
       				<h2>???????????? ?????? ??????</h2>
      			</div>
      		</div>
        	<div class="bs-stepper-content">
            	<!-- Checkout Place order starts -->
               	<div id="step-cart" role="tabpanel" aria-labelledby="step-cart-trigger">
                   	<div id="place-order" class="list-view product-checkout">
                       	<c:forEach items="${returnBookList }" var="returnBook">
<%--                        	<div>"${returnBook.isbn}"</div> --%>
                          	<div class="checkout-items" id="bookListDiv" title="${returnBook.book_no}" style="width: 468px; margin-left: -20px;">                              
					        	<div class="card ecommerce-card">
					            	<div class="item-img">
					                	<a>
					                    	<img src="${returnBook.book_imgurl}" width="200px;" height="282px;" />
					                    </a>
					               	</div>
					                <div class="card-body" >
					                	<div class="item-name" >
					                    	<h4 class="mb-0"><a class="text-body" style="margin-bottom: 25px; margin-top: 10px;">${returnBook.book_title }</a></h4>
<%-- 					                    	<td style="text-align: left; text-overflow:ellipsis; overflow:hidden; white-space:nowrap; padding-left: 5px; padding-right: 5px;">${book.book_author}</td> --%>
<%-- 					                    	<span class="item-company" >?????? <a class="company-name">${returnBook.book_author }</a></span><br> --%>
					                    	<span class="item-company" style="font-weight: bold;" >??????</span><br>
					                    	<span class="company-name" style="font-size:13px; display:inline-block; width:100px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis; ">${returnBook.book_author }</span><br>
				                            <span class="item-company" style="font-weight: bold;">??????????????? <a class="company-name"><fmt:formatDate pattern="yyyy-MM-dd" value="${returnBook.due_date }"/></a></span><br>
<%-- 											<span class="item-company">ISBN <a class="company-name">${returnBook.book_isbn}</a></span><br> --%>
					                    </div>
					                </div>
					                <div class="item-options text-center" >
										<button class="btn btn-warning" onclick="deleteBook('${returnBook.book_no}')" style="width: 70px; font-size: 11px;">??????</button>       
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
	        		<h2>?????? ?????? ??????</h2>
        		</div>
        		
        	<div class="row justify-content-center">
        		<div class="card-body">
	                <div class="input-group input-group-merge mb-2">
	                    <input type="text" class="form-control" placeholder="????????? ?????????" aria-label="Search..." aria-describedby="basic-addon-search2">
	                </div>
	                <div class="input-group input-group-merge mb-2">
	                    <input type="text" class="form-control" placeholder="???????????? ?????????" aria-label="Search..." aria-describedby="basic-addon-search2">
	                </div>
	                <div class="input-group input-group-merge mb-2">
<!-- 	                    <span class="input-group-text"></span> -->
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
	                
	                
	                <div class="input-group input-group-merge mb-2">
                        <input type="text" class="form-control" placeholder="???????????? ????????? ????????????." value="" aria-describedby="button-addon2"  id="addressResult" readonly="readonly">
                        <button class="btn btn-outline-primary waves-effect" id="address_kakao"  name="address" type="button">????????????</button>
                    </div>
	                <div class="input-group input-group-merge mb-2">
	                    <input type="text" class="form-control" placeholder="??????????????? ???????????????." aria-label="Search..." name="address_detail" aria-describedby="basic-addon-search2">
	                </div>
               </div>
        	
	        </div>
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

<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/cleave.min.js"></script>
<%-- <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/addons/cleave-phone.us.js"></script> --%>
<script src="<%=request.getContextPath()%>/resources/js/phone.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Theme JS-->
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
<!-- END: Theme JS-->

<!-- BEGIN: Page JS-->
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-ecommerce-checkout.js"></script>
<%-- <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/forms/form-input-mask.js"></script> --%>
<!-- END: Page JS-->
<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
<!-- ????????????API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
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
	var count = ${returnBookList.size()};
	console.log(count);
	function deleteBook(title){
		if(!confirm("?????? ?????????????????????????")){
			return false;			
		}else{
			$("[title='"+ title +"']").remove();
		}
		count--;

		if(count == 0){
			alert("?????? ?????? ????????? ???????????? ?????? ????????????.");
			window.close();
// 			history.go(-1);
		}
	}
</script>
<script>
	function doReserve(locker_num){
		if(!confirm("[" + locker_num + "]??? ?????????????????????????")){
			return false;
		}else{
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
	}
</script>
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