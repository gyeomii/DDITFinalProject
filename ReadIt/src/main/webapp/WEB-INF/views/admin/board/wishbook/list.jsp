<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


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
<title>Dashboard ecommerce - Vuexy - Bootstrap HTML admin template</title>
<link rel="apple-touch-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;700&display=swap" rel="stylesheet">
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
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">



    <!-- END: Custom CSS-->
    <script src="https://unpkg.com/ag-grid-community/dist/ag-grid-community.min.js"></script>
    <style>
    .alignCenter{
    	text-align: center;
    }
    </style>
</head>
<body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">
 <div class="container" style="font-family: 'Noto Sans KR', sans-serif;">
	<div class="content-body">
		    <!-- Knowledge base Jumbotron -->
	    <!--/ Knowledge base Jumbotron -->
	    <!-- BEGIN: Content-->
	        <div class="content-wrapper container-xxl p-0">
	            <div class="content-body">
	                <div class="bs-stepper checkout-tab-steps">
						<!-- Wizard starts -->
						<div class="bs-stepper-header justify-content-center">
						    <div class="step" data-target="#step-cart" role="tab" id="step-cart-trigger">
						        <button type="button" class="step-trigger" aria-selected="true">
						            <span class="bs-stepper-box" style="background-color: #FE9B82; color: white;">
						                <i data-feather="shopping-cart" class="font-medium-3"></i>
						            </span>
						            <span class="bs-stepper-label">
						                <span class="bs-stepper-title">????????????</span>
						            </span>
						        </button>
						    </div>
						    <div class="line">
						        <i data-feather="chevron-right" class="font-medium-2"></i>
						    </div>
						    <div class="step" data-target="#step-address" role="tab" id="step-address-trigger">
						        <button type="button" class="step-trigger" aria-selected="true">
						            <span class="bs-stepper-box" style="background-color: #FEC282; color: white;">
						                <i data-feather="home" class="font-medium-3"></i>
						            </span>
						            <span class="bs-stepper-label">
						                <span class="bs-stepper-title">?????????</span>
						            </span>
						        </button>
						    </div>
						    <div class="line">
						        <i data-feather="chevron-right" class="font-medium-2"></i>
						    </div>
						    <div class="step" data-target="#step-address" role="tab" id="step-address-trigger">
						        <button type="button" class="step-trigger" aria-selected="true">
						            <span class="bs-stepper-box" style="background-color: #E0FD73; color: white;">
						                <i data-feather="home" class="font-medium-3"></i>
						            </span>
						            <span class="bs-stepper-label">
						                <span class="bs-stepper-title">?????? ??????/??????</span>
						            </span>
						        </button>
						    </div>
						    <div class="line">
						        <i data-feather="chevron-right" class="font-medium-2"></i>
						    </div>
						    <div class="step" data-target="#step-payment" role="tab" id="step-payment-trigger">
						        <button type="button" class="step-trigger" aria-selected="true">
						            <span class="bs-stepper-box" style="background-color: #A8FB9B; color: white;">
						                <i data-feather="credit-card" class="font-medium-3"></i>
						            </span>
						            <span class="bs-stepper-label">
						                <span class="bs-stepper-title">?????????</span>
						            </span>
						        </button>
						    </div>
						    <div class="line">
						        <i data-feather="chevron-right" class="font-medium-2"></i>
						    </div>
						    <div class="step" data-target="#step-payment" role="tab" id="step-payment-trigger">
						        <button type="button" class="step-trigger" aria-selected="true">
						            <span class="bs-stepper-box" style="background-color: #A39DFC; color: white;">
						                <i data-feather="credit-card" class="font-medium-3"></i>
						            </span>
						            <span class="bs-stepper-label">
						                <span class="bs-stepper-title">????????????</span>
						            </span>
						        </button>
						    </div>
						    <div class="line">
						        <i data-feather="chevron-right" class="font-medium-2"></i>
						    </div>
						    <div class="step" data-target="#step-payment" role="tab" id="step-payment-trigger">
						        <button type="button" class="step-trigger" aria-selected="true">
						            <span class="bs-stepper-box" style="background-color: #D59DFC; color: white;">
						                <i data-feather="credit-card" class="font-medium-3"></i>
						            </span>
						            <span class="bs-stepper-label">
						                <span class="bs-stepper-title">????????????</span>
						            </span>
						        </button>
						    </div>
						</div>
						<!-- Wizard ends -->
					</div>
			</div>
		</div>
		<div id="myGrid" class="ag-theme-alpine" style="height:739px;padding-top:10px;"></div>
	</div>     
</div>
<script	src="<%=request.getContextPath()%>/resources/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
<!-- BEGIN Vendor JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>
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
<c:if test="${from eq 'regist'}">
   <script>
		alert("?????????????????????.");
		window.opener.location.reload();
		window.close();
   </script>
</c:if>
<script>
//?????? ??????
const columnDefs = [
  {headerName:"??????",field: "index", width:80, cellClass: 'alignCenter', filter:false},
  {headerName:"ISBN",field: "isbn", width:150, cellClass: 'alignCenter'},
  {headerName:"????????????",field: "wish_title",width:550, cellClass:""},
  {headerName:"??????",field: "wish_author",width: 200, cellClass:""},
  {headerName:"?????????",field: "wish_publisher",width: 150, cellClass:""},
  {headerName:"?????????",field: "wish_regdate",width: 120, cellClass:""},
  {headerName:"?????????",field: "mem_id",width:100, cellClass:""},
  {headerName:"??????",field: "wish_state",width:100, cellClass:""}
];
const rowData = [
	  { index: "Toyota", isbn: "Celica", wish_title: "35000",wish_author:"1000", wish_publisher:"1000", wish_regdate:"1000", mem_id:"1000", wish_state:"1000"}
	];
	
const gridOptions = {
	 columnDefs: columnDefs,
	 rowData: rowData,
	 defaultColDef: {  // ?????? ????????? ???????????? ?????? ?????? ??????
	   sortable:true,
	   filter:true,
	   resizable:true,
	 },
	 pagination:true,
	 //paginationAutoPageSize:true,
	 paginationPageSize:15,  //??? AutoPageSize??? ?????????
};

document.addEventListener('DOMContentLoaded', () => {
    const gridDiv = document.querySelector('#myGrid');
    new agGrid.Grid(gridDiv, gridOptions);
});

function sizeToFit(){
	gridOptions.api.sizeColumnsToFit({defaultMinWidth: 100});
}

function wishListAjax(){
	$.ajax({
		url:"<%=request.getContextPath()%>/main/search/wishbookList/listAjax.do",
		type:"GET",
		data:{},
		//dataType:'application/json; charset=utf-8',
		success:function(data){
			console.log("data",data);
			for(var i= 0; i<data.length; i++){
				console.log(data[i].wish_regdate);
				data[i].wish_regdate = moment(data[i].wish_regdate).format('YYYY-MM-DD')
				data[i].index = i+1;
				if(data[i].wish_state == 0){
					data[i].wish_state = "????????????";
				}else if(data[i].wish_state == 1){
					data[i].wish_state = "?????????";
				}else if(data[i].wish_state == 2){
					data[i].wish_state = "??????";
				}else if(data[i].wish_state == 3){
					data[i].wish_state = "????????????";
				}else if(data[i].wish_state == 4){
					data[i].wish_state = "?????????";
				}else if(data[i].wish_state == 5){
					data[i].wish_state = "????????????";
				}
			}
			gridOptions.api.setRowData(data);
			sizeToFit();
		},
		error:function(error){
			console.log(error);
		}
	})
}

wishListAjax();
</script>