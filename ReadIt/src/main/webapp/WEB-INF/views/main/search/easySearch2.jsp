<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="bookList" value="${dataMap.bookList }" />
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
     <link rel="stylesheet" href="${webPath}/resources/css/confirm.css">
    <!-- END: Custom CSS-->
<style>
.ajax-loader {
  display: none;  /* ?????? ????????? ??? ????????? */
  position: fixed;
  background-color: rgba(255,255,255,0.7);
  z-index: +100 !important;
  width: 100%;
  height:100%;
}

.ajax-loader img {
  position:relative;
  top:40%;
  left:40%;
}

.body {
font-family: 'Noto Sans KR', sans-serif;
}
</style>
</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">
<div class="ajax-loader">
  <img src="<%=request.getContextPath() %>/resources/images/?????????.gif" class="img-responsive" />
</div>
      <div class="container" style="font-family: 'Noto Sans KR', sans-serif;">
      	<select class="form-control col-md-3" name="perPageNum" id="perPageNum" style="display: none;">
  			<option value="10" >????????????</option>
		</select>
		<select class="form-control form-select" name="searchType" id="searchType" style="display: none;">
				<option value="t">??????</option>
			</select>
            <div class="content-header row">
                <div class="content-header-left col-md-9 col-12 mb-2">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h2 class="content-header-title float-start mb-0">?????? ??????</h2>
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
            
            <div class="content-body" style="font-family: 'Noto Sans KR', sans-serif;">
                <!-- Knowledge base Jumbotron -->
                <section id="knowledge-base-search">
                    <div class="row">
                        <div class="col-12">
                            <div class="card knowledge-base-bg text-center" style=" height: 250px; background-color: white !important;  background-image: url('${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/banner/parallax-4.jpg')">
                                <div class="card-body" style="padding-top: 50px;">
                                    <h2 class="text-primary">?????? ??????</h2>
                                    <p class="card-text mb-2">
                                        <span>???????????? ????????? ?????? ?????? </span><span class="fw-bolder"> Book Book </span>
                                    </p>
                               		  <div class="kb-search-input" >
                                      <div class="input-group input-group-merge" style="height:60px; width:700px;">
										<select class="form-control form-select" name="searchType" id="searchType" style="width:10%">
											<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>??????</option>
											<option value="a" ${cri.searchType eq 'a' ? 'selected':'' }>??????</option>
											<option value="i" ${cri.searchType eq 'i' ? 'selected':'' }>ISBN</option>
										</select>
                                        <span class="input-group-text"><i data-feather=""></i></span>
										<input type="text" class="form-control" id="searchText" style="width:60%" name="keyword"  value="${param.keyword }" placeholder="???????????? ???????????????" onkeyup="if(window.event.keyCode==13){searchAjax()}"/>
                                       </div>
                                   </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!--/ Knowledge base Jumbotron -->
            </div>     

    <!-- BEGIN: Content-->
    <div class=" content ecommerce-application">
        <div class="content-wrapper container-xxl p-0">
            <div class="content-body">
                <div class="bs-stepper checkout-tab-steps">
                    <!-- Wizard starts -->
                    <div class="bs-stepper-header">
                        <div class="step" data-target="#step-cart" role="tab" id="step-cart-trigger">
                            <button type="button" class="step-trigger" disabled>
                            </button>
                        </div>
                    </div>
                    <!-- Wizard ends -->
                    <div class="bs-stepper-content">
                        <!-- Checkout Place order starts -->
                        <div id="step-cart" class="content" role="tabpanel" aria-labelledby="step-cart-trigger">
                            <div id="place-order" class="list-view product-checkout">
                                <!-- ?????? ?????? ??????  -->
                            	<div id="searchResult">
                                  	
                   				</div>
                               	<!-- ?????? ?????? ??????  ??? -->
                            	<!-- Checkout Place order Ends -->
                        	</div>
                        <!-- Checkout Customer Address Starts -->
                        <div id="step-address" class="content" role="tabpanel" aria-labelledby="step-address-trigger">
                        </div>
                        <!-- Checkout Customer Address Ends -->
                        <!-- Checkout Payment Starts -->
                        <div id="step-payment" class="content" role="tabpanel" aria-labelledby="step-payment-trigger">
                        </div>
                        <!-- Checkout Payment Ends -->
                        <!-- </div> -->
                    </div>
                </div>
            </div>
          </div>
        </div>
      </div>
	
</div>

<div class="wrap">
	<!-- confirm ????????? ??? ???????????? ?????? start-->
	<section class="modal modal-section type-confirm" style="margin-left:50%; padding-top: 40px;padding-bottom: 20px; margin-top:30%;">
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
	<section class="modal modal-section type-alert"  style="margin-left:50%; padding-top: 40px; padding-bottom: 40px; margin-top:20%;">
	    <div class="enroll_box">
	        <p class="menu_msg"></p>
	    </div>
	    <div class="enroll_btn">
	        <button class="btn pink_btn modal_close" >??????</button>
	    </div>
	</section>
	<!-- alert ????????? ??? ???????????? ?????? end-->
