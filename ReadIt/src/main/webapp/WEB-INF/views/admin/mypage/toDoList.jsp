<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="apple-touch-icon"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600"
	rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">

<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-sweet-alerts.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/sweetalert2.min.css">
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
<style type="text/css">
#readyModal {
	position: fixed;
	width: 100%;
	height: 100%; /* fixed 일때는 요따로 써도 됨 */
	left: 0;
	top: 0;
	background-color: rgba(248, 248, 248, 0.8);
	z-index: 200;
	display: none; /* 보통 초기에 안 보이겡 */
}

#readyContent {
	margin: 10% auto;
	width: 70%; /* 부모 기준 */
	height: 50%;
	left: 50%;
	top: 30%;
}

#swal2-title {
	margin: 0px;
	font-size: 22px;
	margin-bottom: 10px;
}

#swal2-text {
	background-color: #FEFAE3;
	padding: 17px;
	display: block;
	margin: 22px;
	text-align: center;
	color: #61534e;
}
	
	
</style>
</head>
<body class="horizontal-layout horizontal-menu  footer-static "
	data-menu="horizontal-menu" data-col="">
	<!-- 메인 화면-->
	<div class="content ">
		<div class="content-wrapper container-xxl p-0">
			<div class="content-body">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="row" style="margin-top: 20px; margin-left: 10px;">
								<div class="col-6">
									<button type="button" class="btn btn-primary"
										onclick="taskListAjax();">나의 업무</button>
									<button type="button" class="btn btn-success"
										onclick="importantListAjax();">중요 업무</button>
									<button type="button" class="btn btn-warning"
										onclick="completedListAjax();">완료 업무</button>
									<button type="button" class="btn btn-danger"
										onclick="deleteListAjax();">삭제 업무</button>
								</div>
								<div class="col-4"></div>
								<div class="col-2">
									<button type="button" class="btn btn-secondary"
										style="width: 90%" onclick="openModalTodo();">업무 등록</button>
								</div>
							</div>
							<div id="myGrid" class="ag-theme-alpine"
								style="height: 580px; padding-top: 10px; padding: 10px;"></div>
								
							<div class=" align-self-end" style="width: 400px;">
								<div style="margin: 10px;" class=" row">
									<input type="hidden" id="approve" value="2">
									<div class="input-group col-3" style="width: 30%; text-align: center; margin-left: -15px;">
										<button type="button"
											class="btn btn-outline-info waves-effect waves-float waves-light "
											onclick="setStateDefault();">일반</button>
									</div>
									<div class="input-group col-3" style="width: 30%; text-align: center; margin-left: -40px;">
										<button type="button"
											class="btn btn-outline-success waves-effect waves-float waves-light "
											onclick="setStateImp();">중요</button>
									</div>
									<div class="input-group col-3" style="width: 30%; margin-left: -40px;">
										<button type="button"
											class="btn btn-outline-primary waves-effect waves-float waves-light"
											onclick="setStateCom();">완료</button>
									</div>
									<div class="input-group col-3" style="width: 30%; margin-left: -40px;">
										<button type="button"
											class="btn btn-outline-danger waves-effect waves-float waves-light"
											onclick="setStateDel();">삭제</button>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<section id="flatpickr">
		<div id="readyModal">
			<div id="readyContent">
				<div class="card">
					<div class="card-header" ><h1 style="text-align: center;"> 업무 등록</h1></div>
					<div class="card-body">
						<div class="row"></div>
						<div class="pd">
							<div id="selectorBody" class="pd">
								<div class="mb-1">
									<div class="form-check form-switch">
										<label class="form-check-label" for="customSwitch3">중요</label>
										<input type="checkbox" class="form-check-input allDay-switch"
											id="importantSwitch" />
									</div>
									<br>
									<div class="mb-1 position-relative">
										<label class=" " for="">업무 내용 </label>
										<textarea class="form-select" id="contextTodo"></textarea>
									</div>
									<div class="row">
										<div class="col-6">
											<label class="form-label" for="fp-default">시작일</label> <input
												type="text" id="todo_start" name="todo_start"
												class="form-control flatpickr-basic"
												placeholder="YYYY-MM-DD" />


										</div>
										<div class="col-6">
											<label class="form-label" for="fp-default">종료일</label> <input
												type="text" id="todo_end" name="todo_end"
												class="form-control flatpickr-basic"
												placeholder="YYYY-MM-DD" />
										</div>

									</div>


								</div>
							</div>
							<div class="card-footer d-flex ">
								<div class="col-6"style="text-align: center;">
									<button type="button" class="btn btn-outline-primary"
										style="width: 90%" onclick="registTodo();">등록</button>
								</div>
								<div class="col-6" style="text-align: center;">
									<button type="button" class="btn btn-outline-danger"
										style="width: 90%" onclick="closeModal();">닫기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- BEGIN: Vendor JS-->
	<script
		src="https://unpkg.com/ag-grid-community/dist/ag-grid-community.min.js"></script>


	<script
		src="<%=request.getContextPath()%>/resources/jquery/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
	<!-- END: Content-->
	<!-- BEGIN: Vendor JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
	<!-- BEGIN Vendor JS-->
	<!-- BEGIN: Page Vendor JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/wizard/bs-stepper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/spinner/jquery.bootstrap-touchspin.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/toastr.min.js"></script>
	<!-- END: Page Vendor JS-->
	<!-- BEGIN: Theme JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
	<!-- END: Theme JS-->
	<!-- BEGIN: Page Vendor JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/picker.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/legacy.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
	<!-- END: Page Vendor JS-->
	<!-- BEGIN: Page JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/forms/pickers/form-pickers.js"></script>
	<!-- END: Page JS-->
	<!-- BEGIN: Page JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-ecommerce-checkout.js"></script>
	<!-- handlebars Template -->
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
	

	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/extensions/ext-component-sweet-alerts.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/sweetalert2.all.min.js"></script>

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
    
