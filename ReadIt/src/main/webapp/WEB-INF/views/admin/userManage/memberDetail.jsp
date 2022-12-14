<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="reserveList" value="${dataMap.reserveList}" />
<c:set var="couponAvailableList" value="${dataMap.couponAvailableList}" />
<c:set var="member" value="${dataMap.member}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원상세보기</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
<meta name="description"
	content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
<meta name="keywords"
	content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="PIXINVENT">
<title>Swiper - Vuexy - Bootstrap HTML admin template</title>
<link rel="apple-touch-icon"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600"
	rel="stylesheet">

<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/swiper.min.css">
<!-- END: Vendor CSS-->

<!-- BEGIN: Theme CSS-->
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap-extended.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/colors.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/components.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/dark-layout.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/bordered-layout.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/semi-dark-layout.css">

<!-- BEGIN: Page CSS-->
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/horizontal-menu.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-swiper.css">
<!-- END: Page CSS-->

<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
<!-- END: Custom CSS-->
<!-- <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
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
        width: 100%;   /* 부모 기준 */
        height: 100%;
        left:50%;
        top:50%;
 }
</style>

</head>
<body>
	<div class="container">
		<!-- BEGIN modal -->
		<div id="searchModal">
			<div id="modalContent">
				<div class="card">
					<div class="card-body">
					<div class="card-header">
						<h3>회원 쿠폰 및 포인트 조회</h3>
					</div>
							<div class="row pd">
								<div class="col-6">
									<div class="input-group">
										<span class="input-group-text">아이디</span>
										<input type="text" id="memId" class="form-control" value="${member.mem_id}" readonly="readonly">
<%-- 										<input type="text" id="memId" class="form-control" value="${member.mem_id}" readonly="readonly"> --%>
									</div>
								</div>
								<div class="col-6">
									<div class="input-group">
										<span class="input-group-text">보유쿠폰</span>
										<input type="text" id="memId" class="form-control" value="${fn:length(couponAvailableList)} 개" readonly="readonly">
