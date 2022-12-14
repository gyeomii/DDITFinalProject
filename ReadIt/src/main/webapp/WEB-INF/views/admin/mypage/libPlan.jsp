<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<!-- BEGIN: Head-->

<head>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>도서관 일정관리</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
    
	<link href="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
	
	
   	
	 <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/tables/datatable/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/tables/datatable/responsive.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/tables/datatable/buttons.bootstrap5.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/bordered-layout.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/semi-dark-layout.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/select/select2.min.css">
    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-validation.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/modal-create-app.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/pickers/flatpickr/flatpickr.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/select/select2.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-sweet-alerts.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/sweetalert2.min.css">
	
   
</head>
<!-- END: Head-->
<!-- BEGIN: Body-->
<body style="margin-left: 70px;">
	<div class="card" style="width: 1440px;">
		<div style="margin-top: 10px; margin-left: 20px;">
			<div>
				<input type="button" data-bs-toggle="modal" data-bs-target="#insertPlan" id="btn1"  class="btn btn-primary" value="일정등록">
			</div>
		</div>
		<div class="card-body">
			<div id="calendar" class="col-12 col-lg-12">
			<!-- fullcalendar 들어오는 곳 -->
			</div>
		</div>
	</div>
	
	
	<!-- regist modal -->
	<div class="modal fade" id="insertPlan" tabindex="-1" style="display: none;" aria-hidden="true">
                    <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
                        <div class="modal-content">
                            <div class="modal-header bg-transparent">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body pb-5 px-sm-5 pt-50">
                                <div class="text-center mb-2">
                                    <h2 class="mb-1">새로운 일정 등록</h2>
                                    <p>해당하는 항목을 작성 후 등록해주세요.</p>
                                </div>
<!--                                 <form id="editUserForm" class="row gy-1 pt-75" onsubmit="return false" novalidate="novalidate"> -->
									<div class="row gy-1 pt-75">
                                    <div class="col-12 col-md-12">
                                        <label class="form-label" for="modalEditUserCountry">일정 제목</label>
                                        <div class="position-relative">
                                        	<input type="hidden" id="loginUserName" name="mem_id" value="${loginUser.mem_id }">
                                        	<input type="text" class="form-control" id="plantitle" name="lp_name" value="" placeholder="일정제목을 입력해주세요">
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-6 mb-1">
	                                    <label class="form-label" for="fp-date-time">시작일</label>
	                                    <input type="text" id="startDate" name="lp_start" class="form-control flatpickr-date-time flatpickr-input" placeholder="YYYY-MM-DD HH:MM" readonly="readonly">
                               		</div>
                                    <div class="col-md-6 mb-1">
	                                    <label class="form-label" for="fp-date-time">종료일</label>
	                                    <input type="text" id="endDate" name="lp_end" class="form-control flatpickr-date-time flatpickr-input" placeholder="YYYY-MM-DD HH:MM" readonly="readonly">
                               		</div>
                               		<div class="col-12 col-md-6">
	                               		<select class="form-select col-12 col-md-6" id="lp_isclose" name="lp_isclosed">
	                                        <option value="">휴관/개관 여부를 선택해주세요.</option>
	                                        <option value="0">개관</option>
	                                        <option value="1">휴관</option>
	                                    </select>
                               		</div>
                               		<div class="col-12 col-md-6">
	                               		<select class="form-select col-12 col-md-6" id="lp_isshow" name="lp_isshow">
	                                        <option value="">사용자 공개 여부를 선택해주세요.</option>
	                                        <option value="1">공개</option>
	                                        <option value="0">비공개</option>
	                                    </select>
                                    </div>
                                    <div class="col-12 text-center mt-2 pt-50">
                                        <button type="button" class="btn btn-primary me-1 waves-effect waves-float waves-light" onclick="insertPlan();">등록</button>
                                        <button type="reset" class="btn btn-outline-secondary waves-effect" data-bs-dismiss="modal" aria-label="Close">
                                            취소
                                        </button>
                                    </div>
