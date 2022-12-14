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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
    <link rel="apple-touch-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
    

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
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->

<style>
#searchModal{
	    position:fixed; 
        width: 100%;
        height:100%; /* fixed ????????? ????????? ?????? ??? */
        left:0;
        top:0;
        background-color: rgba(248,248,248, 0.8);
        z-index: 200;
        display: none;  /* ?????? ????????? ??? ????????? */
}
#modalContent {
        margin: 20% auto;
        width: 50%;   /* ?????? ?????? */
        height: 50%;
        left:50%;
        top:50%;
 }
 .pd{
 	padding-bottom: 20px;
 }
 .alignCenter{
 	text-align: center;
 }
</style>
</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="horizontal-layout horizontal-menu  footer-static " data-menu="horizontal-menu" data-col="">
<!-- BEGIN: Content-->
<div class="content ">
    <div class="content-wrapper container-xxl p-0">
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                     <ul class="nav nav-pills mb-2" style="padding-top: 20px; padding-bottom: 10px;">
                        <!-- account -->
                        <li class="nav-item">
                            <a class="nav-link " onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/rent.do','M920301','ifr')">
                                <i data-feather="bell" class="font-medium-3 me-50"></i>
                                <span class="fw-bold">??????</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/return.do','M920302','ifr')">
                                <i data-feather="bell" class="font-medium-3 me-50"></i>
                                <span class="fw-bold">??????</span>
                            </a>
                        </li>
                    </ul>
                    <div class="card">
                    	<div class="row" style="margin-top: 20px;margin-left: 10px;">
	                    	<div class="col-6">
	                        	
	                        </div> 
	                        <div class="col-4"></div>
	                        <div class="col-2">
		                    	<button type="button" class="btn btn-secondary" style="width:90%" onclick="searchMember();">?????? ??????</button>
	                        </div>
                    	</div>
                        <div id="myGrid" class="ag-theme-alpine" style="height:580px;padding-top:10px; padding:10px;"></div>
                        <div class=" align-self-end">
	                       	<div style="margin: 10px;" class=" row">
	                       		<div class="input-group col-4" style="width:50%;">
	    	                   		<button type="button" class="btn btn-success waves-effect waves-float waves-light"  onclick="setStateReturn();">????????????</button>
	                       		</div>
	                       		<div class="input-group col-4" style="width:50%;">
		             		  		<button type="button" class="btn btn-warning waves-effect waves-float waves-light"  onclick="setStateDelay();">????????????</button>
	                       		</div>
	                       	</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- BEGIN modal -->
<div id="searchModal" >
	<div id="modalContent">
		<div class="card">
			<div class="card-header">????????????</div>
			<div class="card-body">
				<div class="row pd">
					<div class="input-group">
						<input type="text" id="memId" class="form-control" placeholder="??????ID??? ???????????????">
						<button type="button" class="btn btn-outline-primary" onclick="getMember();"><i data-feather='search'></i></button>
					</div>
				</div>
				<div>
					<div class="row pd">
						<div class="col-5">
							<div class="input-group">
								<span class="input-group-text">??????</span>
								<input type="text" class="form-control" id="name" disabled >
							</div>
						</div>
						<div class="col-7">
							<div class="input-group">
								<span class="input-group-text">????????????</span>
								<input type="text" class="form-control" id="phone" disabled>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="card-footer d-flex  justify-content-end">
				<div class="col-4">
					<button type="button"  class="btn btn-outline-primary" style="width:100%" onclick="closeModal();">??????</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END Modal -->
<!-- END: Content-->
	<script src="https://unpkg.com/ag-grid-community/dist/ag-grid-community.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
	
    <!-- BEGIN: Vendor JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/cleave.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/addons/cleave-phone.us.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/modal-two-factor-auth.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/page-account-settings-security.js"></script>
    <!-- END: Page JS-->
    
    <%@ include file="../../common/index_js.jsp" %>

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
function searchMember(){
	var smodal = document.querySelector("#searchModal");
	smodal.style.display = "block";
}
function closeModal(){
	var smodal = document.querySelector("#searchModal");
	$('#memId').val("");
	$('#name').val("");
	$('#phone').val("");
	smodal.style.display = "none";
}
function getMember(){
	var id = $("#memId").val();
	$.ajax({
		url : "<%=request.getContextPath()%>/admin/bookManage/rent/getMember.do?id=" + id,
		type : "GET",
		async : "true",
		data : {},
		dataType:"JSON",
		success : function(data){
			console.log(data);
			$('#name').val(data.mem_name);
			$('#phone').val(data.mem_phone);
		},
		error : function(error){
			Swal.fire({
                icon: 'warning',
                title: '?????????????????????. ',
                text: ' '
             })
		}
	});
}
</script>
<script>
function milliToDate(millisec){
	var date = new Date(millisec);
	var year = date.getFullYear();
	var month = ("0" + (date.getMonth() + 1)).slice(-2);
	var day = ("0" + date.getDate()).slice(-2);
	    
	return year+"-"+month+"-"+day;
}

