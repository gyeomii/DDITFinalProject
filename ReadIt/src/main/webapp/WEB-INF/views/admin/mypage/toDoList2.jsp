<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
    <title>ToDo - Vuexy - Bootstrap HTML admin template</title>
    <link rel="apple-touch-icon" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/editors/quill/katex.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/editors/quill/monokai-sublime.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/editors/quill/quill.snow.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/select/select2.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/pickers/flatpickr.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/dragula.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/toastr.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/pickers/pickadate/pickadate.css">
    
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/bordered-layout.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/semi-dark-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/horizontal-menu.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-quill-editor.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-flat-pickr.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-toastr.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-validation.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/app-todo.css">
    <!-- END: Page CSS-->
<link rel="apple-touch-icon"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600"
	rel="stylesheet">

<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/wizard/bs-stepper.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/spinner/jquery.bootstrap-touchspin.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/toastr.min.css">
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
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/app-ecommerce.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-pickadate.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-wizard.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-toastr.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-number-input.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/page-knowledge-base.css">
<!-- END: Page CSS-->
<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/pickers/pickadate/pickadate.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/pickers/flatpickr/flatpickr.min.css">
<!-- END: Vendor CSS-->
<!-- BEGIN: Page CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/horizontal-menu.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-flat-pickr.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-pickadate.css">
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->
<style type="text/css">
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

</style>
</head>
<body class="horizontal-layout horizontal-menu  footer-static " data-menu="horizontal-menu" data-col="" >
 <!-- 메인 화면-->
 <div class="content ">
    <div class="content-wrapper container-xxl p-0">
        <div class="content-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                    	<div class="row" style="margin-top: 20px;margin-left: 10px;">
	                    	<div class="col-6">
	                        	<button type="button" class="btn btn-primary" onclick="taskListAjax();">나의 업무</button>
	                            <button type="button" class="btn btn-success" onclick="importantListAjax();">중요 업무</button>
	                            <button type="button" class="btn btn-warning" onclick="completedListAjax();">완료 업무</button>
	                            <button type="button" class="btn btn-danger" onclick="deleteListAjax();">삭제 업무</button>
	                        </div> 
	                        <div class="col-4"></div>
                    	 <div class="col-2">
		                    	<button type="button" class="btn btn-secondary" style="width:90%" onclick="registTodo();">업무 등록</button>
	                        </div>
                    	</div>
                        <div id="myGrid" class="ag-theme-alpine" style="height:580px;padding-top:10px; padding:10px;"></div>
                        <div class=" align-self-end" style="width: 400px;"> 
	                       	<div style="margin: 10px;" class=" row">
                       			<input type="hidden" id="approve" value="2">
	                       		<div class="input-group col-4" style="width:30%; text-align: center;">
	    	                   		<button type="button" class="btn btn-success waves-effect waves-float waves-light "  onclick="setStateImp();">중요</button>
	                       		</div>
	                       		<div class="input-group col-4" style="width:30%;">
	    	                   		<button type="button" class="btn btn-primary waves-effect waves-float waves-light"  onclick="setStateCom();">완료</button>
	                       		</div>
	                       			<div class="input-group col-4" style="width:30%;">
	    	                   		<button type="button" class="btn btn-danger waves-effect waves-float waves-light"   onclick="setStateDel();">삭제</button>
	                       	</div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
</div>


<div id="readyModal" >
	<div id="readyContent">
		<div class="card">
			<div class="card-header">업무 등록</div>
			<div class="card-body">
				<div class="row">
						</div>
						<div class="pd">
						<div id="selectorBody"  class="pd">
						 <div class="mb-1">
                                            <div class="form-check form-switch">
                                                <label class="form-check-label" for="customSwitch3">중요</label>
                                                <input type="checkbox" class="form-check-input allDay-switch" id="importantSwitch" />
                                            </div>
                                            <br>
                                <div class="mb-1 position-relative">
                                	<textarea rows="" cols="" class="form-select" id="context" onchange="selectChange(this);"></textarea>
                                </div>
						
						<div class="mb-1 position-relative">
                                         <label class="form-label" for="fp-default">Default</label>
                                         <input type="text" id="fp-default" class="form-control" placeholder="YYYY-MM-DD" >
                                         
                                        </div>
						
						
						<div class="mb-1 position-relative">
                                            <label for="end-date" class="form-label">종료일</label>
                                            <input type="text" class="form-control" id="end-date" name="end-date" placeholder="End Date" />
                                        </div>
					</div>
				</div>
			<div class="card-footer d-flex  justify-content-end">
				<div class="col-4">
					<button type="button"  class="btn btn-outline-primary" style="width:100%"  onclick="closeModal();">닫기</button>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>


    <!-- BEGIN: Vendor JS-->
    	<script src="https://unpkg.com/ag-grid-community/dist/ag-grid-community.min.js"></script>
    
    
    <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/editors/quill/katex.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/editors/quill/highlight.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/editors/quill/quill.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/dragula.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/toastr.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-todo.js"></script>
        <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-calendar-events.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-calendar.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/calendar/fullcalendar.min.js"></script>
    <!-- END: Page JS-->

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
    // ag-gird 가져오기