function MyComp() {
    return this;
}

MyComp.prototype.init = function(params) {
	console.log("params : ", params.data.todo_state)
     this.eGui = document.createElement('div');
	if (params.data.todo_state == 1) {
		this.eGui.innerHTML = `
        	<img src="${webPath}/resources/images/start2.png" height="30px" />
        `;  
	}
	if (params.data.todo_state == 2) {
		this.eGui.innerHTML = `
        	<img src="${webPath}/resources/images/check.png" height="30px" />
        `;  
	}
	if (params.data.todo_state == 3) {
		this.eGui.innerHTML = `
        	<img src="${webPath}/resources/images/delete.png" height="30px" />
        `;  
	}if (params.data.todo_state == 0){
		this.eGui.innerHTML = `
        	<img src="${webPath}/resources/images/notStar.png" height="30px" />
        `;  
	}
              
}

MyComp.prototype.getGui=function(){
    console.log("check1");
    return this.eGui;
}

MyComp.prototype.refresh=function(){
    console.log("check2");
    return true;
    
}

MyComp.prototype.destroy=function(){
    console.log("check3");
}

    
const columnDefs = [
	  {headerName:"마스터번호",field: "todo_no", width:50,  filter:false,headerCheckboxSelection: true, checkboxSelection: true},
	  {headerName:"No.",field: "index", width:70, cellClass: 'alignCenter', filter:false},
	  {headerName:"구분번호",field: "todo_state", width:10, hide:true},
	  {headerName:"구분",field: "todo_state_img", width:80, cellClass: 'alignCenter', cellRenderer : MyComp},
	  {headerName:"등록일",field: "todo_regdate", width:200, cellClass: 'alignCenter'},
	  {headerName:"업무내용",field: "todo_name", width:500, cellClass: 'alignCenter'},
	  {headerName:"시작일",field: "todo_start", width:200, cellClass: 'alignCenter'},
	  {headerName:"종료일",field: "todo_end", width:200, cellClass: 'alignCenter'},

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
		  Swal.fire({
              icon: 'info',
              text: '선택된 열이 없습니다. ',
           })
		  return;
	  }
	  for(var i=0; i<selectedData.length; i++){
		  if(selectedData[i].rent_status == 1){
			  Swal.fire({
	                 icon: 'info',
	                 text: '예약취소된 건은 변경하실 수 없습니다 '
	              })
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
			console.log(data[i]);
		if(data[i].todo_state == 1){
// 			data[i].todo_state_img =  '<img src="${webPath}/resources/images/1.jpg" height="30px" />'
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

	var todo_state_img;
	function taskListAjax(){
		$.ajax({
			url:"${webPath}/admin/mypage/toDoTaskList.do",
			type:"GET",
			data:{},
			//dataType:'application/json; charset=utf-8',
			success:function(data){
				console.log(data[0].todo_state)
				
				var fixData = setData(data);
				gridOptions.api.setRowData(fixData);
			},
			error:function(error){
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
					var fixData = setData(data);
					console.log(fixData)
					gridOptions.api.setRowData(fixData);
				},
				error:function(error){
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
					var fixData = setData(data);
					console.log(fixData)
					gridOptions.api.setRowData(fixData);
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
					var fixData = setData(data);
					console.log(fixData)
					gridOptions.api.setRowData(fixData);
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
function setStateDefault(){
	
	let data = gridOptions.api.getSelectedRows();
	
	if(data.length == 0){
		Swal.fire({
			 title:'선택된 열이 없습니다.',         
			  icon:'warning',                        
			});
		return;
	}
	
	

	Swal.fire({
		  text: "일반 업무로 바꾸시겠습니까?",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonText: '네',
		  cancelButtonText: '아니요',
		  customClass: {
			  confirmButton: 'btn btn-secondary',
			  cancelButton: 'btn btn-outline-danger ms-1'
		  },
		  buttonsStyling: false
	  }).then(function (result) {
		  if (result.value) {
			  $.ajax({
				    type : 'post',           // 타입 (get, post, put 등등)
				    url : '${webPath}/admin/mypage/changeDefaultTodoState.do',			// 요청할 서버url
				    data : JSON.stringify({ 'todoList' : data}),
				    async : true,            // 비동기화 여부 (default : true)
				    contentType : "application/json; charset=UTF-8",
				    success : function(result) { // 결과 성공 콜백함수
				        console.log(result);
				        Swal.fire({
							  icon: 'success',
							  title: '일반 업무로 변경되었습니다',
							  customClass: {
								  confirmButton: 'btn btn-success'
							  }
						  }).then(function (result) {
							  if (result.value) {
									location.reload(true);
								  }
							  }); 
				    },
				    error : function(request, status, error) { // 결과 에러 콜백함수
				        console.log(error)
				        
				    }
				})
		  }
	  }); 
}
function setStateImp(){
	
	let data = gridOptions.api.getSelectedRows();
	
	if(data.length == 0){
		Swal.fire({
			 title:'선택된 열이 없습니다.',         
			  icon:'warning',                        
			});
		return;
	}
	console.log(data);	 
	for(i = 0; i < data.length; i++){
		if(data[i].todo_state == 1){
			Swal.fire({
				 title:'체크된  <중요> 항목을 제거해주세요.',         
				  icon:'info',                        
				});
			return false;
		} 
	}
	
	

	Swal.fire({
		  text: "중요 업무로 바꾸시겠습니까?",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonText: '네',
		  cancelButtonText: '아니요',
		  customClass: {
			  confirmButton: 'btn btn-secondary',
			  cancelButton: 'btn btn-outline-danger ms-1'
		  },
		  buttonsStyling: false
	  }).then(function (result) {
		  if (result.value) {
			  $.ajax({
				    type : 'post',           // 타입 (get, post, put 등등)
				    url : '${webPath}/admin/mypage/changeImportantTodoState.do',			// 요청할 서버url
				    data : JSON.stringify({ 'todoList' : data}),
				    async : true,            // 비동기화 여부 (default : true)
				    contentType : "application/json; charset=UTF-8",
				    success : function(result) { // 결과 성공 콜백함수
				        console.log(result);
				        Swal.fire({
							  icon: 'success',
							  title: '중요 업무로 변경되었습니다',
							  customClass: {
								  confirmButton: 'btn btn-success'
							  }
						  }).then(function (result) {
							  if (result.value) {
									location.reload(true);
								  }
							  }); 
				    },
				    error : function(request, status, error) { // 결과 에러 콜백함수
				        console.log(error)
				        
				    }
				})
		  }
	  }); 
}

function setStateCom(){
	
	let data = gridOptions.api.getSelectedRows();
	
	if(data.length == 0){
		Swal.fire({
			 title:'선택된 열이 없습니다.',         
			  icon:'warning',                        
			});
		return;
	}
	console.log(data);	 
	for(i = 0; i < data.length; i++){
		if(data[i].todo_state == 2){
			Swal.fire({
				 html:'이미 완료된 항목은 다시 처리할 수 없습니다. <br> (일반 또는 중요 항목으로 변경 가능합니다. )',         
				  icon:'info',                        
				});
			return false;
		} 
	}
	for(i = 0; i < data.length; i++){
		if(data[i].todo_state == 3){
			Swal.fire({
				html:'이미 삭제된 업무는 완료 처리할 수 없습니다. <br> (일반 또는 중요 항목으로 변경 가능합니다. )',         
				  icon:'info',                        
				});
			return false;
		} 
	}
	
	

	Swal.fire({
		  text: "업무를 완료처리 하시겠습니까?",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonText: '네',
		  cancelButtonText: '아니요',
		  customClass: {
			  confirmButton: 'btn btn-secondary',
			  cancelButton: 'btn btn-outline-danger ms-1'
		  },
		  buttonsStyling: false
	  }).then(function (result) {
		  if (result.value) {
			  $.ajax({
				    type : 'post',           // 타입 (get, post, put 등등)
				    url : '${webPath}/admin/mypage/changeCompletedTodoState.do',			// 요청할 서버url
				    data : JSON.stringify({ 'todoList' : data}),
				    async : true,            // 비동기화 여부 (default : true)
				    contentType : "application/json; charset=UTF-8",
				    success : function(result) { // 결과 성공 콜백함수
				        console.log(result);
				        Swal.fire({
							  icon: 'success',
							  title: '완료 업무로 변경되었습니다',
							  customClass: {
								  confirmButton: 'btn btn-success'
							  }
						  }).then(function (result) {
							  if (result.value) {
									location.reload(true);
								  }
							  }); 
				    },
				    error : function(request, status, error) { // 결과 에러 콜백함수
				        console.log(error)
				        
				    }
				})
		  }
	  }); 
}

function setStateDel(){
	
	let data = gridOptions.api.getSelectedRows();
	
	if(data.length == 0){
		Swal.fire({
			 title:'선택된 열이 없습니다.',         
			  icon:'warning',                        
			});
		return;
	}
	console.log(data);	 
	for(i = 0; i < data.length; i++){
		if(data[i].todo_state == 3){
			Swal.fire({
				text:'이미 삭제된 업무는 다시 삭제할 수 없습니다. ',         
				  icon:'info',                        
				});
			return false;
		} 
	}
	for(i = 0; i < data.length; i++){
		if(data[i].todo_state == 2){
			Swal.fire({
				html:'이미 완료된 항목은 삭제할 수 없습니다. <br> (일반 또는 중요 항목으로 복구 가능합니다.)',         
				  icon:'info',                        
				});
			return false;
		} 
	}
	
	
	

	Swal.fire({
		  text: "업무를 삭제 하시겠습니까?",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonText: '네',
		  cancelButtonText: '아니요',
		  customClass: {
			  confirmButton: 'btn btn-secondary',
			  cancelButton: 'btn btn-outline-danger ms-1'
		  },
		  buttonsStyling: false
	  }).then(function (result) {
		  if (result.value) {
			  $.ajax({
				    type : 'post',           // 타입 (get, post, put 등등)
				    url : '${webPath}/admin/mypage/changeDeleteTodoState.do',			// 요청할 서버url
				    data : JSON.stringify({ 'todoList' : data}),
				    async : true,            // 비동기화 여부 (default : true)
				    contentType : "application/json; charset=UTF-8",
				    success : function(result) { // 결과 성공 콜백함수
				        console.log(result);
				        Swal.fire({
							  icon: 'success',
							  title: '업무를 삭제하였습니다.',
							  customClass: {
								  confirmButton: 'btn btn-success'
							  }
						  }).then(function (result) {
							  if (result.value) {
									location.reload(true);
								  }
							  }); 
				    },
				    error : function(request, status, error) { // 결과 에러 콜백함수
				        console.log(error)
				        
				    }
				})
		  }
	  }); 
}




function openModalTodo(){
	
	var rmodal = document.querySelector("#readyModal");
	rmodal.style.display = "block";
	
}
function registTodo(){
	
	var todo_name = $('#contextTodo').val();
	var todo_start = $('#todo_start').val();
	var todo_end = $('#todo_end').val();
	var important = $('#importantSwitch').is(":checked") == true;
	var todo_state;
	console.log(todo_name);
	console.log(todo_start);
	console.log(todo_end);
	console.log(important);
	
	if(todo_name == null || todo_name == ''){
		Swal.fire({
						 title:'업무 내용을 입력해주세요.',         
						  icon:'warning',                        
						});
		return false;
	}
	if(todo_start == null || todo_start == ''){
		Swal.fire({
						 title:'업무 시작일을 입력해주세요.',         
						  icon:'warning',                        
						});
		return false;
	}
	if(todo_end == null || todo_end == ''){
		Swal.fire({
						 title:'업무 종료일을 입력해주세요.',         
						  icon:'warning',                        
						});
		return false;
	}
	if(important == true){
		todo_state = 1;
	} else {
		todo_state = 0;
	}
	var data = {
			"todo_name" : todo_name,
			"todo_start" : todo_start,
			"todo_end" : todo_end,
			"todo_state" : todo_state,
	}
	console.log(data);
	
	$.ajax({
		url : "${webPath}/admin/mypage/registTodo.do",
		type:"post",
		data : JSON.stringify(data),
		contentType : "application/json; charset=UTF-8",
		success : function(data){
			swal.fire({
				 title: '업무 등록 완료',
				 html: '<'+data.todolist.todo_name+'> <br> 시작일 : ' +  milliToDate(data.todolist.todo_start) +"<br> 종료일 : " +milliToDate( data.todolist.todo_end),
				 icon:'success', 
				 customClass: {
					  confirmButton: 'btn btn-success',
				  }
				}).then(function (result) {
					  if (result.value) {
						location.reload(true);
					  }
				  }); 
		},
		error : function(error){
			 Swal.fire({
                 icon: 'warning',
                 text: '등록되지 않았습니다. '
              })
		}
		
	});
	
	
	
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


var dateSelector = document.querySelector('#todo_start');
dateSelector.flatpickr({
	//최소 날짜
    minDate: "today" // today도 설정 가능 ( 오늘부터 시작이란 의미 )
});

var dateSelector = document.querySelector('#todo_end');
dateSelector.flatpickr({
	//최소 날짜
    minDate: "today" // today도 설정 가능 ( 오늘부터 시작이란 의미 )
});
</script>

</body>
</html>