<%-- 										<input type="text" id="memId" class="form-control" value="${member.mem_id}" readonly="readonly"> --%>
									</div>
								</div>
							</div>
						<c:if test="${fn:length(couponAvailableList)!='0'}">
							<c:forEach var="entry" items="${couponAvailableList}">
							<div style="padding-top: 10px;">
								<div class="row pd">
									<div class="col-4">
										<div class="input-group">
											<span class="input-group-text">쿠폰종류</span>
											<input type="text" class="form-control" id="kind" value = "도서배송비쿠폰" readonly="readonly">
										</div>
									</div>
									<div class="col-5">
										<div class="input-group">
											<span class="input-group-text">발급일/만료일</span>
											<input type="text" class="form-control" id="cpDate" value="<fmt:formatDate value="${entry.cp_issueday}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${entry.cp_expireday}" pattern="yyyy-MM-dd"/>" readonly="readonly">
										</div>
									</div>
									<div class="col-3">
										<div class="input-group">
											<span class="input-group-text">상태</span>
											<c:if test="${entry.cp_status == '0'}" >
											<input type="text" class="form-control" id="cpState" value="사용가능" readonly="readonly"> 
											</c:if>	
											<c:if test="${entry.cp_status == '1'}" >
											<input type="text" class="form-control" id="cpState" value="사용완료" readonly="readonly"> 
											</c:if>	
											<c:if test="${entry.cp_status == '2'}" >
											<input type="text" class="form-control" id="cpState" value="기간만료" readonly="readonly"> 
											</c:if>																									
										</div>
									</div>
								</div>
							</div>
							</c:forEach>
							<br/>
							</c:if>
							<div class="card-header">
								<h3>쿠폰 부여</h3>
							</div>
							<div class="row pd">
								<div class="col-4">
									<div class="input-group">
										<span class="input-group-text">쿠폰종류</span>
										<input type="text" id="memId" class="form-control" value="배송비쿠폰" >
									</div>
								</div>
								<div class="col-4">
									<div class="input-group">
										<span class="input-group-text">발급일</span>
										<input type="date" id="issueday" class="form-control" placeholder="yy-mm-dd" value="" readonly="readonly">
									</div>
								</div>	
								<div class="col-4">
									<div class="input-group">
										<span class="input-group-text">만료일</span>
										<input type="date" id="expireday" class="form-control" placeholder="yy-mm-dd" value=""  min="" max="">
									</div>
								</div>		
									
								<div style="position: relative;">
								<div style="float: right; padding-top: 10px;">
								<button type="button" class="btn btn-outline-primary"id="addCoupon">쿠폰추가</button>
								<button type="button" class="btn btn-outline-primary"id="closeModal">닫기</button>
								</div>		
								</div>
																			
							
							</div>
						</div>
					</div>
				</div>
			</div>
		<!-- END Modal -->
		<div class="card">
			<div class="card-header" style="margin: 0 auto;">
				<h4 class="card-title">회원정보</h4>
			</div>
			<img src="${webPath}${member.mem_img}" width="200px;"
				style="margin: 0 auto;">
			<div class="card-body">
				<div class="input-group input-group-lg mb-1">
					<span class="input-group-text">회원아이디</span> <input type="text"
						class="form-control form-control-lg" placeholder="Username"
						id="mem_id" value="${member.mem_id}" readonly="readonly" />
				</div>

				<div class="input-group input-group-lg mb-1">
					<span class="input-group-text">이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<input type="text" class="form-control form-control-lg"
						placeholder="Username" value="${member.mem_name}"
						readonly="readonly" />
				</div>

				<div class="input-group input-group-lg mb-1">
					<span class="input-group-text">이메일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<input type="text" class="form-control form-control-lg"
						placeholder="Username" value="${member.mem_email}"
						readonly="readonly" />
				</div>
				<div class="input-group input-group-lg mb-1">
					<span class="input-group-text">전화번호&nbsp;&nbsp;</span> <input
						type="text" class="form-control form-control-lg"
						placeholder="Username" value="${member.mem_phone}"
						readonly="readonly" />
				</div>
				<div class="input-group input-group-lg mb-1">
					<span class="input-group-text">주소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					<input type="text" class="form-control form-control-lg"
						placeholder="Username" value="${member.mem_addr}"
						readonly="readonly" />
				</div>
				<div class="row g-1">
					<div class="col-md-6 col-12 mb-3 position-relative">
						<div class="input-group input-group-lg mb-1">
							<span class="input-group-text">보유쿠폰&nbsp;&nbsp;</span> <input
								type="text" class="form-control form-control-lg"
								placeholder="Username"
								value="${fn:length(couponAvailableList)} 개" readonly="readonly" />
						</div>
					</div>

					<div class="col-md-6 col-12 mb-3 position-relative">
						<div class="input-group input-group-lg mb-1">
							<span class="input-group-text">포인트&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
							<input type="text" class="form-control form-control-lg"
								placeholder="Username" value="포인트 몇점~~?" readonly="readonly" />
						</div>
					</div>
				</div>

				<div class="row g-1">
					<div class="col-md-4 col-12 mb-3 position-relative">
						<label class="form-label" for="validationTooltip01">대출가능도서</label>
						<input type="text" class="form-control" id="validationTooltip01"
							placeholder=""
							value="  ${5 - rentList.size() - reserveList.size()} 권"
							readonly="readonly" />
						<div class="valid-tooltip">Looks good!</div>
					</div>
					<div class="col-md-4 col-12 mb-3 position-relative">
						<label class="form-label" for="validationTooltip02">예약중인도서</label>
						<input type="text" class="form-control" id="validationTooltip02"
							placeholder=" " value="${fn:length(reserveList)} 권"
							readonly="readonly" />
						<div class="valid-tooltip">Looks good!</div>
					</div>
					<div class="col-md-4 col-12 mb-3 position-relative">
						<label class="form-label" for="validationTooltip03">대출중인도서</label>
						<input type="text" class="form-control" id="validationTooltip03"
							placeholder="" value="${fn:length(rentList)} 권"
							readonly="readonly" />
						<div class="invalid-tooltip">Please provide a valid city.</div>
					</div>
				</div>
				<div style="position: relative;"></div>
				<div style="float: right;">
					<button type="button" class="btn btn-outline-primary"
						id="couponAndPoint">쿠폰/포인트관리</button>
					<button type="button" class="btn btn-outline-primary" id="isDrop">강제탈퇴</button>
					<button type="button" class="btn btn-outline-primary"
						onclick="modify_go('${member.mem_id}');">수정</button>
					<button type="button" class="btn btn-outline-primary"
						onclick="CloseWindow();">닫기</button>
				</div>
				<input type="hidden" id="authority" value="${member.authority}">
				<input type="hidden" id="mem_isDrop" value="${member.mem_isDrop}">

			</div>
		</div>
	</div>
	<!-- BEGIN: Vendor JS-->
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
	<!-- BEGIN Vendor JS-->

	<!-- BEGIN: Page Vendor JS-->
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
	<!-- END: Page Vendor JS-->

	<!-- BEGIN: Theme JS-->
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
	<!-- END: Theme JS-->
	<script src="${webPath}/resources/js/common.js"></script>
	<!-- BEGIN: Page JS-->
	<!-- END: Page JS-->		
		

	<script>
		$(window).on('load', function() {
			if (feather) {
				feather.replace({
					width : 14,
					height : 14
				});
			}
// 			swal("Good job!", "You clicked the button!", "success");
		})
		<c:if test="${from eq 'modify'}">
			Swal.fire({
				icon: 'success',
				title: '회원정보수정완료',
				text: '회원정보가 수정되었습니다'
			}).then(function(){
				location.reload(true);
			})
		</c:if>
		<c:if test="${from eq 'remove'}">
			Swal.fire({
				icon: 'success',
				title: '회원탈퇴처리완료',
				text: '회원 탈퇴처리가 완료되었습니다'
			}).then(function(){
				CloseWindow();
			})
		</c:if>
		
	</script>
	
	<script>
		function modify_go(member_id) {
		 var authority = document.getElementById('authority').value;
		 var mem_isDrop = document.getElementById('mem_isDrop').value;
		 if(mem_isDrop == '1') {
			 Swal.fire('수정을 할 수 없습니다.', '탈퇴한 회원으로 회원 정보를 수정할 수 없습니다.', 'success');
			 return false;
		 }			 
		 if(authority == 'ROLE_ADMIN_PRE') {
			 Swal.fire('수정을 할 수 없습니다.', '관리자 미승인 상태로 수정할 수 없습니다.', 'success');
			 return false;
		 }	
			location.href = "memModifyForm.do?mem_id=" + member_id;
		}

	</script>
	<script>
	function makeData(date){
		var year = date.getFullYear();
		var month = ('0' + (date.getMonth() + 1)).slice(-2);
		var day = ('0' + date.getDate()).slice(-2);
		var dateF = year + '-' + month  + '-' + day;
		return dateF;
	}
	</script>
	
	<script>
	var today = new Date(); 
	var todayf = makeData(today);
	document.getElementById('issueday').value = todayf;
	document.getElementById("expireday").min = todayf;
	
	
	var couponAndPoint = document.getElementById('couponAndPoint');
	var closeModal = document.getElementById('closeModal');
	var smodal = document.querySelector("#searchModal");
	var addCoupon = document.querySelector("#addCoupon");
	
		couponAndPoint.addEventListener("click",function(){
			smodal.style.display = "block";
			}
		);
		addCoupon.addEventListener("click",function(){
			var issueday = document.getElementById('issueday').value;
			var expireday = document.getElementById('expireday').value;
			var mem_id = document.getElementById('mem_id').value;
			console.log(expireday);
			if(expireday == ""){
				Swal.fire({
					icon: 'success',
					title: '필수입력사항 누락',
					text: '쿠폰만료일을 입력해주세요'
				})
					return false;
			}
			var data = 	{
					'issueday' : issueday,
					'expireday' : expireday,
					'mem_id' : mem_id
				}		
			$.ajax({
		    	type : 'get',
				data : data,
		    	dataType : 'text',
		    	url : "${webPath}/admin/userManage/addCoupon.do",
		    	async:false,
		    	success : function(res){
							console.log(res);
				    		Swal.fire({
								icon: 'success',
								title: '쿠폰 발급 완료',
								text: '쿠폰이 발급되었습니다'
							}).then(function(){
								location.reload(true);
							})
		    			},
		    	error:function(error){
				    }
		    	});
			
			}
		);
		closeModal.addEventListener("click",function(){
			smodal.style.display = "none";
			}
		);
	
	</script>

	<script>
	<!-- sweet alert function -->
	var isDrop = $('#isDrop');
	var member_id = document.getElementById('mem_id').value;
	var mem_isDrop = document.getElementById('mem_isDrop').value;
	console.log(member_id);
	
	isDrop.on('click', function () {
		
		 if(mem_isDrop == '1') {
			 Swal.fire('회원탈퇴를 할 수 없습니다.', '이미 탈퇴한 회원입니다.', 'success');
			 return false;
		 }	
		 Swal.fire({
				  title: '강제 탈퇴 시키겠습니까?',
				  text: "계속 진행하시면 되돌리실 수 없습니다!",
				  icon: 'warning',
				  showCancelButton: true,
				  confirmButtonText: '네, 탈퇴시키겠습니다.',
				  cancelButtonText: '아니요',
				  customClass: {
					  confirmButton: 'btn btn-secondary',
					  cancelButton: 'btn btn-outline-danger ms-1'
				  },
			  }).then((result) => {
			        if (result.isConfirmed) {
			        location.href = "memRemove.do?mem_id=" + member_id;
			      }
		  });
	});	   
	
	</script>
</body>
