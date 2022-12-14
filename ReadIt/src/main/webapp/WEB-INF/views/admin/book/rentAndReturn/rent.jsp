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
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
     <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/confirm.css">
    <!-- END: Custom CSS-->
<style>
#searchModal{
	    position:fixed; 
        width: 100%;
        height:100%; /* fixed 일때는 요따로 써도 됨 */
        left:0;
        top:0;
        background-color: rgba(248,248,248, 0.8);
        z-index: 200;
        display: none;  /* 보통 초기에 안 보이겡 */
}
#modalContent {
        margin: 20% auto;
        width: 50%;   /* 부모 기준 */
        height: 50%;
        left:50%;
        top:50%;
 }
#readyModal{
	    position:fixed; 
        width: 100%;
        height:100%; /* fixed 일때는 요따로 써도 됨 */
        left:0;
        top:0;
        background-color: rgba(248,248,248, 0.8);
        z-index: 200;
        display: none;  /* 보통 초기에 안 보이겡 */
}
#readyContent {
        margin: 10% auto;
        width: 70%;   /* 부모 기준 */
        height: 50%;
        left:50%;
        top:30%;
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
                            <a class="nav-link active" onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/rent.do','M920301','ifr')">
                                <i data-feather="bell" class="font-medium-3 me-50"></i>
                                <span class="fw-bold">대출</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/return.do','M920302','ifr')">
                                <i data-feather="bell" class="font-medium-3 me-50"></i>
                                <span class="fw-bold">반납</span>
                            </a>
                        </li>
                    </ul>
                    <div class="card">
                    	<div class="row" style="margin-top: 20px;margin-left: 10px;">
	                    	<div class="col-6 btn-group">
	                        	<button type="button" id="field" class="btn btn-outline-primary" onclick="fieldListAjax();">현장</button>
	                            <button type="button" id="delivery" class="btn btn-outline-primary" onclick="deliveryListAjax();">배송</button>
	                            <button type="button" id="drive" class="btn btn-outline-primary" onclick="driveListAjax();">드라이브 스루</button>
	                            <button type="button" id="locker" class="btn btn-outline-primary" onclick="lockerListAjax();">무인 사물함</button>
	                        </div> 
	                        <div class="col-4"></div>
	                        <div class="col-2">
		                    	<button type="button" class="btn btn-secondary" style="width:90%" onclick="searchMember();">회원 검색</button>
	                        </div>
                    	</div>
                        <div id="myGrid" class="ag-theme-alpine" style="height:580px;padding-top:10px; padding:10px;"></div>
                        <div class="row">
	                        <div class="col-4">
	                        	<div style="pa; visibility: hidden;">aksjndbg;lkasjbv;kljas;fdgvja</div>
	                        </div>
	                        <div class="col-8">
		                       	<div style="margin: 10px;" class="row">
	                       			<input type="hidden" id="approve" value="2">
		                       		<div class="col-2">
		    	                   		<button type="button" class="btn btn-success waves-effect waves-float waves-light"  onclick="setStateApprove();">도서준비중</button>
		                       		</div>
		                       		<div class=" col-2" >
		    	                   		<button type="button" class="btn btn-primary waves-effect waves-float waves-light"  style="font-size: 90%;" onclick="setStateReady();">도서준비완료</button>
		                       		</div>
		                       		<div class=" col-2" >
		    	                   		<button type="button" class="btn btn-info waves-effect waves-float waves-light"  style="font-size: 90%;" onclick="setStateComplete();">도서대출완료</button>
		                       		</div>
		                       		<div class="col-2" >
			             		  		<button type="button" class="btn btn-warning waves-effect waves-float waves-light"  onclick="setStateReject(3);"> 예약거절</button>
		                       		</div>
		                       		<div class="col-2" >
			             		  		<button type="button" class="btn btn-danger waves-effect waves-float waves-light"  onclick="setStateReject(6);"> 기한만료</button>
		                       		</div>
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
			<div class="card-header">회원검색</div>
			<div class="card-body">
				<div class="row pd">
					<div class="input-group">
						<input type="text" id="memId" class="form-control" placeholder="회원ID를 입력하세요">
						<button type="button" class="btn btn-outline-primary" onclick="getMember();"><i data-feather='search'></i></button>
					</div>
				</div>
				<div>
					<div class="row pd">
						<div class="col-5">
							<div class="input-group">
								<span class="input-group-text">이름</span>
								<input type="text" class="form-control" id="name" disabled >
							</div>
						</div>
						<div class="col-7">
							<div class="input-group">
								<span class="input-group-text">전화번호</span>
								<input type="text" class="form-control" id="phone" disabled>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="card-footer d-flex  justify-content-end">
				<div class="col-4">
					<button type="button"  class="btn btn-outline-primary" style="width:100%" onclick="closeModal();">닫기</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END Modal -->