const columnDefs = [
	  {headerName:"마스터번호",field: "todo_no", width:50,  filter:false,headerCheckboxSelection: true, checkboxSelection: true},
	  {headerName:"No.",field: "index", width:70, cellClass: 'alignCenter', filter:false},
	  {headerName:"구분번호",field: "todo_state", width:10, hide:true},
	  {headerName:"구분",field: "rent_code_kor", width:120, cellClass: 'alignCenter'},
	  {headerName:"등록일",field: "todo_regdate", width:150, cellClass: 'alignCenter'},
	  {headerName:"업무내용",field: "todo_name", width:400, cellClass: 'alignCenter'},
	  {headerName:"시작일",field: "todo_start", width:150, cellClass: 'alignCenter'},
	  {headerName:"종료일",field: "todo_end", width:150, cellClass: 'alignCenter'},

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
		  alert("선택된 열이 없습니다.");
		  return;
	  }
	  for(var i=0; i<selectedData.length; i++){
		  if(selectedData[i].rent_status == 1){
			  alert("예약취소된 건은 변경하실 수 없습니다.");
			  return;
		  }
	  }
	  for(var i = 0; i < selectedData.length; i++){
		  var row={};
		  rent_code = selectedData[i].rent_code;
		  row.rm_no = selectedData[i].rm_no;
		  row.mem_id = selectedData[i].mem_id;
		  row.rent_status = selectedData[i].rent_status;
		  data.push(row);
	  }
	  console.log(data);
	  console.log(rent_code);
	  return [data, rent_code];
}

function milliToDate(millisec){
	var date = new Date(millisec);
	var year = date.getFullYear();
	var month = ("0" + (date.getMonth() + 1)).slice(-2);
	var day = ("0" + date.getDate()).slice(-2);
	    
	return year+"-"+month+"-"+day;
}

function setData(data){
	for(var i = 0; i < data.length; i++){
		data[i].index = i+1;
		if(data[i].todo_state == 1){
			data[i].todo_state = "중요";
		}
		
		reg_date = milliToDate(data[i].todo_regdate);
		data[i].todo_regdate = reg_date;
		
		sta_date = milliToDate(data[i].todo_start);
		data[i].todo_start = sta_date;
		
		end_date = milliToDate(data[i].todo_end);
		data[i].todo_end = end_date;
	}
	return data;
}


	function taskListAjax(){
		$.ajax({
			url:"${webPath}/admin/mypage/toDoTaskList.do",
			type:"GET",
			data:{},
			//dataType:'application/json; charset=utf-8',
			success:function(data){
				console.log(data);
				console.log("성공")
				var fixData = setData(data);
				console.log(fixData)
				gridOptions.api.setRowData(data);
			},
			error:function(error){
				console.log("에러")
				console.log(error);
			}
		})
	}
	
	 function importantListAjax(){
			$.ajax({
				url:"${webPath}/admin/mypage/toDoImportantList.do",
				type:"GET",
				data:{},
				//dataType:'application/json; charset=utf-8',
				success:function(data){
					console.log(data);
					console.log("성공")
					var fixData = setData(data);
					console.log(fixData)
					gridOptions.api.setRowData(data);
				},
				error:function(error){
					console.log("에러")
					console.log(error);
				}
			})
		}
	 
	 function completedListAjax(){
			$.ajax({
				url:"${webPath}/admin/mypage/toDoCompletedList.do",
				type:"GET",
				data:{},
				//dataType:'application/json; charset=utf-8',
				success:function(data){
					console.log(data);
					console.log("성공")
					var fixData = setData(data);
					console.log(fixData)
					gridOptions.api.setRowData(data);
				},
				error:function(error){
					console.log("에러")
					console.log(error);
				}
			})
		}
	 
	 function deleteListAjax(){
			$.ajax({
				url:"${webPath}/admin/mypage/toDoDeletedList.do",
				type:"GET",
				data:{},
				//dataType:'application/json; charset=utf-8',
				success:function(data){
					console.log(data);
					console.log("성공")
					var fixData = setData(data);
					console.log(fixData)
					gridOptions.api.setRowData(data);
				},
				error:function(error){
					console.log("에러")
					console.log(error);
				}
			})
		}
	 
	 taskListAjax();
</script>

<script>
function setStateImp(){
	
	let data = gridOptions.api.getSelectedRows();
	if(data.length == 0){
		alert("선택된 열이 없습니다.");
		return;
	}
	console.log(data);	  
	
	var rmodal = document.querySelector("#readyModal");
	rmodal.style.display = "block";
}

function registTodo(){
	
	var rmodal = document.querySelector("#readyModal");
	rmodal.style.display = "block";
	
	var date = $('#start-date');
	
	date.attr("placeholder",  new Date());
	
}
function closeModal(){
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


</script>

</body>
<!-- END: Body-->


</html>	