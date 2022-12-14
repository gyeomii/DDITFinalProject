<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<!-- BEGIN: Head-->
<style>
.readitmenu{
	width:100%
	height:60%;
	background-image: url("${webPath}/resources/img/bell.jpg");
	background-repeat: no-repeat;
	background-size: 100%;
	animation: mymove 20s infinite;
}

@keyframes mymove {
  from {top: 0px;} 
  50% {background-position: right;}
   to {top: 200px;} 
}
</style>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>북적북적 도서관:: 스마트 도서관 Read!t</title>
    <link rel="apple-touch-icon" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/charts/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/toastr.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/bordered-layout.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/semi-dark-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/horizontal-menu.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/dashboard-ecommerce.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/charts/chart-apex.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-toastr.css">
    <!-- END: Page CSS-->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-sweet-alerts.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/sweetalert2.min.css">
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->
    <style>
    	body{
    		font-family: 'Noto Sans KR', sans-serif;
    	}
    </style>
</head>    

<!-- BEGIN: Body-->

<body class="horizontal-layout horizontal-menu  navbar-floating footer-static" data-open="hover" data-menu="horizontal-menu" data-col="">

    <!-- BEGIN: Header-->
    <nav class="header-navbar navbar-expand-lg navbar navbar-fixed align-items-center navbar-shadow navbar-brand-center" data-nav="brand-center">
        <div class="navbar-header d-xl-block d-none">
            <ul class="nav navbar-nav">
                <li class="nav-item"><a class="navbar-brand" href="${webPath}/index.do"><span class="brand-logo">
                      </span>
<!--                         <h2 class="brand-text mb-0">ReadIt</h2> -->
                        <img src="${webPath}/resources/img/booklogo.png" style="width:45%"/>
                    </a></li>
            </ul>
        </div>
        <div class="navbar-container d-flex content" style="width:90%">
            <div class="bookmark-wrapper d-flex align-items-center">
            </div>
            <ul class="nav navbar-nav align-items-center ms-auto" style="font-family: 'Noto Sans KR', sans-serif;">
            <sec:authorize access="hasAnyRole('ROLE_USER','ROLE_ADMIN')">
                <li class="nav-item dropdown dropdown-notification me-25" onclick=><a class="nav-link" href="#" data-bs-toggle="dropdown" id="navbarDropdownMenuLink1"><i class="ficon" data-feather="bell"></i>
                <span class="badge rounded-pill bg-danger badge-up" id="alarmIcon" style="display:none;">0</span></a>
                    <ul class="dropdown-menu dropdown-menu-media dropdown-menu-end">
                        <li class="dropdown-menu-header">
                            <div class="dropdown-header d-flex">
                                <h4 class="notification-title mb-0 me-auto">알림 내역</h4>
                                <div class="badge rounded-pill badge-light-primary" id="today"></div>
                            </div>
                        </li>
                        <li class="scrollable-container media-list ps">
                         <div class="list-group" id="alarmDiv">
                                           <div id="uchk"></div>
                                           <div id="chk"></div>
                            </div>
                        </li>
                        <li class="dropdown-menu-footer"><a class="btn btn-primary w-100" href="#" id="totalCount"></a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown dropdown-cart me-25"><a class="nav-link" onclick="goPage('${webPath}/main/myInfo/bookCart.do','M050210')" data-bs-toggle="dropdown">
                <i class="ficon" data-feather="shopping-cart"></i></a>
                </li>
            </sec:authorize>
                <li class="nav-item dropdown dropdown-user"><a class="nav-link dropdown-toggle dropdown-user-link" id="dropdown-user" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

                        <c:choose>
                        	<c:when test="${empty loginUser }">
<!-- 		                        <div class="user-nav d-sm-flex d-none"><span class="user-name fw-bolder"></span> -->
		                        	<div class="demo-inline-spacing">
		                        	<button type="button"  class="btn btn-flat-warning waves-effect" onclick="location.href='common/loginForm.do'"style="padding-bottom: 10px;padding-top: 0px;margin-right: 0px;margin-top: 0px;margin-bottom: 0px;border-top-width: 20px;"> 로그인 </button>
		                        	<button type="button"  class="btn btn-flat-secondary waves-effect" onclick="location.href='common/signupForm.do'" style="padding-bottom: 10px;padding-top: 0px;margin-right: 0px;margin-top: 0px;margin-bottom: 0px;border-top-width: 20px;"> 회원가입 </button>
		                        	</div>
