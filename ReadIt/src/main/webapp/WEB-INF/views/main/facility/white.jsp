<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
</head>
<body>

<script>
<c:if test="${result eq 'true'}">
 window.onload = function(){ 
	Swal.fire({
    icon: 'success',
    title: '예약성공.',
    text: '예약이 완료되었습니다.'
 }).then(function(){
	 window.opener.location.reload();
		 window.close();
 })
 }
 </c:if>

<c:if test="${result eq 'false' and facCode eq 'm1'}">
window.onload = function(){ 
	console.log(${fac_code})
	Swal.fire({
       icon: 'error',
       title: '예약 불가.',
       text: '이미 예약된 정보가 있습니다.'
 	}).then(function(){
 		window.close();
 		opener.location.href ="<%=request.getContextPath()%>/main/myInfo/myPage.do"
 		})
 	}
</c:if>

<c:if test="${result eq 'false' and facCode eq 'm2'}">
window.onload = function(){ 
	console.log(${fac_code})
	Swal.fire({
       icon: 'error',
       title: '예약 불가.',
       text: '이미 예약된 정보가 있습니다.'
 	}).then(function(){
 		window.close();
 		opener.location.href ="<%=request.getContextPath()%>/main/myInfo/myPage.do"
 		})
 	}
</c:if>

<c:if test="${result eq 'false' and facCode eq 'm3'}">
window.onload = function(){ 
	console.log(${fac_code})
	Swal.fire({
       icon: 'error',
       title: '예약 불가.',
       text: '이미 예약된 정보가 있습니다.'
 	}).then(function(){
 		window.close();
 		opener.location.href ="<%=request.getContextPath()%>/main/myInfo/myPage.do"
 		})
 	}
</c:if>

<c:if test="${result eq 'false' and facCode eq 'm4'}">
window.onload = function(){ 
	console.log(${fac_code})
	Swal.fire({
       icon: 'error',
       title: '예약 불가.',
       text: '이미 예약된 정보가 있습니다.'
 	}).then(function(){
 		window.close();
 		opener.location.href ="<%=request.getContextPath()%>/main/myInfo/myPage.do"
 		})
 	}
</c:if>


<c:if test="${from eq 'registNotice'}">
window.onload = function(){ 
Swal.fire({
		icon: 'success',
		title: '등록 완료.',
text: '공지사항 등록이 성공했습니다.'
}).then(function(){
	window.opener.location.reload();
window.close();
	})
}
</c:if>


<c:if test="${from eq 'volRegist'}">

window.onload = function(){ 
	Swal.fire({
			icon: 'success',
			title: '등록 완료.',
	text: '봉사모집 게시글 등록이 성공했습니다.'
	}).then(function(){
		window.opener.location.reload();
		window.close();
		})
	}

</c:if>


<c:if test="${from eq 'volApplication'}">
window.onload = function(){ 
	Swal.fire({
			icon: 'success',
			title: '신청 완료.',
	text: '봉사신청이  성공했습니다.'
	}).then(function(){
		window.opener.location.reload();
		window.close();
		})
	}
</c:if>


<c:if test="${from eq 'WishRegist'}">
window.onload = function(){ 
	Swal.fire({
		icon: 'success',
		title: '신청되었습니다.',
		text: '신청내역은 나의도서정보에서 확인할 수 있습니다.'
	}).then(function(){
		window.opener.location.reload();
		window.close();
	})
}
</c:if>
	
</script>
</body>

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

</html>