<!-- BEGIN  readdyModal -->
<div id="readyModal" >
	<div id="readyContent">
		<div class="card">
			<div class="card-header">도서준비완료</div>
			<div class="card-body">
				<div class="row">
					<div class="col-6">
						<div class="pd">
							<select class="form-select" id="isbnSelector" onchange="selectChange(this);">
							</select>
						</div>
						<div id="selectorBody"  class="pd">
							<div class="row pd" >
								<div class="col-6">
									<div class="input-group">
										<span class="input-group-text">ID</span>
										<input type="text" class="form-control" id="rd_id" disabled >
									</div>
								</div>
								<div class="col-6">
									<div class="input-group">
										<span class="input-group-text">구분</span>
										<input type="text" class="form-control" id="rd_type" disabled >
									</div>
								</div>
							</div>
							<div class="input-group pd">
								<span class="input-group-text">도서제목</span>
								<input type="text" class="form-control" id="rd_title" disabled style="text-align:left;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;" >
							</div>
							<div class="input-group pd">
								<span class="input-group-text">ISBN</span>
								<input type="text" class="form-control" id="rd_isbn" disabled >
							</div>
							<div class="pd input-group">
								<button type="button" class="btn btn-success" style="width:100%;" onclick="isbnSearch()">도서검색</button>
							</div>
							<div class="input-group pd">
								<span class="input-group-text">도서번호</span>
								<input type="text" class="form-control" id="rd_bookNo" disabled >
							</div>
							<button type="button" class="btn btn-primary" style="width:100%;" onclick="setBookNo()">도서번호지정</button>
						</div>
					</div>
					<div class="col-6">
						<div id="searchResult" style="overflow-y:scroll; height:400px; background-color: rgba(248,248,248, 1)">

						</div>
					</div>
				</div>
			</div>
			<div class="card-footer d-flex  justify-content-end">
				<div class="col-4">
					<button type="button"  class="btn btn-outline-primary" style="width:100%" onclick="closeReady();">닫기</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END Modal -->

<div class="wrap" id="wrap" style="position: relative;">
	<!-- confirm 모달을 쓸 페이지에 추가 start-->
	<section class="modal modal-section type-confirm" style="margin-left: 50%; padding-top: 40px;padding-bottom: 20px; margin-top: 300px;">
		<div class="enroll_box">
		    <p class="menu_msg"></p>
		</div>
		<div class="enroll_btn">
		    <button class="btn pink_btn btn_ok">확인</button>
		    <button class="btn gray_btn modal_close" style="padding-top: 0px;">닫기</button>
		</div>
	</section>
	<!-- confirm 모달을 쓸 페이지에 추가 end-->
	
	<!-- alert 모달을 쓸 페이지에 추가 start-->
	<section class="modal modal-section type-alert" style="margin-left: 50%; padding-top: 40px; padding-bottom: 40px; margin-top: 300px;">
	    <div class="enroll_box">
	        <p class="menu_msg"></p>
	    </div>
	    <div class="enroll_btn">
	        <button class="btn pink_btn modal_close">확인</button>
	    </div>
	</section>
	<!-- alert 모달을 쓸 페이지에 추가 end-->
</div>


<!-- END: Content-->
	<script src="https://unpkg.com/ag-grid-community/dist/ag-grid-community.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>
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
   })