<!--                         			<span class="badge rounded-pill badge-light-danger" style="margin-bottom: 8px;">비회원</span> -->
<!-- 		                        </div> -->
<%-- 		                        <span class="avatar"><img class="round" src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets//images/portrait/small/avatar-s-11.jpg" alt="avatar" height="40" width="40"><span class="avatar-status-busy"></span></span> --%>
                        	</c:when>
                        	<c:when test="${loginUser.authority eq 'ROLE_USER' or loginUser.authority eq 'ROLE_ADMIN_PRE' }">
                        		<div class="user-nav d-sm-flex d-none"><span class="user-name fw-bolder">회원명: ${loginUser.mem_name }</span>
		                        	<span class="badge rounded-pill badge-light-success">Login ID : ${loginUser.mem_id }</span>
		                        </div><span class="avatar"><img class="round" src="${webPath}/${loginUser.mem_img}" alt="avatar" height="40" width="40"><span class="avatar-status-online"></span></span>
                        	</c:when>
                        	<c:when test="${loginUser.authority eq 'ROLE_ADMIN' }">
                        		<div class="user-nav d-sm-flex d-none"><span class="user-name fw-bolder">관리자명: ${loginUser.mem_name }</span>
		                        	<span class="badge rounded-pill badge-light-success">Login ID : ${loginUser.mem_id }</span>
		                        </div><span class="avatar"><img class="round" src="${webPath}/${loginUser.mem_img}" alt="avatar" height="40" width="40"><span class="avatar-status-online"></span></span>
                        	</c:when>
                        </c:choose>
                    </a>
                   <c:if test="${!empty loginUser }"> 
                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdown-user">
<!-- 	                    <a class="dropdown-item" href="app-email.html"><i class="me-50" data-feather="mail"></i> Inbox</a> -->
<!-- 	                    <a class="dropdown-item" href="app-todo.html"><i class="me-50" data-feather="check-square"></i> Task</a> -->
<!--                         <div class="dropdown-divider"></div><a class="dropdown-item" href="page-account-settings-account.html"><i class="me-50" data-feather="settings"></i> Settings</a> -->
                        <c:choose>
                        	<c:when test="${loginUser.authority eq 'ROLE_ADMIN' }">
                        		<a class="dropdown-item" onclick="location.href='admin/index.do';"><i class="me-50" data-feather="shuffle"></i> Admin Page</a>
                        		<a class="dropdown-item" onclick="location.href='common/logout.do';"><i class="me-50" data-feather="log-out"></i> Logout</a>
                        	</c:when>
                        	<c:when test="${loginUser.authority eq 'ROLE_USER' or loginUser.authority eq 'ROLE_ADMIN_PRE' }">
                        		<a class="dropdown-item" onclick="location.href='common/logout.do';"><i class="me-50" data-feather="log-out"></i> Logout</a>
                        	</c:when>
                        </c:choose>
                    </div>
                  </c:if>
                </li>
            </ul>
               <!-- BEGIN: Main Menu-->
    <div class="horizontal-menu-wrapper">
        <div class="header-navbar navbar-expand-sm navbar navbar-horizontal floating-nav navbar-light navbar-shadow menu-border container-xxl" role="navigation" data-menu="menu-wrapper"  >
            <div class="navbar-header readitmenu" >
            </div>
            <div class="shadow-bottom " ></div>
            <!-- Horizontal menu content-->
            <div class="navbar-container main-menu-content" data-menu="menu-container" style="font-family: 'Noto Sans KR', sans-serif;">
                <ul class="nav navbar-nav" id="main-menu-navigation" data-menu="menu-navigation"  >
                    <li ><a class="dropdown-toggle nav-link d-flex align-items-center"  href="${webPath}/index.do" data-bs-toggle="" ><i data-feather="home"></i><span data-i18n="Dashboards">북적북적</span></a>
                        <ul class="dropdown-menu" data-bs-popper="none"> 
                           <li data-menu=""><a class="dropdown-item d-flex align-items-center" href="dashboard-analytics.html" data-bs-toggle="" data-i18n="Analytics"><i data-feather="activity"></i><span data-i18n="Analytics">Analytics</span></a>
                             </li> 
                           <li class="active" data-menu=""><a class="dropdown-item d-flex align-items-center" href="dashboard-ecommerce.html" data-bs-toggle="" data-i18n="eCommerce"><i data-feather="shopping-cart"></i><span data-i18n="eCommerce">eCommerce</span></a> 
                            </li>
                        </ul> 
                    </li>
                    <li class="dropdown nav-item" data-menu="dropdown"><a class="dropdown-toggle nav-link d-flex align-items-center" href="#" data-bs-toggle="dropdown"><i data-feather="book-open" style="color: saddlebrown"></i><span data-i18n="Apps">도서관안내</span></a>
                        <ul class="dropdown-menu" data-bs-popper="none">
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/info/intro.do','M010100')" data-bs-toggle="" data-i18n="Email"><i data-feather="mouse-pointer" style="color: cornflowerblue"></i><span data-i18n="Email">도서관소개</span></a>
                            </li>
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/info/use.do','M010200')" data-bs-toggle="" data-i18n="Chat"><i data-feather="file-text" style="color: darkorange"></i><span data-i18n="Chat">이용안내</span></a>
                            </li>
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/info/facility.do','M010300')" data-bs-toggle="" data-i18n="Todo"><i data-feather="map-pin" style="color: violet"></i><span data-i18n="Todo">시설안내</span></a>
                            </li>
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/info/statistics.do','M010400')" data-bs-toggle="" data-i18n="Calendar"><i data-feather="globe" style="color: green"></i><span data-i18n="Calendar">도서관통계</span></a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown nav-item" data-menu="dropdown"><a class="dropdown-toggle nav-link d-flex align-items-center" href="#" data-bs-toggle="dropdown"><i data-feather="search" style="color: forestgreen"></i><span data-i18n="User Interface">도서 검색</span></a>
                        <ul class="dropdown-menu" data-bs-popper="none">
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/search/easySearch.do','M020100')"  data-bs-toggle="" data-i18n="Typography"><i data-feather="book-open" style="color: saddlebrown"></i><span data-i18n="Typography">도서 검색</span></a>
                            </li>