const columnDefs = [
	  {headerName:"????????????",field: "rent_no", width:50, filter:false,headerCheckboxSelection: true, checkboxSelection: true},
	  {headerName:"No.",field: "index", width:70, cellClass: 'alignCenter', filter:false},
	  {headerName:"???????????????",field: "rm_no", width:10, hide:true},
	  {headerName:"??????ID",field: "mem_id", width:100},
	  {headerName:"????????????",field: "book_no", width:10, hide:true},
	  {headerName:"?????? ??????",field: "book_title", width:500},
	  {headerName:"ISBN",field: "isbn", width:200, cellClass: 'alignCenter'},
	  {headerName:"?????????",field: "rent_date", width:120, cellClass: 'alignCenter'},
	  {headerName:"???????????????",field: "due_date", width:120, cellClass: 'alignCenter'},
	  {headerName:"????????????",field: "is_return", width:120, cellClass: 'alignCenter'},
	  {headerName:"????????????",field: "is_delay", width:120, cellClass: 'alignCenter'},
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
</script>   
<script>
function returnListAjax(){
	$.ajax({
		url:"<%=request.getContextPath()%>/admin/bookManage/return/list.do",
		type:"GET",
		data:{},
		//dataType:'application/json; charset=utf-8',
		success:function(data){
			console.log(data);
			for(var i = 0; i<data.length; i++){
				data[i].index = i+1;
				data[i].rent_date = milliToDate(data[i].rent_date);
				data[i].due_date = milliToDate(data[i].due_date);
				if(data[i].is_delay == 0){
					data[i].is_delay = 'N'
				}else{
					data[i].is_delay = 'Y'
				}
			}
			gridOptions.api.setRowData(data);
		},
		error:function(error){
			console.log(error);
		}
	})
}
returnListAjax();
</script>
<script>
function getSelectedRowData() {
	  let selectedData = gridOptions.api.getSelectedRows();
	  var data = [];
	  var rent_no = -1;
	  if(selectedData.length == 0){
		  Swal.fire({
              icon: 'warning',
              title: '????????? ?????? ????????????. ',
              text: ' '
           })
		  return;
	  }
	  for(var i = 0; i < selectedData.length; i++){
		  var row={};
		  row.rent_no = selectedData[i].rent_no;
		  row.isbn = selectedData[i].isbn;
		  row.book_no = selectedData[i].book_no;
		  row.mem_id = selectedData[i].mem_id;
		  row.is_return = selectedData[i].is_return;
		  row.is_delay = selectedData[i].is_delay;
		  data.push(row);
	  }
	  console.log(data);
	  return data;
}
</script>
<script>
function setStateReturn(){
	
	Swal.fire({
		   title: '????????????',
		   text: '???????????? ???????????????????',
		   icon: 'warning',
		   
		   showCancelButton: true, // cancel?????? ?????????. ????????? ?????? ??????
		   confirmButtonColor: '#3085d6', // confrim ?????? ?????? ??????
		   cancelButtonColor: '#d33', // cancel ?????? ?????? ??????
		   confirmButtonText: '??????', // confirm ?????? ????????? ??????
		   cancelButtonText: '??????', // cancel ?????? ????????? ??????
		   
		   reverseButtons: false, // ?????? ?????? ?????????
		   
		}).then(result => {
			if (result.isConfirmed) {
				let data = getSelectedRowData()
				for(var i=0; i<data.length; i++){
					data[i].is_return = 'Y';
					if(data[i].is_delay == 'N'){
						data[i].is_delay = 0;
					}else{
						data[i].is_delay = 1;
					}
				}
				var paramList = {
						"list" : data
				}
				
				$.ajax({
					url : "<%=request.getContextPath()%>/admin/bookManage/rent/setStateReturn.do",
					type : "POST",
					async : "true",
					data : JSON.stringify(paramList) ,
					dataType:"text",
					contentType : "application/json; charset=UTF-8",
					
					success : function(data){
						Swal.fire({
			                 icon: 'success',
			                 title: ' ?????????????????????.',
			                 text: ' '
			              })
			               .then(function(){
			             		returnListAjax();
			               })
					},
					error : function(error){
						 Swal.fire({
			                 icon: 'warning',
			                 title: '"????????????????????? ',
			              })
					}
				})
			}
		})
}

function setStateDelay(){
	Swal.fire({
		   title: '????????????',
		   text: '???????????? ???????????????????',
		   icon: 'warning',
		   
		   showCancelButton: true, // cancel?????? ?????????. ????????? ?????? ??????
		   confirmButtonColor: '#3085d6', // confrim ?????? ?????? ??????
		   cancelButtonColor: '#d33', // cancel ?????? ?????? ??????
		   confirmButtonText: '??????', // confirm ?????? ????????? ??????
		   cancelButtonText: '??????', // cancel ?????? ????????? ??????
		   
		   reverseButtons: false, // ?????? ?????? ?????????
		   
		}).then(result => {
			if (result.isConfirmed) {
				let data = getSelectedRowData()
				for(var i=0; i<data.length; i++){
					data[i].is_delay = 1;
				}
				var paramList = {
						"list" : data
				}
				
				$.ajax({
					url : "<%=request.getContextPath()%>/admin/bookManage/rent/setStateDelay.do",
					type : "POST",
					async : "true",
					data : JSON.stringify(paramList) ,
					dataType:"text",
					contentType : "application/json; charset=UTF-8",
					
					success : function(data){
						Swal.fire({
			                 icon: 'success',
			                 title: ' ?????????????????????.',
			                 text: ' '
			              })
			               .then(function(){
			             		returnListAjax();
			               })
					},
					error : function(error){
						 Swal.fire({
			                 icon: 'warning',
			                 title: '"????????????????????? ',
			              })
					}
				})
		  }
	})
}
</script>
