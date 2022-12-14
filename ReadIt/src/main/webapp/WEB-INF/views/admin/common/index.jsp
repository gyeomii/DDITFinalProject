<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>    

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
    <title>북적북적도서관 :: 관리자 페이지</title>
    <link rel="apple-touch-icon" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/tables/datatable/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/tables/datatable/extensions/dataTables.checkboxes.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/tables/datatable/responsive.bootstrap5.min.css">
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
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/app-invoice-list.css">
    <!-- END: Page CSS-->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<style>
body{
	font-family: 'Noto Sans KR', sans-serif;
}

</style>
<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu-modern  navbar-floating footer-static " style="font-family: 'Noto Sans KR', sans-serif; " data-open="click" data-menu="vertical-menu-modern" data-col="">

    <!-- BEGIN: Header-->
    <nav class="header-navbar navbar navbar-expand-lg align-items-center floating-nav navbar-light navbar-shadow container-xxl" style="font-family: 'Noto Sans KR', sans-serif;">
        <div class="navbar-container d-flex content">
            <div class="bookmark-wrapper d-flex align-items-center">
                <ul class="nav navbar-nav d-xl-none">
                    <li class="nav-item"><a class="nav-link menu-toggle" href="#"><i class="ficon" data-feather="menu"></i></a></li>
                </ul>
                <ul class="nav navbar-nav bookmark-icons">
                    <li class="nav-item d-none d-lg-block"><a class="nav-link" href="/readit/index.do" data-bs-toggle="tooltip" data-bs-placement="bottom" title="홈페이지"><i class="ficon" data-feather="home"></i></a></li>
                    <li class="nav-item d-none d-lg-block"  onclick="goPage('${webPath}/admin/mypage/libPlan.do','M950400')"	><a class="nav-link" href="" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Calendar"><i class="ficon" data-feather="calendar"></i></a></li>
                    <li class="nav-item d-none d-lg-block"  onclick="goPage('${webPath}/admin/mypage/toDoList.do','M950200')" ><a class="nav-link" href="" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Todo"><i class="ficon" data-feather="check-square"></i></a></li>
                </ul>
                <ul class="nav navbar-nav">
                    <li class="nav-item d-none d-lg-block"><a class="nav-link bookmark-star"><i class="ficon text-warning" data-feather="star"></i></a>
                        <div class="bookmark-input search-input">
                            <div class="bookmark-input-icon"><i data-feather="search"></i></div>
                            <input class="form-control input" type="text" placeholder="Bookmark" tabindex="0" data-search="search">
                            <ul class="search-list search-list-bookmark"></ul>
                        </div>
                    </li>
                </ul>
            </div>
                  <div class="demo-inline-spacing" style="margin-left: 60px;">
                           <button type="button" class="btn btn-flat-success" style="padding-bottom: 0px;padding-top: 0px;margin-top: 0px;">
                               <i data-feather="check" class="me-25"></i>
                               <span style="font-weight: bold" onclick="OpenWindow('${webPath}/admin/quickRentAndReturn/rent.do','도서 대출',1500,800);">도서 대출/반납</span>
                           </button>
                           <button type="button" class="btn btn-flat-success" style="padding-bottom: 0px;padding-top: 0px;margin-top: 0px;">
                               <i data-feather="check" class="me-25"></i>
                                <span style="font-weight: bold"  onclick="OpenWindow('${webPath}/admin/driveThrough.do','도서드라이브스루',1000,850);">드라이브스루</span>
                                
                           </button>
<!--                   		   <button type="button" class="btn btn-flat-success" style="padding-bottom: 0px;padding-top: 0px;margin-top: 0px;"> -->
<!--                                <i data-feather="check" class="me-25"></i> -->
<!--                                <span style="font-weight: bold">신규도서등록</span> -->
<!--                            </button> -->
                              <button type="button" class="btn btn-flat-success" style="padding-bottom: 0px;padding-top: 0px;margin-top: 0px;">
                               <i data-feather="check" class="me-25"></i>
                               <span style="font-weight: bold" onclick="OpenWindow('${webPath}/admin/quickNewBook.do','도서입고관리',1500,750);">도서입고관리</span>
                               </button>
              	</div>
                    
                    
            <ul class="nav navbar-nav align-items-center ms-auto">
                <li class="nav-item dropdown dropdown-notification me-25" onclick=""><a class="nav-link" href="#" data-bs-toggle="dropdown" id="navbarDropdownMenuLink1"><i class="ficon" data-feather="bell"></i>
                <span class="badge rounded-pill bg-danger badge-up" id="alarmIcon" style="display:none;">5</span></a>
                    <ul class="dropdown-menu dropdown-menu-media dropdown-menu-end">
                        <li class="dropdown-menu-header">
                            <div class="dropdown-header d-flex">
                                <h4 class="notification-title mb-0 me-auto">Notifications</h4>
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
                <li class="nav-item dropdown dropdown-user">
                	<a class="nav-link dropdown-toggle dropdown-user-link" id="dropdown-user" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <div class="user-nav d-sm-flex d-none">
                        	<span class="user-name fw-bolder">${loginUser.mem_name }</span>
                        	<span class="badge rounded-pill badge-light-success">Login ID : ${loginUser.mem_id }</span>
                        </div>
                        <span class="avatar"><img class="round" src="${webPath}/${loginUser.mem_img}" alt="avatar" height="40" width="40"><span class="avatar-status-online"></span></span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdown-user">
                    	<a class="dropdown-item" href="<%=request.getContextPath() %>/index.do"><i class="me-50" data-feather="shuffle"></i> Main Page</a>
                        <a class="dropdown-item" href="<%=request.getContextPath() %>/common/logout.do"><i class="me-50" data-feather="log-out"></i> Logout</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
    <!-- END: Header-->


    <!-- BEGIN: Main Menu-->
    <div class="main-menu menu-fixed menu-light menu-accordion menu-shadow" data-scroll-to-active="true" style="font-family: 'Noto Sans KR', sans-serif;">
        <div class="navbar-header">
            <ul class="nav navbar-nav flex-row">
                <li class="nav-item me-auto"><a class="navbar-brand" href="<%=request.getContextPath() %>/admin/index.do"><span class="brand-logo">
                            <img src="<%=request.getContextPath() %>/resources/images/1.jpg" alt="logo Picture"></span>
                        <h2 class="brand-text">북적북적</h2>
                    </a>
                 </li>
