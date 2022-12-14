<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
    <title>Security - Vuexy - Bootstrap HTML admin template</title>
    <link rel="apple-touch-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/select/select2.min.css">
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
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-validation.css">
      <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-flat-pickr.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/confirm.css">
    <script src="<%=request.getContextPath()%>/resources/js/confirm.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
  .alignCenter{
 	text-align: center;
 }
</style>
</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-menu="horizontal-menu" data-col="" style="font-family: 'Noto Sans KR', sans-serif;">
    <!-- BEGIN: Content-->
    <div class="app-content content" style="padding-top: 0px;">
        <div class="content-wrapper container-xxl p-0">
            <div class="content-body">
                <div class="row">
                    <div class="col-12">
                        <ul class="nav nav-pills mb-2" style="padding-top: 40px; padding-bottom: 20px;">
                            <!-- account -->
                           <li class="nav-item">
                                <a class="nav-link active" onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/stupid.do','M920501','ifr')">
                                    <i data-feather="bell" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">?????? ??????</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/stupidBookDone.do','M920502','ifr')">
                                    <i data-feather='check-square' class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">?????? ??????</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/stupidBookAdd.do','M9205023','ifr')">
                                    <i data-feather="plus-square" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">?????? ??????</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" onclick="OpenWindow('heightCheck.do','????????? ',1500,1050);">
                                    <i data-feather="plus-square" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">?????????</span>
                                </a>
                            </li>    
                            <li class="nav-item">
                                <a class="nav-link" onclick="OpenWindow('fingerCheck.do','?????????',1500,1050);">
                                    <i data-feather="plus-square" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">????????????</span>
                                </a>
                            </li>                        
                        </ul>
					<!-- 	chart -->
		                <section id="chartjs-chart">
		                    <div class="row">
		                        <!-- Horizontal Bar Chart Start -->
		                        <div class="col-xl-6 col-12">
		                            <div class="card">
		                                <div class="card-header d-flex justify-content-between align-items-sm-center align-items-start flex-sm-row flex-column">
		                                    <div class="header-left">
		                                        <h4 class="card-title">????????? ???????????? ?????? (?????????)</h4>
		                                    </div>
		                                    <div class="header-right d-flex align-items-center mt-sm-0 mt-1">
		                                    </div>
		                                </div>
		                                <div class="card-body"style="min-height: 420px;">
		                                    <canvas class="horizontal-bar-chart-ex" data-height="400"></canvas>
		                                </div>
		                            </div>
		                        </div>
		                        <!-- Horizontal Bar Chart End -->
		                        <!-- Polar Area Chart Starts -->
		                        <div class="col-lg-6 col-12">
		                            <div class="card" style="height: 485px;">
		                                <div class="card-header">
		                                    <h4 class="card-title">(??????) ????????? ?????? ?????? ??????</h4>
		                                </div>
		                                <div class="card-body">
		                                    <canvas class="doughnut-chart-ex chartjs" data-height="350"></canvas>
		                                </div>
		                            </div>
		                        </div>
		                        <!-- Polar Area Chart Ends-->
		       				 </div>
		                </section>
						<!-- end chart -->
						<div class="card">
							<div class="card-body">
								<div id="myGrid" class="ag-theme-alpine" style="height:450px;padding-top:10px; padding:10px;"></div>
							</div>
							<div class="card-footer">
								<button type="button" class="btn btn-success" style="left: 92%" onclick="setCorrect()">????????????</button>
							</div>					
						</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END: Content-->
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
<input type="hidden" value="${loginUser.mem_id}"  id="mem_id">
    <!-- BEGIN: Vendor JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->
	<script src="https://unpkg.com/ag-grid-community/dist/ag-grid-community.min.js"></script>
    <!-- BEGIN: Page Vendor JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/cleave.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/addons/cleave-phone.us.js"></script>
        <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/charts/chart.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="<%=request.getContextPath()%>/resources/js/stupid-chartjs.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/modal-two-factor-auth.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/page-account-settings-security.js"></script>
    <!-- END: Page JS-->
    <script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
        <script src="<%=request.getContextPath()%>/resources/js/confirm.js"></script>
    <%@ include file="../../common/index_js.jsp" %>

    <script>
        $(window).on('load', function() {
            if (feather) {
                feather.replace({
                    width: 14,
                    height: 14
                });
            }
            sgAjax('${webPath}');
        })
    </script>
    <script>