<!--                                 </form> -->
									</div>
                            </div>
                        </div>
                    </div>
                </div>
<!-- end regist modal -->

<!-- modify modal -->
	<div class="modal fade" id="modifyPlan" tabindex="-1" style="display: none;" aria-hidden="true">
                    <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
                        <div class="modal-content">
                            <div class="modal-header bg-transparent">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="window.location.reload();"></button>
                            </div>
                            <div class="modal-body pb-5 px-sm-5 pt-50">
                                <div class="text-center mb-2">
                                    <h2 class="mb-1">일정 수정</h2>
                                    <p>변경할 항목을 선택 후 수정해주세요.<br>휴관여부와 사용자 공개여부는 재설정바랍니다.</p>
                                </div>
<!--                                 <form id="editUserForm" class="row gy-1 pt-75" onsubmit="return false" novalidate="novalidate"> -->
									<div class="row gy-1 pt-75">
                                    <div class="col-12 col-md-12">
                                        <label class="form-label" for="modalEditUserCountry">일정 제목</label>
                                        <div class="position-relative">
<%--                                         	<input type="hidden" id="loginUserName" name="mem_id" value="${loginUser.mem_id }"> --%>
                                        	<input type="text" class="form-control" id="modifyTitle" name="lp_name" value="" placeholder="일정제목을 입력해주세요">
                                        	<input type="hidden" id="lp_noHidden" name="lp_no" value="">
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-6 mb-1">
	                                    <label class="form-label" for="fp-date-time">시작일</label>
	                                    <input type="text" id="modifyStartDate" name="lp_start" class="form-control flatpickr-date-time flatpickr-input" placeholder="YYYY-MM-DD HH:MM" readonly="readonly">
                               		</div>
                                    <div class="col-md-6 mb-1">
	                                    <label class="form-label" for="fp-date-time">종료일</label>
	                                    <input type="text" id="modifyEndDate" name="lp_end" class="form-control flatpickr-date-time flatpickr-input" placeholder="YYYY-MM-DD HH:MM" readonly="readonly">
                               		</div>
                               		<div class="col-12 col-md-6">
<!-- 	                               		<select class="form-select col-12 col-md-6" id="lp_iscloseM" name="lp_isclosed"> -->
	                               		<select class="form-select col-12 col-md-6" id="lp_iscloseM" >
	                                        <option value="">휴관/개관 여부를 선택해주세요.</option>
	                                        <option value="0">개관</option>
	                                        <option value="1">휴관</option>
	                                    </select>
                               		</div>
                               		<div class="col-12 col-md-6">
<!-- 	                               		<select class="form-select col-12 col-md-6" id="lp_isshowM" name="lp_isshow"> -->
	                               		<select class="form-select col-12 col-md-6" id="lp_isshowM" >
	                                        <option value="">사용자 공개 여부를 선택해주세요.</option>
	                                        <option value="1">공개</option>
	                                        <option value="0">비공개</option>
	                                    </select>
                                    </div>
                                    <div class="col-12 text-center mt-2 pt-50">
                                        <button type="button" class="btn btn-primary me-1 waves-effect waves-float waves-light" id="goUpdate" onclick="updatePlan();">등록</button>
                                        <button type="reset" class="btn btn-outline-secondary waves-effect" onclick="window.location.reload();" data-bs-dismiss="modal" aria-label="Close">
                                            취소
                                        </button>
                                    </div>
<!--                                 </form> -->
									</div>
                            </div>
                        </div>
                    </div>
                </div>
<!-- end modify modal -->



	<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js"></script>
   	<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/locales-all.min.js"></script>
   	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
   	
 	<!-- BEGIN: Vendor JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/responsive.bootstrap5.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/buttons.bootstrap5.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/datatables.checkboxes.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/extensions/ext-component-sweet-alerts.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/sweetalert2.all.min.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-access-roles.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/modal-edit-user.js"></script>

	
	<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/forms/pickers/form-pickers.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/select/select2.full.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/forms/form-select2.js"></script>
	
	<script src="<%=request.getContextPath()%>/resources/jquery/jquery.min.js"></script>