<!--                 <li class="nav-item nav-toggle"><a class="nav-link modern-nav-toggle pe-0" data-bs-toggle="collapse"><i class="d-block d-xl-none text-primary toggle-icon font-medium-4" data-feather="x"></i><i class="d-none d-xl-block collapse-toggle-icon font-medium-4  text-primary" data-feather="disc" data-ticon="disc"></i></a></li> -->
            </ul>
        </div>
        <div class="shadow-bottom"></div>
        <div class="main-menu-content" style="font-family: 'Noto Sans KR', sans-serif;">
            <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation" style="font-family: 'Noto Sans KR', sans-serif;">
            	                 <li class=" nav-item">
               		 <div class="card card-profile" style="margin-top: 100px; font-family: 'Noto Sans KR', sans-serif;">
                            <div class="card-body">
                                <div class="profile-image-wrapper">
                                    <div class="profile-image">
                                        <div class="avatar">
                                            <img src="${webPath }/${loginUser.mem_img }" alt="Profile Picture">
                                        </div>
                                    </div>
                                </div>
                                <h3>${loginUser.mem_name }</h3>
                                <h6 class="text-muted">${loginUser.mem_email }</h6>
                                <span class="badge badge-light-success profile-badge">관리자 접속중</span>
                                <hr class="mb-2">
                                <div class="d-flex justify-content-between align-items-center">
                                <div style="margin-left: -5px;">
                                	하단의 메뉴를 통해 이용해주세요.
                                </div>
                                </div>
                            </div>
                        </div>
                </li>
                <li class=" navigation-header"><span data-i18n="Apps &amp; Pages">Menu</span><i data-feather="more-horizontal"></i>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><i data-feather="file-text"></i><span class="menu-title text-truncate" data-i18n="Invoice">회원 관리</span></a>
                    <ul class="menu-content">
<!--                     <li class="active"> 이거 하면 항상 켜있는 상태로 유지-->
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/admin/userManage/adminList.do','M910100')"><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="List">관리자 관리</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/admin/userManage/list.do','M910200')"><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="Preview">일반회원 관리</span></a>
                        </li>
                    </ul>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><i data-feather="shield"></i><span class="menu-title text-truncate" data-i18n="Roles &amp; Permission">도서관리</span></a>
                    <ul class="menu-content">
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/admin/bookManage/status.do','M920100')" ><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="Roles">도서 분류</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/admin/bookManage/best.do','M920200')" ><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="Permission">추천 도서</span></a>
                        </li>
                       <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/admin/bookManage/rent.do','M920300')" ><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="Permission">대출 및 반납</span></a>
                        </li>