<%--                             <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/search/deepSearch.do','M020200')" data-bs-toggle="" data-i18n="Feather"><i data-feather="eye" style="color: royalblue"></i><span data-i18n="Feather">상세 검색</span></a> --%>
<!--                             </li> -->
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/search/recommandList.do','M020300')" data-bs-toggle="" data-i18n="Feather"><i data-feather="thumbs-up" style="color: LawnGreen "></i><span data-i18n="Feather">추천 도서</span></a>
                            </li>
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/search/bestList.do','M020400')" data-bs-toggle="" data-i18n="Feather"><i data-feather="award" style="color: orangered"></i><span data-i18n="Feather">베스트 도서</span></a>
                            </li>            
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/search/wishbookList/list.do','M020500')" data-bs-toggle="" data-i18n="Feather"><i data-feather="star"  style="color: gold"></i><span data-i18n="Feather">희망 도서 신청</span></a>
                            </li>                                                                              
                        </ul>
                    </li>
                    <li class="dropdown nav-item" data-menu="dropdown"><a class="dropdown-toggle nav-link d-flex align-items-center" href="#" data-bs-toggle="dropdown"><i data-feather="layers" style="color: lightskyblue"></i><span data-i18n="Pages">북적 라운지</span></a>
                        <ul class="dropdown-menu" data-bs-popper="none">

                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/board/notice/list.do','M030100')" data-bs-toggle="" data-i18n="Profile"><i data-feather="bell" style="color: gold"></i><span data-i18n="Profile">공지 사항</span></a>
                            </li>
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/board/faq/faqList.do','M030200')" data-bs-toggle="" data-i18n="FAQ"><i data-feather="help-circle" style="color: deepskyblue"></i><span data-i18n="FAQ">자주묻는질문</span></a>
                            </li>
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/board/lost/list.do','M030300')" data-bs-toggle="" data-i18n="Knowledge Base"><i data-feather="archive" style="color: sienna"></i><span data-i18n="Knowledge Base">분실물찾기</span></a>
                            </li>
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/board/event/list.do','M030400')" data-bs-toggle="" data-i18n="Pricing"><i data-feather="star" style="color: orange"></i><span data-i18n="Pricing">이벤트</span></a>
                            </li>
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/board/volBoard/list.do','M030500')" data-bs-toggle="" data-i18n="License"><i data-feather="heart" style="color: deeppink"></i><span data-i18n="License">봉사</span></a>
                            </li>
                        </ul>
                    </li>