<!-- <h1>테스트 텍스트</h1> -->
<%@ include file="../../common/index_js.jsp" %>  
<script type="text/javascript">
var dataList;

console.log(dataList);
</script>

	<!-- fullCalendar 관련 script -->
<script>
var calendar = null;
	document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
       	calendar = new FullCalendar.Calendar(calendarEl, {
			events: [
				$.ajax({
					url: '<%=request.getContextPath()%>/admin/mypage/libPlanList.do',
					type: 'GET',
					success: function(res){
						var list = res;
						console.log(list);
						
						var calendarEl = document.getElementById('calendar');
						
						var events = list.map(function(dataList){
							return {
								title : dataList.lp_name,
								start : dataList.lp_start,
								end   : dataList.lp_end,
								lp_no : dataList.lp_no
							}
						});
						console.log(events);
						
						calendar = new FullCalendar.Calendar(calendarEl, {
							events : events,
							eventTimeFormat: { // like '14:30:00'
							    hour: '2-digit',
							    minute: '2-digit',
							    hour12: true
							  },
							headerToolbar: {
						          left: 'prev,next today',
						          center: 'title',
						          right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
						        }, // 월별로 보여줄지, 주별로 보여줄 지 선택하는  버튼 
				        	initialView: 'dayGridMonth',
				         	selectable: true,
				        	editable: false, // 수정 가능?
						   	dayMaxEvents: true,
							locale:'ko',
							height: 700,
							
							droppable: true, // this allows things to be dropped onto the calendar
							navLinks: true,
							
							eventClick: function(info){
								Swal.fire({
								 	title: '일정 수정/삭제',
								 	text: '일정을 수정 또는 삭제할지 선택해주세요',
									showDenyButton: true,
									showCancelButton: true,
									confirmButtonText: '수정',
									denyButtonText: '삭제',
								}).then((result) => {
									if(result.isDenied){
										var lp_no = info.event.extendedProps;
										console.log(lp_no);
										
										Swal.fire({
											title: '삭제하시겠습니까?',
											icon: 'warning',
											showCancelButton: true,
											confirmButtonColor: '#3085d6',
											cancelButtonColor: '#d33',
											confirmButtonText: '확인',
											cancelButtonText: '취소',
											reverseButtons: false, // 버튼 순서 거꾸로	
										}).then((result) => {
											if(result.isConfirmed){
												$.ajax({
													type:"post",
													url : '<%=request.getContextPath()%>/admin/mypage/getlibPlanList/deletePlan.do',
													data: lp_no,
													success: function(data){
														info.event.remove();
													},
													error: function(error){
														 Swal.fire({
											                 icon: 'info ',
											                 title: '수정되지않았습니다.  ',
											                 text: '다시 시도해주세요. '
											              })
													}
												})
											}
										})
										
									} else if(result.isConfirmed) {
										var lp_no = info.event.extendedProps;
										console.log(lp_no);
										var startDate = info.event.startStr;
										var endDate = info.event.endStr;
										
										console.log('startDate'+startDate);
// 										console.log(endDate);
										
// 										console.log(info.event.start)
// 										var startT = info.event.start
// 										var year = startT.getFullYear()
// 										console.log(year)
// 										태훈선생
										
										$('input[id=modifyTitle]').val(info.event.title);
										
										if(endDate == ""){
											startDate = startDate.split('T');
											var time = startDate[1].split(':');
											
											$('input[id=modifyStartDate]').val(startDate[0] + " " + time[0] + ":" + time[1]);
											$('input[id=modifyEndDate]').val("");
											
										}else if(endDate != ""){
											startDate = startDate.split('T');
											var time = startDate[1].split(':');
// 											console.log(startDate);
// 											console.log(time);
											
											endDate = endDate.split('T');
											var endTime = endDate[1].split(':');
// 											console.log(endDate);
// 											console.log(endTime);
											$('input[id=modifyStartDate]').val(startDate[0] + " " + time[0] + ":" + time[1]);
											$('input[id=modifyEndDate]').val(endDate[0] + " " + endTime[0] + ":" + endTime[1]);
											
										}
										$('#modifyPlan').modal('show');
										
										$('#goUpdate').on('click', function (){
// 											alert("진입?");
											var lp_name = $("input[id=modifyTitle][name=lp_name]").val();
											var lp_start =  $("input[id=modifyStartDate][name=lp_start]").val();
											var lp_end =  $("input[id=modifyEndDate][name=lp_end]").val();
											var lp_isclosed =  $("select[id=lp_iscloseM] option:selected").val();
											var lp_isshow =  $("select[id=lp_isshowM] option:selected").val();
											var mem_id =  $("input[type=hidden][name=mem_id]").val();

											var result = $.map(lp_no , function(value, index) {
												return value;
											});
// 											console.log(result);
											
											var data = {
													lp_no:result[0],
													lp_name:lp_name,
													lp_start:lp_start,
													lp_end:lp_end,
													lp_isclosed:lp_isclosed,
													lp_isshow:lp_isshow,
													mem_id:mem_id
											
											}
											console.log(data);
											
											Swal.fire({
												title: '수정하시겠습니까?',
												text: '',
												icon: 'warning',
												showCancelButton: true,
												confirmButtonColor: '#3085d6',
												cancelButtonColor: '#d33',
												confirmButtonText: '확인',
												cancelButtonText: '취소',
												reverseButtons: false, // 버튼 순서 거꾸로
											}).then((result) => {
												if(result.isConfirmed){
													$.ajax({
														type:"post",
														url: "<%=request.getContextPath()%>/admin/mypage/getlibPlanList/update.do",
														data: data,
														success : function(data){
															Swal.fire({
																icon: 'success',
																title: '수정이 완료되었습니다!'
															}).then(function(){
																window.location.replace('<%=request.getContextPath()%>/admin/mypage/libPlan.do');
															})
														},
														error : function(error){
															 Swal.fire({
												                 icon: 'warning',
												                 title: '수정이 실패하였습니다',
												              })
														}
													});
												}
											})
											
										})
										
									}
								})
								
								
							} // eventClick end
						});
						calendar.render();
						
					},
					error: function(error) {
						Swal.fire({
			                 icon: 'warning',
			                 title: '잠시후 다시 시도하세요. ',
			              })
					}
				})
				// main ajax end
			],
			
			
			
        }); //new FullCalendar end
        
	});