</script>
<script>
var reloadWhatList = -1;
var rentType = -1;
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
function closeReady(){
	if(reloadWhatList == 0){ // 현장예약
		fieldListAjax();
	}else if(reloadWhatList == 1){ // 배송예약
		deliveryListAjax();
	}else if(reloadWhatList == 2){ // 드라이브스루
		driveListAjax();
	}else if(reloadWhatList == 3){ // 사물함예약
		lockerListAjax()
	}
	var rmodal = document.querySelector("#readyModal");
	rmodal.style.display = "none";
	$('#isbnSelector').empty();
	$('#rd_id').val("");
	$('#rd_type').val("");
	$('#rd_title').val("");
	$('#rd_isbn').val("");
	$('#rd_bookNo').val("");
	$('#searchResult').empty();
}
function getMember(){
	var id = $("#memId").val();
	$.ajax({
		url : "${webPath}/admin/bookManage/rent/getMember.do?id=" + id,
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
			console.log(error,'실패');
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

function setDataKOR(data){
	for(var i = 0; i < data.length; i++){
		data[i].index = i+1;
		if(data[i].rent_code == 3){
			data[i].rent_code_kor = "사물함";
		}else if(data[i].rent_code == 2){
			data[i].rent_code_kor = "DT";
		}else if(data[i].rent_code == 1){
			data[i].rent_code_kor = "배송";
		}else if(data[i].rent_code == 0){
			data[i].rent_code_kor = "현장";
		}
		
		var state = data[i].rent_status;
		if(state == 0){
			data[i].state_kor = "승인대기";
		}else if(state == 1){
			data[i].state_kor = "예약취소";
		}else if(state == 2){
			data[i].state_kor = "도서준비중";
		}else if(state == 3){
			data[i].state_kor = "예약거절";
		}else if(state == 4){
			data[i].state_kor = "준비완료";
		}else if(state == 5){
			data[i].state_kor = "대출완료";
		}else if(state == 6){
			data[i].state_kor = "기한만료";
		}
		date = milliToDate(data[i].want_date);
		data[i].want_date = date;
	}
	return data;
}
</script>
<script>
const columnDefs = [
	  {headerName:"마스터번호",field: "rm_no", width:50,  filter:false,headerCheckboxSelection: true, checkboxSelection: true},
	  {headerName:"No.",field: "index", width:60, cellClass: 'alignCenter', filter:false},
	  {headerName:"구분번호",field: "rent_code", width:10, hide:true},
	  {headerName:"구분",field: "rent_code_kor", width:100, cellClass: 'alignCenter', hide:true},
	  {headerName:"회원ID",field: "mem_id", width:100},
	  {headerName:"도서 제목",field: "book_title", width:280},
	  {headerName:"도서 위치",field: "location", width:230},
	  {headerName:"ISBN",field: "isbn", width:150, cellClass: 'alignCenter'},
	  {headerName:"희망대출일",field: "want_date", width:120, cellClass: 'alignCenter'},
	  {headerName:"상태번호",field: "rent_status", width:10, cellClass: 'alignCenter', hide:true},
	  {headerName:"상태",field: "state_kor", width:110},
	  {headerName:"비고",field: "etc", width:250},

	];
const rowData = [
	];
	
const gridOptions = {
	 columnDefs: columnDefs,
	 rowData: rowData,
	 defaultColDef: {  // 모든 컬럼에 공통으로 주는 옵션 설정
	   sortable:true,
	   filter:true,
	   resizable:true,
	 },
	 pagination:true,
	 rowSelection: 'multiple',
	 //paginationAutoPageSize:true,
	 paginationPageSize:15,  //위 AutoPageSize랑 배타적
};

document.addEventListener('DOMContentLoaded', () => {
    const gridDiv = document.querySelector('#myGrid');
    new agGrid.Grid(gridDiv, gridOptions);
});
</script>
<script>
function getSelectedRowData() {
	  let selectedData = gridOptions.api.getSelectedRows();
	  var data = [];
	  var rent_code = -1;
	  if(selectedData.length == 0){
		  action_popup.alert("선택된 열이 없습니다.");
		  return;
	  }
	  for(var i=0; i<selectedData.length; i++){
		  if(selectedData[i].rent_status == 1){
			  action_popup.alert("예약취소된 건은 변경하실 수 없습니다.");
			  return;
		  }
	  }
	  for(var i = 0; i < selectedData.length; i++){
		  var row={};
		  rent_code = selectedData[i].rent_code;
		  row.rm_no = selectedData[i].rm_no;
		  row.mem_id = selectedData[i].mem_id;
		  row.rent_status = selectedData[i].rent_status;
		  row.isbn = selectedData[i].isbn;
		  data.push(row);
	  }
	  console.log(data);
	  console.log(rent_code);
	  return [data, rent_code];
}
</script>
<script>
/* ==================================도서 상태 승인================================  */
function setStateApprove(){
	var approve = Number($('#approve').val());
	if(approve == ""){
		action_popup.alert("변경할 상태를 선택하세요");
		return;
	}
	let [selected, rent_code] = getSelectedRowData();
	for( var i = 0; i < selected.length; i++){
		selected[i].rent_status = approve;
	}
	console.log(selected);
	var paramList = {
			"list" : selected
	}
	console.log(paramList);
	action_popup.confirm("예약 상태를 변경하시겠습니까?", function(res){
		if(res){
			$.ajax({
				url : "${webPath}/admin/bookManage/rent/setStateApprove.do",
				type : "POST",
				async : "true",
				data : JSON.stringify(paramList) ,
				dataType:"text",
				contentType : "application/json; charset=UTF-8",
				
				success : function(data){
					action_popup.alert("변경되었습니다.");
					if(rent_code == 0){ // 현장예약
						fieldListAjax();
					}else if(rent_code == 1){ // 배송예약
						deliveryListAjax();
					}else if(rent_code == 2){ // 드라이브스루
						driveListAjax();
					}else if(rent_code == 3){ // 사물함예약
						lockerListAjax()
					}
				},
				error : function(error){
					console.log(error,'실패');
				}
			});
		}else{
			action_popup.alert("취소하셨습니다.");
		}
	});
}
/* ==================================도서 준비 완료================================  */
function setStateReady(){

	let data = gridOptions.api.getSelectedRows();
	if(data.length == 0){
		action_popup.alert("선택된 열이 없습니다.");
		return;
	}
	console.log(data);	  
	
	var opt = "";
	opt += '<option value="-1">선택하세요</option>';
	for(var i=0; i<data.length; i++){
		opt += `<option id='option' value='\${i}'>\${data[i].index} : \${data[i].book_title}</option>`
	}
	$('#isbnSelector').append(opt);
	var rmodal = document.querySelector("#readyModal");
	rmodal.style.display = "block";
	
}

function selectChange(target){
	$('#rd_id').val("");
	$('#rd_type').val("");
	$('#rd_title').val("");
	$('#rd_isbn').val("");
	
	let data = gridOptions.api.getSelectedRows();
	let selectData = data[target.value];
	$('#rd_id').val(selectData.mem_id);
	$('#rd_type').val(selectData.rent_code_kor);
	$('#rd_title').val(selectData.book_title);
	$('#rd_isbn').val(selectData.isbn);
}

function isbnSearch(){
	$('#searchResult').empty();
	$('#rd_bookNo').val("");
	let isbn = $("#rd_isbn").val();
	console.log(isbn);
	$.ajax({
		url : "${webPath}/admin/bookManage/rent/isbnSearch.do?isbn="+isbn,
		type : "GET",
		async : "true",
		data : {} ,
		success : function(data){
			console.log(data);
			var html="";
			if(data.length == 0){
				html += "<h4>대출가능한 도서가 없습니다.</h4>";
			}else{
				for(var i=0; i<data.length; i++){
					html += `<div class="row" style="margin : 5px;" onclick="getBookNo(\${data[i].book_no})">`;
					html += `<div class="col-4">`;
					html += `<a><img src="\${data[i].book_imgURL}" style="width:135px; height:190px;"/></a>`;
					html += `</div>`;
					html += `<div class="col-8" >`;
					html += `<h4 class="mb-0">`;
					html += `<a class="text-body"style="margin-bottom: 25px; margin-top: 10px;">\${data[i].book_title}</a>`;
					html += `</h4>`;
					html += `<span >저자 : <a >\${data[i].book_author}</a></span><br>`;
					html += `<span >출판사 : <a >\${data[i].book_publisher}</a></span><br>`;
					html += `<span >발행연도 : <a >\${data[i].book_publishDate}</a></span><br>`;
					html += `<span >ISBN : <a >\${data[i].book_isbn}</a></span><br>`;
					html += `<span >도서번호 : <a >\${data[i].book_no}</a></span><br>`;
					html += `</div>`;
					html += `</div>`;
				}
			}
			
		$('#searchResult').append(html);			
		},
		error : function(error){
			console.log(error,'실패');
		}
	});
}

function getBookNo(bookNo){
	$('#rd_bookNo').val(bookNo);
}

function setBookNo(){
	var index = $('#isbnSelector').val();
	var bookNo = $('#rd_bookNo').val();
	let data = gridOptions.api.getSelectedRows();
	let select = data[index];
	var rent_code = select.rent_code;
	select.book_no = Number(bookNo);
	select.rent_status = 4;
	console.log(select);
		var paramList = {
				"vo" : select
		}
		console.log(paramList);
		action_popup.confirm("도서번호를 지정하시겠습니까?",function(res){
			if(res){
				$.ajax({
					url : "${webPath}/admin/bookManage/rent/setBookNo.do",
					type : "POST",
					async : "true",
					data : JSON.stringify(paramList) ,
					dataType:"text",
					contentType : "application/json; charset=UTF-8",
					
					success : function(data){
						action_popup.alert("변경되었습니다.");
						$('#rd_id').val("");
						$('#rd_type').val("");
						$('#rd_title').val("");
						$('#rd_isbn').val("");
						$('#rd_bookNo').val("");
						$('#searchResult').empty();
						if(rent_code == 0){ // 현장예약
							reloadWhatList = 0;
						}else if(rent_code == 1){ // 배송예약
							reloadWhatList = 1;
						}else if(rent_code == 2){ // 드라이브스루
							reloadWhatList = 2;
						}else if(rent_code == 3){ // 사물함예약
							reloadWhatList = 3;
						}
					},
					error : function(error){
						console.log(error,'실패');
					}
				});
		}else{
			action_popup.alert("취소하셨습니다.");
		}
	});
	
}
/* ==================================도서 상태 취소====================================  */

function setStateReject(reject){
	let [selected, rent_code] = getSelectedRowData();
	for( var i = 0; i < selected.length; i++){
		selected[i].rent_code = rent_code;
		selected[i].rent_status = reject;
	}
	console.log(selected);
	var paramList = {
			"list" : selected
	}
	console.log(paramList);
	action_popup.confirm("연관된 주문이 있으면 일괄 변경됩니다.\n예약 상태를 변경하시겠습니까?", function(res){
		if(res){
			$.ajax({
				url : "${webPath}/admin/bookManage/rent/setStateReject.do",
				type : "POST",
				async : "true",
				data : JSON.stringify(paramList) ,
				dataType:"text",
				contentType : "application/json; charset=UTF-8",
				
				success : function(data){
					action_popup.alert("변경되었습니다.");
					if(rent_code == 0){ // 현장예약
						fieldListAjax();
					}else if(rent_code == 1){ // 배송예약
						deliveryAjax();
					}else if(rent_code == 2){ // 드라이브스루
						driveListAjax();
					}else if(rent_code == 3){ // 사물함예약
						lockerListAjax()
					}
				},
				error : function(error){
					console.log(error,'실패');
				}
			});
		}else{
			action_popup.alert("취소하셨습니다.");
		}
	});
}
/* ==================================도서 대출 완료====================================  */
 
 function setStateComplete(){
	let [selected, rent_code] = getSelectedRowData();
	for( var i = 0; i < selected.length; i++){
		if(selected[i].rent_status != 4){
			action_popup.alert("도서준비완료 상태가 아닙니다.");
			return false;
		}
		selected[i].rent_code = rent_code;
		selected[i].rent_status = 5;
	}
	console.log(selected);
	var paramList = {
			"list" : selected
	}
	console.log(paramList);
	action_popup.confirm("대출완료 처리 하시겠습니까?", function(res){
		if(res){
			$.ajax({
				url : "${webPath}/admin/bookManage/rent/setStateComplete.do",
				type : "POST",
				async : "true",
				data : JSON.stringify(paramList) ,
				dataType:"text",
				contentType : "application/json; charset=UTF-8",
				
				success : function(data){
					action_popup.alert("변경되었습니다.");
					if(rent_code == 0){ // 현장예약
						fieldListAjax();
					}else if(rent_code == 1){ // 배송예약
						deliveryAjax();
					}else if(rent_code == 2){ // 드라이브스루
						driveListAjax();
					}else if(rent_code == 3){ // 사물함예약
						lockerListAjax()
					}
				},
				error : function(error){
					console.log(error,'실패');
				}
			});
		}else{
			action_popup.alert("취소하셨습니다.");
		}
	});
}
</script>
<script>
var lockerBtn = document.getElementById("locker");
var fieldBtn = document.getElementById("field");
var driveBtn = document.getElementById("drive");
var deliveryBtn = document.getElementById("delivery");


function lockerListAjax(){
	$.ajax({
		url:"${webPath}/admin/bookManage/rent/lockerList.do",
		type:"GET",
		data:{},
		//dataType:'application/json; charset=utf-8',
		success:function(data){
			console.log(data);
			var fixData = setDataKOR(data);
			
			fieldBtn.className = 'btn btn-outline-primary';
			driveBtn.className = 'btn btn-outline-primary';
			lockerBtn.className= 'btn btn-primary';
			deliveryBtn.className = 'btn btn-outline-primary';
			
			gridOptions.api.setRowData(fixData);
			rentType = 3;
		},
		error:function(error){
			console.log(error);
		}
	})
}
function fieldListAjax(){
	$.ajax({
		url:"${webPath}/admin/bookManage/rent/fieldList.do",
		type:"GET",
		data:{},
		//dataType:'application/json; charset=utf-8',
		success:function(data){
			console.log(data);
			var fixData = setDataKOR(data);
			fieldBtn.className = 'btn btn-primary';
			driveBtn.className = 'btn btn-outline-primary';
			lockerBtn.className= 'btn btn-outline-primary';
			deliveryBtn.className = 'btn btn-outline-primary';

			gridOptions.api.setRowData(fixData);
			rentType = 0;
		},
		error:function(error){
			console.log(error);
		}
	})
}

function driveListAjax(){
	$.ajax({
		url:"${webPath}/admin/bookManage/rent/driveList.do",
		type:"GET",
		data:{},
		//dataType:'application/json; charset=utf-8',
		success:function(data){
			console.log(data);
			var fixData = setDataKOR(data);

			fieldBtn.className = 'btn btn-outline-primary';
			driveBtn.className = 'btn btn-primary';
			lockerBtn.className= 'btn btn-outline-primary';
			deliveryBtn.className = 'btn btn-outline-primary';
			
			gridOptions.api.setRowData(fixData);
			rentType = 2;
		},
		error:function(error){
			console.log(error);
		}
	})
}
function deliveryListAjax(){
	$.ajax({
		url:"${webPath}/admin/bookManage/rent/deliveryList.do",
		type:"GET",
		data:{},
		//dataType:'application/json; charset=utf-8',
		success:function(data){
			console.log(data);
			var fixData = setDataKOR(data);

			fieldBtn.className = 'btn btn-outline-primary';
			driveBtn.className = 'btn btn-outline-primary';
			lockerBtn.className= 'btn btn-outline-primary';
			deliveryBtn.className = 'btn btn-primary';
			
			gridOptions.api.setRowData(fixData);
			rentType = 1;
		},
		error:function(error){
			console.log(error);
		}
	})
}
fieldListAjax();
</script>    