</div>
	<%@ include file="./jy_inheritance.jsp" %>
    <!-- END: Content-->
    <!-- BEGIN: Vendor JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

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
	var page = 1;
	
	function searchAjax(){
		page=1;
		var url="${webPath}/main/search/easySearchList.do";
		var perPageNum = $('select[name="perPageNum"]').val();
		var searchType = $('select[name="searchType"]').val();
		var keyword = $('input[name="keyword"]').val();
		console.log(keyword);
	
		$.ajax({
			url : url,
			type : 'GET',
			data : {
				page : page,
				perPageNum : perPageNum,
				searchType : searchType,
				keyword : keyword,
			},
			async : false,
			beforeSend: function(){
		    	$('.ajax-loader').css("display", "block");
		    },
			success : function(data) {
				console.log(data.bookList);
				var bookList = data.bookList;

				for (var i = 0 ; i < bookList.length; i++){
					if (bookList[i].state_code == 1){
						bookList[i].book_state="????????????";
					} else
						bookList[i].book_state="???????????????";
				}
				
				var template = Handlebars.compile($('#searchBook-list-template').html());
				var html = template(bookList);
				$('.checkout-items').remove();
				$("#searchResult").append(html);
				$('.ajax-loader').css("display", "none");
			},
			error : function(error){
				console.log(error);
			}
		});
		var myIfr = parent.document.querySelector("#ifr");
		setTimeout(()=>{
			 myIfr.height = 0;
			 console.log("ifr1 : " + myIfr.contentDocument.documentElement.scrollHeight);
			 myIfr.height = myIfr.contentDocument.documentElement.scrollHeight+100;
			 console.log("ifr2 : "+myIfr.height);
			// HTML5 ???????????????????????? ?????? ??????
			},100);
		page++;
	}
	
	function listAjax(){
		var url="${webPath}/main/search/easySearchList.do";
		var perPageNum = $('select[name="perPageNum"]').val();
		var searchType = $('select[name="searchType"]').val();
		var keyword = $('div.input-group>input[name="keyword"]').val();
	
		$.ajax({
			url : url,
			type : 'GET',
			data : {
				page : page,
				perPageNum : perPageNum,
				searchType : searchType,
				keyword : keyword,
			},
			async : true,
			beforeSend: function(){
		    	$('.ajax-loader').css("display", "block");
		    },
		    complete: function(){
		    	$('.ajax-loader').css("display", "none");
				//??????
		    },
			success : function(data) {
				console.log(data.bookList);
				var bookList = data.bookList;

				for (var i = 0 ; i < bookList.length; i++){
					if (bookList[i].state_code == 1){
						bookList[i].book_state="????????????";
					} else
						bookList[i].book_state="???????????????";
				}
				
				var template = Handlebars.compile($('#searchBook-list-template').html());
				var html = template(bookList);
				$("#searchResult").append(html);
				
			},
			error : function(error){
				console.log(error);
			}
		});
		var myIfr = parent.document.querySelector("#ifr");
		setTimeout(()=>{
			 console.log("ifr1 : " + myIfr.contentDocument.documentElement.scrollHeight);
			 myIfr.height = myIfr.contentDocument.documentElement.scrollHeight+100;
			 console.log("ifr2 : "+myIfr.height);
			// HTML5 ???????????????????????? ?????? ??????
			},100);
		page++;
	}
    
	//????????? ????????? ?????????
	var v_tunningVal = 1;  // ???????????? ?????? ?????? ????????? ??????
	    //???????????? ?????? ???????????? 
	$(parent.window).scroll(function(){
		var elem = $(parent.window.document.documentElement);
		var v_top = parseInt(elem[0].scrollTop);// ??????????????? ????????? ????????? ?????? ??????
	 	var v_clientHeight = elem[0].clientHeight;
	 	var v_docHeight = elem[0].scrollHeight;

	 	if( v_clientHeight + v_top > v_docHeight - v_tunningVal){
			console.log("top : " + v_top);
			console.log("client : " + v_clientHeight);
			console.log("doc : " + v_docHeight);
			listAjax();
	 	}
	});
</script>

<script>
function cartCheck(isbn){
	var book_isbn = isbn;
	console.log(book_isbn);
	
	$.ajax({
		url : "${webPath}/main/myInfo/checkCart.do",
		type:"post",
		data : {book_isbn:book_isbn},
		success : function(result){
			if(result == "DUPLICATED"){
//			      alert("?????? ???????????? ?????? ???????????????.");
		      action_popup.alert("?????? ???????????? ?????? ???????????????");
		      
			}else{
              insertCart(book_isbn);
           } 
		},
		error:function(error){
	       alert("?????????????????? ???????????? ????????? ???????????????..");
	    }
	});
}


function insertCart(book_isbn){

	$.ajax({
		type:"post",
		url:"${webPath}/main/myInfo/insertCart.do",
		data : {book_isbn:book_isbn},
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


 