<%--                         <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/admin/bookManage/location.do','M920401')"><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="Permission">지정 위치</span></a> --%>
<!--                         </li> -->
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/admin/bookManage/stupid.do','M920500')"><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="Permission">엉뚱 도서</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/admin/bookManage/donation.do','M920601')"><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="Permission">기타 관리</span></a>
                        </li>
                    </ul>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><i data-feather="shopping-cart"></i><span class="menu-title text-truncate" data-i18n="eCommerce">시설관리</span></a>
                    <ul class="menu-content">
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/admin/facilityManage/restrictedArea.do','M930100')" ><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="Shop">출입 제한 구역</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/admin/facilityManage/studyRoom.do','M930200')" ><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="Details">독서실</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/admin/facilityManage/multimediaRoom.do','M930300')" ><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="Wish List">멀티미디어실</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/admin/facilityManage/list.do','M930400')" ><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="Checkout">회의실</span></a>
                        </li>
                    </ul>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><i data-feather="user"></i><span class="menu-title text-truncate" data-i18n="User">게시판</span></a>
                    <ul class="menu-content">
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/main/board/notice/list.do','M030100')" ><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="List">공지사항</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/admin/board/wishbook.do','M940200')" ><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="View">비치희망도서</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/admin/board/qna.do','M940300')" ><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="View">1:1문의</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/main/board/lost/list.do','M030300')"><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="View">분실물</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/main/board/faq/faqList.do','M030200')" ><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="View">자주 묻는 질문</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/main/board/volBoard/list.do','M030500')"><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="View">봉사자</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/main/board/event/list.do','M030400')"><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="View">행사/이벤트</span></a>
                        </li>
                    </ul>
                </li>
                <li class=" nav-item"><a class="d-flex align-items-center" href="#"><i data-feather="file-text"></i><span class="menu-title text-truncate" data-i18n="Pages">마이페이지</span></a>
                    <ul class="menu-content">
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/admin/mypage/prevMyInfo.do','M950100')" ><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="Account Settings">개인정보</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/admin/mypage/toDoList.do','M950200')"><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="Profile">To Do List</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/admin/mypage/toDoList.do','M950200')"><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="FAQ">알림내역</span></a>
                        </li>
                        <li><a class="d-flex align-items-center" onclick="goPage('${webPath}/admin/mypage/libPlan.do','M950400')"><i data-feather="circle"></i><span class="menu-item text-truncate" data-i18n="Knowledge Base">도서관 일정</span></a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- END: Main Menu-->

    <!-- BEGIN: Content-->
    <div class="" style="padding-top: 88px; padding-left: 300px; padding-right: 30px; overflow-y: auto; overflow-x:hidden;">
     	<iframe name="ifr" id="ifr" src="" frameborder="0"  style="width:100%;height:85vh; overflow-x:hidden"></iframe> 				
 	</div>

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>


    <!-- BEGIN: Footer-->
    <footer class="footer footer-static footer-light">
        <p class="clearfix mb-0"><span class="float-md-start d-block d-md-inline-block mt-25">COPYRIGHT &copy; 2021<a class="ms-25" href="https://1.envato.market/pixinvent_portfolio" target="_blank">Pixinvent</a><span class="d-none d-sm-inline-block">, All rights Reserved</span></span><span class="float-md-end d-none d-md-block">Hand-crafted & Made with<i data-feather="heart"></i></span></p>
    </footer>
    <button class="btn btn-primary btn-icon scroll-top" type="button"><i data-feather="arrow-up"></i></button>
    <!-- END: Footer-->

    <!-- BEGIN: Vendor JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

	<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
	
    <!-- BEGIN: Page Vendor JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/moment.min.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/datatables.checkboxes.min.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/responsive.bootstrap5.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-invoice-list.js"></script>
    <!-- END: Page JS-->
    <script src="${webPath}/resources/js/common.js"></script>
    <%@ include file="./index_js.jsp" %>

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
    	    
    	    if (mCode != 'M900000') {
    	        renewURL += "?mCode="+mCode;
    	    }
    	    
        	history.pushState(mCode, null, renewURL);
        }
    </script>
<script>

document.addEventListener('DOMContentLoaded', () => {
	var webSocket = new WebSocket("ws://localhost${webPath}/readit");
	   
	webSocket.onopen = function(e){
		webSocket.send("${loginUser.mem_id}");
	}
	webSocket.onmessage = function(e){
// 		console.log(e.data);
		var alarmIcon = document.querySelector("#alarmIcon");
		alarmIcon.style.display = 'inline';
	}
// 	setInterval(function() {
// 		// 3초마다 클라이언트로 메시지 전송
// 		webSocket.send("${loginUser.mem_id}");
// 	}, 3000);
	
	

}); 
</script>


<script>
function alramCount(){
	var alarmIcon = document.querySelector("#alarmIcon");
// 	alarmIcon.style.display = 'none';
	
	console.log("ajax이전")
	//getList
	var uchkDiv = $('#uchk');
	var chkDiv = $('#chk');
	$.ajax({
		type: 'post',
		url: '${webPath}/socket/main',
		dataType: 'json',
		success: (rslt)=>{
			console.log("rslt",rslt);
			
			var totalCount = rslt.alramList.length
			alarmIcon.innerHTML = totalCount;
			
		},
		error: (error)=>{
			AjaxErrorSecurityRedirectHandler(error.status);
		}
	});
}
// 알람 카운트 화면에서 바로 실행
alramCount();

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
    timer: 1000,
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
// push 알림창 뜨게 하는거
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
				url: '${webPath}/socket/main',
				dataType: 'json',
				success: (rslt)=>{
					console.log("rslt",rslt);
					for(var i=0; i < rslt.alramList.length; i++ ){
						rslt.alramList[i].cdate = formatDate(rslt.alramList[i].cdate);
						console.log("time",formatDate(rslt.alramList[i].cdate))
					}
					
					printData(rslt.alramList,uchkDiv,$('#uchk-list-template'));
					
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
<%-- 			url: '${webPath}/alarm/updateCheck', --%>
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