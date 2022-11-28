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
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/select/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/tables/datatable/dataTables.bootstrap5.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/tables/datatable/responsive.bootstrap5.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/tables/datatable/buttons.bootstrap5.min.css">

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
.alignCenter{
	text-align: center;
}
</style>
</head>
<body>
	<div class="card">
		<div class="card-header">
		
		</div>
		<div class="card-body">
			<div id="myGrid" class="ag-theme-alpine" style="height:900px;padding-top:10px;"></div>
		</div>
	</div>
	<script src="https://unpkg.com/ag-grid-community/dist/ag-grid-community.min.js"></script>
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
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
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
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-user-list.js"></script>
	<!-- END: Page JS-->

	<%@ include file="./myPage_js.jsp"%>

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
		$('a').click(function() {
			parent.parentsUrl($(this).attr('href'));
		});
		consol.log("url" + url);

		var ur = $("form[href]");

		<script type="text/javascript">

		function change_parent_url(url) {
			document.location = url;
			alert(url)
		}

		function changePage(url, mCode) {
			var parent = window.parent.document;
			parent.querySelector('.nav-link').src = url;
			console.log(url);
			window.top.location.href = url;
		}

		var nall = $('.nav-link').val();
		console.log("nall", nall);

		var id_nav = $('.nav-link').attr('id');
		console.log("id_nav", id_nav);
	</script>
<script>
function milliToDate(millisec){
	var date = new Date(millisec);
	var year = date.getFullYear();
	var month = ("0" + (date.getMonth() + 1)).slice(-2);
	var day = ("0" + date.getDate()).slice(-2);
	    
	return year+"-"+month+"-"+day;
}
//컬럼 정의
const columnDefs = [
  {headerName:"번호",field: "pt_no", width:10, cellClass: 'alignCenter', hide:true},
  {headerName:"번호",field: "index", width:80, cellClass: 'alignCenter', filter:false},
  {headerName:"회원ID",field: "mem_id", width:150, cellClass: 'alignCenter'},
  {headerName:"적립유형",field: "pt_type",width: 150, cellClass: 'alignCenter'},
  {headerName:"적립포인트",field: "pt_sum",width: 200, cellClass: 'alignCenter'},
  {headerName:"적립일",field: "pt_date",width:250, cellClass: 'alignCenter'}
];
const rowData = [];
	
const gridOptions = {
	 columnDefs: columnDefs,
	 rowData: rowData,
	 defaultColDef: {  // 모든 컬럼에 공통으로 주는 옵션 설정
	   sortable:true,
	   filter:true,
	   resizable:true,
	 },
	 pagination:true,
	 //paginationAutoPageSize:true,
	 paginationPageSize:20,  //위 AutoPageSize랑 배타적
};

document.addEventListener('DOMContentLoaded', () => {
    const gridDiv = document.querySelector('#myGrid');
    new agGrid.Grid(gridDiv, gridOptions);
});
</script>
<script>
function pointListAjax(){
	$.ajax({
		url:"${webPath}/main/myInfo/pointList.do",
		type:"GET",
		data:{},
		//dataType:'application/json; charset=utf-8',
		success:function(data){
			console.log(data);
			for(var i=0; i<data.length; i++){
				data[i].pt_date = milliToDate(data[i].pt_date);
				if(data[i].pt_isincrease == 1){
					data[i].pt_sum = "+" + data[i].pt_sum
				}else{
					data[i].pt_sum = "-" + data[i].pt_sum
				}
				data[i].index = i+1;
			}
			
			gridOptions.api.setRowData(data);
		},
		error:function(error){
			console.log(error);
		}
	})
}
pointListAjax();
</script>
</body>