<%--                     <sec:authorize access="hasRole('ROLE_USER')"> --%>
                    <li class="dropdown nav-item" data-menu="dropdown"><a class="dropdown-toggle nav-link d-flex align-items-center" href="#" data-bs-toggle="dropdown"><i data-feather="zap" style="color: orange"></i><span data-i18n="Charts &amp; Maps">스마트공간</span></a>
                        <ul class="dropdown-menu" data-bs-popper="none">
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/ai/recommand1.do','M040000')" data-bs-toggle="" data-i18n="Leaflet Maps"><i data-feather="radio" style="color: deepskyblue"></i><span data-i18n="Leaflet Maps">AI 추천</span></a>
                            </li>
<%--                             <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/notice/list.do','M030100')" data-bs-toggle="" data-i18n="Leaflet Maps"><i data-feather="map"></i><span data-i18n="Leaflet Maps">리뷰 기반 추천</span></a> --%>
<!--                             </li>                             -->
<%--                               <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/notice/list.do','M030100')" data-bs-toggle="" data-i18n="Leaflet Maps"><i data-feather="map"></i><span data-i18n="Leaflet Maps">MBTI 추천</span></a> --%>
<!--                             </li>                           -->
<%--                               <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/notice/list.do','M030100')" data-bs-toggle="" data-i18n="Leaflet Maps"><i data-feather="map"></i><span data-i18n="Leaflet Maps">독서내역 기반 추천</span></a> --%>
<!--                             </li>                           -->
                        <%-- 	</sec> --%>
                        </ul>
                    </li>
                   
                   <li class="dropdown nav-item" data-menu="dropdown"><a class="dropdown-toggle nav-link d-flex align-items-center" href="#" data-bs-toggle="dropdown"><i data-feather="map-pin" style="color: fuchsia"></i><span data-i18n="Charts &amp; Maps">시설 공간</span></a>
                        <ul class="dropdown-menu" data-bs-popper="none">
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/facilitySpace/meetingRoom.do','M060300')" data-bs-toggle="" data-i18n="Leaflet Maps"><i data-feather='edit-2' style="color: deepskyblue"></i><span data-i18n="Leaflet Maps">회의실</span></a>
                            </li>
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/facilitySpace/multiRoom.do','M060200')" data-bs-toggle="" data-i18n="Leaflet Maps"><i data-feather='video' style="color: darksalmon"></i><span data-i18n="Leaflet Maps">멀티 미디어실</span></a>
                            </li>
                             <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/facilitySpace/studyRoom.do','M060100')" data-bs-toggle="" data-i18n="Leaflet Maps"><i data-feather='edit-2' style="color: limegreen  "></i><span data-i18n="Leaflet Maps">독서실</span></a>
                            </li>
                        </ul>
                    </li>
                   
                   <c:choose>
                   <c:when test="${loginUser != null }">
                    <li class="dropdown nav-item" data-menu="dropdown"><a class="dropdown-toggle nav-link d-flex align-items-center" href="#" data-bs-toggle="dropdown"><i data-feather="user-check" style="color: lightcoral"></i><span data-i18n="Misc">My Library</span></a>
                        <ul class="dropdown-menu" data-bs-popper="none">
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center"  onclick="goPage('${webPath}/main/myInfo/bookCart.do','M050210')" data-bs-toggle="" data-i18n="Documentation" target="_blank"><i data-feather="star" style="color: orange"></i><span data-i18n="Pricing" >나의 장바구니</span></a>
                            </li>
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center"  onclick="goPage('${webPath}/main/myInfo/mySmartLib.do','M050100')" data-bs-toggle="" data-i18n="Documentation" target="_blank"><i data-feather="home" style="color: saddlebrown"></i><span data-i18n="Documentation"  name="loginChk">나의 스마트 도서관</span></a>
                            </li>
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/myInfo/myPage.do','M050200')" data-bs-toggle="" data-i18n="Raise Support" target="_blank"><i data-feather="twitch" style="color: yellowgreen"></i><span data-i18n="Raise Support"  name="loginChk">나의 정보</span></a>
                            </li>
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="goPage('${webPath}/main/myBook/rentList.do','M050301')" data-bs-toggle="" data-i18n="Raise Support" target="_blank"><i data-feather="book-open" style="color: dodgerblue"></i><span data-i18n="Raise Support">나의 도서 정보</span></a>
                            </li>                            
                        </ul>
                    </li>
                   </c:when>
                   <c:when test="${loginUser eq null }">
                    <li class="dropdown nav-item" data-menu="dropdown"><a class="dropdown-toggle nav-link d-flex align-items-center" href="#" data-bs-toggle="dropdown"><i data-feather="user-check" style="color: lightcoral"></i><span data-i18n="Misc">My Library</span></a>
                        <ul class="dropdown-menu" data-bs-popper="none">
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center"  onclick="doAlert();" data-bs-toggle="" data-i18n="Documentation" target="_blank"><i data-feather="star" style="color: orange"></i><span data-i18n="Pricing" >나의 장바구니</span></a>
                            </li>
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center"  onclick="doAlert();" data-bs-toggle="" data-i18n="Documentation" target="_blank"><i data-feather="home" style="color: saddlebrown"></i><span data-i18n="Documentation"  name="loginChk">나의 스마트 도서관</span></a>
                            </li>
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="doAlert();" data-bs-toggle="" data-i18n="Raise Support" target="_blank"><i data-feather="twitch" style="color: yellowgreen"></i><span data-i18n="Raise Support"  name="loginChk">나의 정보</span></a>
                            </li>
                            <li data-menu=""><a class="dropdown-item d-flex align-items-center" onclick="doAlert();" data-bs-toggle="" data-i18n="Raise Support" target="_blank"><i data-feather="book-open" style="color: dodgerblue"></i><span data-i18n="Raise Support">나의 도서 정보</span></a>
                            </li>                            
                        </ul>
                    </li>
                   </c:when>
                   </c:choose>
                </ul>
            </div>
        </div>
    </div>
    <!-- END: Main Menu-->
	</div>
