<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<c:set var="reserveList" value="${dataMap.reserveList}"/>
<c:set var="couponAvailableList" value="${dataMap.couponAvailableList}"/>
<c:set var="member" value="${dataMap.member}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원 수정</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
<meta name="description"
	content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
<meta name="keywords"
	content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="PIXINVENT">
<!-- <title>Swiper - Vuexy - Bootstrap HTML admin template</title> -->
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

</head>
<body>
	<div class="container">
     <div class="card">
        <div class="card-header" style="margin: 0 auto;">
            <h4 class="card-title" >회원정보</h4>
        </div>
            <img src="${webPath}${member.mem_img}" width="200px;" style="margin: 0 auto;">
     <form method="post" action="memModify.do" name="modifyForm">
        <div class="card-body">
            <div class="input-group input-group-lg mb-1">
                <span class="input-group-text">회원아이디</span>
                <input type="text" class="form-control form-control-lg" placeholder="Username" name = "mem_id" value="${member.mem_id}" readonly="readonly"/>
            </div>

            <div class="input-group input-group-lg mb-1">
                <span class="input-group-text">이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                <input type="text" class="form-control form-control-lg" placeholder="Username" name="mem_name" value="${member.mem_name}" />
            </div>

            <div class="input-group input-group-lg mb-1">
                <span class="input-group-text">이메일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                <input type="text" class="form-control form-control-lg" placeholder="Username" name="mem_email" value="${member.mem_email}"  />
            </div>
      	   <div class="input-group input-group-lg mb-1">
                <span class="input-group-text">전화번호&nbsp;&nbsp;</span>
                <input type="text" class="form-control form-control-lg" placeholder="Username" name="mem_phone" value="${member.mem_phone}" />
            </div>    
      	   <div class="input-group input-group-lg mb-1">
                <span class="input-group-text">주소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                <input type="text" class="form-control form-control-lg" placeholder="Username" name="mem_addr" value="${member.mem_addr}" />
           </div>
                      <div class="row g-1">      
			<div class="col-md-6 col-12 mb-3 position-relative">
				 <div class="input-group input-group-lg mb-1">
	                <span class="input-group-text">보유쿠폰&nbsp;&nbsp;</span>
	                <input type="text" class="form-control form-control-lg" placeholder="Username" value="${fn:length(couponAvailableList)}" readonly="readonly"/>
	            </div>
           </div>
           
           <div class="col-md-6 col-12 mb-3 position-relative">
			<div class="input-group input-group-lg mb-1">
		                <span class="input-group-text">포인트&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
		                <input type="text" class="form-control form-control-lg" placeholder="Username" value="포인트" readonly="readonly"/>
		            </div>
           </div>
           </div>
           
           <div class="row g-1">      
           <div class="col-md-4 col-12 mb-3 position-relative">
               <label class="form-label" for="validationTooltip01">대출가능도서</label>
               <input type="text" class="form-control" id="validationTooltip01" placeholder="" value="  ${5 - rentList.size() - reserveList.size()} 권" readonly="readonly" />
               <div class="valid-tooltip">Looks good!</div>
           </div>
           <div class="col-md-4 col-12 mb-3 position-relative">
               <label class="form-label" for="validationTooltip02">예약중인도서</label>
               <input type="text" class="form-control" id="validationTooltip02" placeholder=" " value="${fn:length(reserveList)} 권"  readonly="readonly"/>
               <div class="valid-tooltip">Looks good!</div>
           </div>
           <div class="col-md-4 col-12 mb-3 position-relative">
               <label class="form-label" for="validationTooltip03">대출중인도서</label>
               <input type="text" class="form-control" id="validationTooltip03" placeholder=""  value ="${fn:length(rentList)} 권"  readonly="readonly"/>
               <div class="invalid-tooltip">Please provide a valid city.</div>
           </div>           
           </div>
           


		      <div style="position: relative;"></div>
				<div style="float: right;">
					<button type="button"  class="btn btn-outline-primary" onclick="modify_go();">수정</button>
					<button type="button"  class="btn btn-outline-primary" onclick="CloseWindow();">닫기</button>
				</div>
            
        </div>
        </form>
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
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/resources/js/common.js"></script>
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
		})
	</script>

	<script>
		function modify_go() {
			var form = $('form[name="modifyForm"]');
			form.submit();	
		}

	</script>
	
	<script>	
		function CloseWindow(){
			window.close();
		}
	</script>