const columnDefs = [
	  {headerName:"???????????????",field: "sb_no", width:10,  filter:false,headerCheckboxSelection: true, checkboxSelection: true},
	  {headerName:"No.",field: "index", width:100, cellClass: 'alignCenter', filter:false},
	  {headerName:"??????KDC",field: "book_kdc", width:150, cellClass: 'alignCenter'},
	  {headerName:"???????????? ??????",field: "sb_location", width:300},
	  {headerName:"?????? ??????????????? ???",field: "move_location", width:300},
	  {headerName:"???????????????",field: "sb_regdate", width:200, cellClass: 'alignCenter'},
	  {headerName:"????????????",field: "sb_isdone", width:10, cellClass: 'alignCenter', hide:true},
	  {headerName:"????????????",field: "sb_isdone_kor", width:200, cellClass: 'alignCenter'}
	];
const rowData = [
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
	 rowSelection: 'multiple',
	 //paginationAutoPageSize:true,
	 paginationPageSize:15,  //??? AutoPageSize??? ?????????
};

document.addEventListener('DOMContentLoaded', () => {
    const gridDiv = document.querySelector('#myGrid');
    new agGrid.Grid(gridDiv, gridOptions);
});

function milliToDate(millisec){
	var date = new Date(millisec);
	var year = date.getFullYear();
	var month = ("0" + (date.getMonth() + 1)).slice(-2);
	var day = ("0" + date.getDate()).slice(-2);
	    
	return year+"-"+month+"-"+day;
}

function setDataKOR(data){
	for(var i = 0; i < data.length; i++){
		data[i].index = i+1;
		if(data[i].sb_isdone == 0){
			data[i].sb_isdone_kor = "?????????";
		}else if(data[i].rent_code == 1){
			data[i].sb_isdone_kor = "????????????";
		}
		
		date = milliToDate(data[i].sb_regdate);
		data[i].sb_regdate = date;
	}
	return data;
}
</script>
<script>
function stupidListAjax(){
	$.ajax({
		url:"${webPath}/admin/bookManage/stupidBookAdd/List.do",
		type:"GET",
		data:{},
		//dataType:'application/json; charset=utf-8',
		success:function(data){
			console.log(data);
			fixData = setDataKOR(data);
			gridOptions.api.setRowData(fixData);
		},
		error:function(error){
			console.log(error);
		}
	})
}
stupidListAjax();
</script>
<script>
var mem_id = $('#mem_id').val();
function getSelectedRowData() {
	  let selectedData = gridOptions.api.getSelectedRows();
	  var data = [];
	  if(selectedData.length == 0){
		  action_popup.alert("????????? ?????? ????????????.");
		  return;
	  }
	  for(var i = 0; i < selectedData.length; i++){
		  var row={};
		  row.sb_no = selectedData[i].sb_no;
		  row.sb_isdone = selectedData[i].sb_isdone;
		  row.ad_id = mem_id;
		  data.push(row);
	  }
	  console.log(data);
	  return data;
}
</script>
<script>
function setCorrect(){
	let selected = getSelectedRowData();
	for( var i = 0; i < selected.length; i++){
		selected[i].sb_isdone = 1;
	}
	console.log(selected);
	var paramList = {
			"list" : selected
	}
	action_popup.confirm("???????????? ????????? ?????????????????????????", function(res){
		if(res){
			$.ajax({
				url : "${webPath}/admin/bookManage/setCorrect.do",
				type : "POST",
				async : "true",
				data : JSON.stringify(paramList) ,
				dataType:"text",
				contentType : "application/json; charset=UTF-8",
				success : function(data){
					action_popup.alert("???????????????????????????.");
					stupidListAjax();
				},
				error : function(error){
					console.log(error,'??????');
				}
			});
		}else{
			action_popup.alert("?????????????????????.");
		}
	});
}
</script>
</body>
<!-- END: Body-->