</nav>

<div class="container-fluid">
	<div class="readitmenu">
		<div class="row align-items-start" style="height:100px">
			<div class="col">&nbsp;</div>
		</div>
		<div class="row align-items-center" style="height:100px">
			<div class="col">&nbsp;</div>
		</div>
		<div class="row">
			<div class="col" style="width:20%">&nbsp;</div>
		</div>
		<div class="row align-items-start" style="height:50px">
			<div class="col">&nbsp;</div>
		</div>
		<div class="row align-items-center" style="height:50px">
			<div class="col">&nbsp;</div>
		</div>
		<div class="row align-items-end">
		</div>
	</div>
    
     <div class="">
     	<iframe name="ifr"  id="ifr" src=""  frameborder="0"  scrolling="no" style="width:100%; padding-top:50px;"></iframe> 				
 	 </div>
<!-- overflow-x:hidden; scrolling="no" 아이프레임 가로스크롤 없애기 -->

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>
</div>
	 <!-- BEGIN: Footer-->
<footer class="footer footer-static footer-light">
 <p class="clearfix mb-0"><span class="float-md-start d-block d-md-inline-block mt-25">COPYRIGHT &copy; 2021<a class="ms-25" href="https://1.envato.market/pixinvent_portfolio" target="_blank">Pixinvent</a><span class="d-none d-sm-inline-block">, All rights Reserved</span></span><span class="float-md-end d-none d-md-block">Hand-crafted & Made with<i data-feather="heart"></i></span></p>
</footer>
<button class="btn btn-primary btn-icon scroll-top" type="button"><i data-feather="arrow-up"></i></button>
<!-- END: Footer-->

	<!-- jQuery -->
	<script src="${webPath}/resources/jquery/jquery.min.js" ></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
	
    <!-- BEGIN: Vendor JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/swiper.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/extensions/ext-component-swiper.js"></script>
   
   	<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/extensions/ext-component-sweet-alerts.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/sweetalert2.all.min.js"></script>
    <!-- END: Page JS-->
    
	<%@ include file="./index_js.jsp" %>    
	<%@ include file="../admin/common/index_js.jsp" %>    
	


<script>
        $(window).on('load', function() {
           
        	if (feather) {
                feather.replace({
                    width: 14,
                    height: 14
                });
            }
        })
        function parentsUrl(mCode){
        	var url = window.top.location.href;
        	console.log(url);
    	    var renewURL = url.substring(0, url.indexOf(".do")+3);
    	    
    	    if (mCode != 'M000000') {
    	        renewURL += "?mCode="+mCode;
    	    }
    	    
        	history.pushState(mCode, null, renewURL);
        }
  
        </script>
