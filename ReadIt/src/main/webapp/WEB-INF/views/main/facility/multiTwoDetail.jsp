<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="apple-touch-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/wizard/bs-stepper.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/spinner/jquery.bootstrap-touchspin.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/toastr.min.css">
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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/pickers/pickadate/pickadate.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/pickers/flatpickr/flatpickr.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/horizontal-menu.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-flat-pickr.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-pickadate.css">
<style>
.mg {
	margin: 10px;
}

.btnSize {
	width: 100%;
	height: 100%;
}

.divSize {
	height: 80px;
}
</style>
</head>
<body style = overflow-y:hidden;>
	<div class="container" style="margin-top: 15px;">
		<div class="content-body" style="magin: 20px">
			<section id="flatpickr">
				<div class="card" style="margin: 20px;">
					<div class="card-header">
						<h4 class="card-title">(멀티미디어 2실)일시 선택</h4>
					</div>
					<div class="card-body">
					<form id="registForm" action="regist" method="post" role="form">
						<div class="row justify-content-between">
								<div class="col-md-6 mb-1">
									<label class="form-label" for="fp-default">날짜</label>
									<input type="text" id="fp-default" name="fr_day" class="form-control flatpickr-basic" placeholder="YYYY-MM-DD"  onchange="daycheck()" />
								</div>
								<div class="col-md-6 mb-1">
									<label class="form-label" for="fp-time">시간</label> 
									<select id="seatTime" name="fr_hour" aria-controls="DataTables_Table_0" onchange="getSeat()" class="form-select">
										<option value="0"> 시간 선택  </option>
										<option value="9">9시~11시</option>
										<option value="11">11시~13시</option>
										<option value="13">13시~15시</option>
										<option value="15">15시~17시</option>
									</select>
								</div>
								<input type="hidden" name="fac_code" value="m2" id="fac_code"/>
								<input type="hidden" name="fr_seat" value="" id="fr_seat"/>
								<input type="hidden" name="mem_id" value="${loginUser.mem_id }"/>
							</div>
						</form>
					</div>
				</div>
			</section>
			<div class="card" style="margin: 20px;">
				<div class="card-header">
					<h4 class="card-title">좌석 선택</h4>
				</div>
				<div class="card-body" style="min-height: 430px">
					<c:forEach var="i" begin="1" end="4">
						<div class="row mg">
							<c:forEach var="j" begin="1" end="4">
								<div class="col-3 divSize">
									<button id="seatNum${i}0${j}" type="button" onclick="setSheetFunc(${i}0${j})" class="btn btn-outline-primary waves-effect btnSize">${i}0${j}</button>
								</div>
							</c:forEach>
						</div>
					</c:forEach>
					<div class="row justify-content-end">
						<div class="col-3" style="text-align: right; margin-top: 20px">
							<button type="button" onclick="initGo()" class="btn btn-primary btnSize">예약하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>
	function setSheetFunc(seatNum){
		var button_event = document.querySelector('#seatNum'+seatNum)
		if(button_event.className != 'btn btn-outline-primary waves-effect btnSize'){
			alert("이미 예약된 좌석입니다.")
		} else{
			document.querySelector('#fr_seat').value = seatNum;
		}
		
	}
</script>
	
<script>
	function daycheck(){
		var FrDay = document.querySelector("#fp-default").value
		var year = FrDay.substr(0,4);
		var mon = FrDay.substring(5,7)-1;
		var day = FrDay.substr(8);

		
		var sysDate = new Date();
		var a = sysDate.getFullYear();
		var b = sysDate.getMonth();
		var c = sysDate.getDate();

		
		var tlwkrDate = new Date(a,b,c)
		var selectDate = new Date(year,mon,day)
		
		var startDate = tlwkrDate.getTime()
		var endDate = selectDate.getTime()

		var result = startDate-endDate
		
		if(result <= 0){
			}else{
				Swal.fire("예약 불가","이미 기간이 지났습니다. 다른 날짜를 선택해주세요");
				document.querySelector("#fp-default").value = "";
				return;
		}
	}

	
	function getSeat(){
		
		
		<c:forEach var="i" begin="1" end="4">
			<c:forEach var="j" begin="1" end="4">
	        	var button_seat_reset = document.querySelector('#seatNum'+${i}+'0'+${j})
	        	button_seat_reset.className = 'btn btn-outline-primary waves-effect btnSize';
			</c:forEach>
		</c:forEach>
		
		
		var date_seat = document.querySelector('#fp-default');
		var time_seat = document.querySelector('#seatTime');
		var room_seat = document.querySelector('#fac_code');
		
		if(!date_seat.value){
			Swal.fire("예약 불가","날짜를 선택해 주세요.");
			return;
		}
		var jason_data = 
				{"seatDate" : date_seat.value,
				"seatTime" : time_seat.value,
				"fac_code" : room_seat.value
				};
		
		
		
		$.ajax({
            type : "POST", 
            url : "ajaxSeatData.do",
            data : jason_data,
            success : function(res){ 
                for(let i = 0 ; i < res.length ; i++){
                	var button_seat = document.querySelector('#seatNum'+res[i])
                	button_seat.className = 'btn btn-outline-danger waves-effect btnSize';
                	button_seat
                }
            },
            error : function(XMLHttpRequest, textStatus, errorThrown){
            	alert("에이젝스 에러: "+textStatus)
            	
            }
        });
	}
	
	function initGo(){
		if(document.querySelector('#fr_seat').value == ""){
			Swal.fire("예약 불가","좌석을 선택해주세요.");
			return;
		}
		if(document.querySelector('#fp-default').value == ""){
			Swal.fire("예약 불가","날짜를 선택해주세요.");
			return;
		}
		if(document.querySelector('#seatTime').value == "0"){
			Swal.fire("예약 불가","시간을 선택해주세요.");
			return;
		}
	    var form = $('form[role="form"]');
			form.attr({"method":"post",
	     	   		   "action":"regist.do"
	   		  });
		form.submit();
	}	
</script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/wizard/bs-stepper.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/spinner/jquery.bootstrap-touchspin.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/toastr.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/picker.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/legacy.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/forms/pickers/form-pickers.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-ecommerce-checkout.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
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
</body>
</html>