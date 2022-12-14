<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
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
<link rel="stylesheet" type="text/css"href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-pickadate.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-wizard.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-toastr.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-number-input.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/page-knowledge-base.css">
<!-- END: Page CSS-->
<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/pickers/pickadate/pickadate.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/pickers/flatpickr/flatpickr.min.css">
<!-- END: Vendor CSS-->
<!-- BEGIN: Page CSS-->
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
						<h2 class="card-title">????????? 2???</h2>
					</div>
					<div class="card-header">
						<h4 class="card-title">?????? ??????</h4>
					</div>
					<div class="card-body">
						<form id="registForm" action="regist" method="post" role="form">
							<div class="row justify-content-between">
								<div class="col-md-6 mb-1">
									<label class="form-label" for="fp-default">??????</label> 
									<input type="text" id="fp-default" name="fr_day"class="form-control flatpickr-basic" placeholder="YYYY-MM-DD" onchange="timeGo()" />
								</div>
								<div class="col-md-6 mb-1">
									<label class="form-label" for="fp-time">??????</label> 
									<select id="seatTime" name="fr_hour" aria-controls="DataTables_Table_0" class="form-select" >
										<option value="0">????????? ?????? ??????????????????.</option>
									</select>
								</div>
								<div class="col-md-6 mb-1">
									<label class="form-label" for="fp-time">?????? ??????</label>
									<input id="fr_capability" class="form-control form-control" name="fr_capability" value="" type="text" placeholder="">
								</div>
									<label class="form-label" for="fp-time">?????? ??????</label>
								<p><textarea class="form-control" id="fr_text" rows="10" placeholder="" name="fr_text"></textarea></p>
									<input type="hidden" name="fac_code" value="t2" id="fac_code" />
									<input type="hidden" name="mem_id" value="${loginUser.mem_id }" />
								<div class="row justify-content-end">
									<div class="col-3" style="text-align: right; margin-top: 20px">
										<button type="button" onclick="initGo()" class="btn btn-primary btnSize">????????????</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</section>
		</div>
	</div>
	
<script type="text/x-handlebars-template" id="seatTime-template">
   {{#if multiOneList}}
		  {{#each multiOneList}}
      			<option value="{{fr_hour}}">{{fr_hour}}~{{fr_hour_end}}???</option>
 		  {{/each}}
	  {{else}}
		<option value="0">???????????????.</option>
   {{/if}}
</script>


<script>
function timeGo() {
	
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
			Swal.fire("?????? ??????","?????? ????????? ???????????????. ?????? ????????? ??????????????????");
			document.querySelector("#fp-default").value = "";
			return;
	}
	  
		
		
	$.ajax({
		type : "post",
		url : "/readit/main/facilitySpace/getAMeetingTime.do",
		data : "day=" + FrDay,
		success: function(result){
			printDataBySelectOption(result, $('#seatTime'), $('#seatTime-template'));
		},
		error : function(XMLHttpRequest, textStatus, errorThrown){
        	console.log(XMLHttpRequest, textStatus, errorThrown);
        }
	});
	

	
}

</script>



<script>
   function printDataBySelectOption(dataArr, target, templateObject) {
      var template = Handlebars.compile(templateObject.html());
      var html = template(dataArr);
      target.html(html);
   }
</script>
	
	
<script>
	function initGo(){
		if(document.querySelector('#fp-default').value == ""){
			Swal.fire("????????????","????????? ?????????????????????.")
			return;
		}
		if(document.querySelector('#seatTime').value == "0"){
			Swal.fire("????????????","?????? ????????? ???????????????.")
			return;
		}
		if(document.querySelector('#seatTime').value == "0"){
			Swal.fire("????????????","????????? ?????????????????????.")
			return;
		}
		if(document.querySelector('#fr_capability').value == ""){
			Swal.fire("????????????","?????? ????????? ??????????????????.")
			return;
		}
		if(document.querySelector('#fr_text').value == ""){
			Swal.fire("????????????","?????? ????????? ??????????????????.")
			return;
		}
	    var form = $('form[role="form"]');
			form.attr({"method":"post",
	     	   		   "action":"meetingRegist.do"
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