</script>

<script type="text/javascript">
function insertPlan(){
// 	alert("test1");
	
	var lp_name = $("input[name=lp_name]").val();
	console.log(lp_name);
	var lp_start =  $("input[name=lp_start]").val();
	var lp_end =  $("input[name=lp_end]").val();
	var lp_isclosed =  $("select[id=lp_isclose] option:selected").val();
	var lp_isshow =  $("select[id=lp_isshow] option:selected").val();
	var mem_id =  $("input[type=hidden][name=mem_id]").val();
	
	var data = {
			lp_name:lp_name,
			lp_start:lp_start,
			lp_end:lp_end,
			lp_isclosed:lp_isclosed,
			lp_isshow:lp_isshow,
			mem_id:mem_id
	
	}
	console.log(data);
	
	Swal.fire({
		title: '등록하시겠습니까?',
		text: '',
		icon: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		confirmButtonText: '확인',
		cancelButtonText: '취소',
		reverseButtons: false, // 버튼 순서 거꾸로
	}).then((result) => {
		if(result.isConfirmed){
			$.ajax({
				type:"post",
				url: "<%=request.getContextPath()%>/admin/mypage/getlibPlanList/insert.do",
				data: data,
				success : function(data){
					Swal.fire({
						icon: 'success',
						title: '등록이 완료되었습니다!'
					}).then(function(){
						window.location.replace('<%=request.getContextPath()%>/admin/mypage/libPlan.do');
					})
				},
				error : function(error){
					Swal.fire({
						icon: 'success',
						title: '실패!'
					})
				}
			});
		}
	})
}

</script>

</body>
<!-- END: Body-->

</html>