<script>
	function doAlert() {
		
			 Swal.fire({
                 icon: 'warning',
                 title: '북적북적 회원만 이용할 수 있습니다.',
                 text: '로그인이 필요합니다.'
              })
//               .then(function(){
//             	  parent.location.href = "http://localhost/readit/common/loginForm.do";
//               })
	
	}

</script>


<script>


document.addEventListener('DOMContentLoaded', () => {
	
	var webSocket = new WebSocket("ws://localhost${webPath}/readitMh");
	var v_id ='${loginUser.mem_id}';
	webSocket.onopen = function(e){
		if(v_id != null){
			webSocket.send("${loginUser.mem_id}");
			
		}else{
			return;
		}
	}
	webSocket.onmessage = function(e){
		var alarmIcon = document.querySelector("#alarmIcon");
		alarmIcon.style.display = 'inline';
		
		var totalCount = parseInt(e.data);
		alarmIcon.innerHTML = totalCount;
	}

}); 
</script>


<script>


function formatDate(date) {
    
    var d = new Date(date),
    
    month = '' + (d.getMonth() + 1) , 
    day = '' + d.getDate(), 
    year = d.getFullYear();
    
    if (month.length < 2) month = '0' + month; 
    if (day.length < 2) day = '0' + day; 
    
    return [year, month, day].join('-');
    
    }


var alarmIcon = document.querySelector('#navbarDropdownMenuLink1');
const Toast = Swal.mixin({
    toast: true,
    position: 'top-right',
    showConfirmButton: false,
    timer: 3000,
    timerProgressBar: true,
    didOpen: (toast) => {
        toast.addEventListener('mouseenter', Swal.stopTimer);
        toast.addEventListener('mouseleave', Swal.resumeTimer);
    }
})
function toast(){
	Toast.fire({
		    icon: 'success',
		    title: '새로운 알람이 있을때 마다 뜨게하기 위치 조정'
		});
}
// 	setInterval(function(){
// 			toast();
// 		}, 5000);

	alarmIcon.onclick = () => {
		var alarmIcon = document.querySelector("#alarmIcon");
		var today = document.querySelector("#today");
		today.innerHTML = formatDate(new Date());
	// 	alarmIcon.style.display = 'none';
		
		console.log("ajax이전")
		//getList
		var uchkDiv = $('#uchk');
		var chkDiv = $('#chk');
			$.ajax({
				type: 'post',
				url: '${webPath}/socket/commonMain',
				dataType: 'json',
				success: (rslt)=>{
					console.log("rslt",rslt);
					for(var i=0; i < rslt.alramList.length; i++ ){
						rslt.alramList[i].cdate = formatDate(rslt.alramList[i].cdate);
						console.log("time",formatDate(rslt.alramList[i].cdate))
					}
					
					printData(rslt.alramList,uchkDiv,$('#uchk-list-voltemplate'));
					var totalCount = rslt.alramList.length
					alarmIcon.innerHTML = totalCount;
					document.querySelector("#totalCount").innerHTML = ` 총 알림 갯수 ( `+totalCount+`개) `;
		// 			if(rslt.uchkList.length == 0){
		// 				var alarmIcon = document.querySelector("#alarmIcon");
		// 				alarmIcon.style.display = 'none';
		// 			}
				},
				error: (error)=>{
					AjaxErrorSecurityRedirectHandler(error.status);
				}
			});
}
	
	function alramAjax(){
		
	}
		
	//check update
// 	setTimeout(function(){
// 		$.ajax({
// 			method: 'put',
// 			url: '${webPath}/alarm/updateCheck',
// 			dataType:'text',
// 			success: (rslt) => {
// 				console.log(rslt);
// 				var uchk = document.querySelectorAll('.uchk');
// 				for(var i = 0; i<uchk.length; i++){
// 					uchk[i].style.backgroundColor = '#ececec';
// 				}
				
// 				var alarmIcon = document.querySelector("#alarmIcon");
// 				alarmIcon.style.display = 'none';
				
// 			},
// 			error: (error) => {
// 				AjaxErrorSecurityRedirectHandler(error.status);
// 			}
			
// 		});
// 	}, 1000);
	

</script>


</body>
<!-- END: Body-->

</html>