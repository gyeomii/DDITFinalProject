<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<c:set var="adminList" value="${dataMap.adminList }"/>
<c:set var="notYetAdminList" value="${dataMap.notApproveList }"/>

<c:set var="pageMaker" value="${dataMap.pageMaker }"/>
<c:set var="cri" value="${pageMaker.cri }"/>

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
    <title>Roles - Vuexy - Bootstrap HTML admin template</title>
    <link rel="apple-touch-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

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

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-validation.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu-modern  navbar-floating footer-static  " data-open="click" data-menu="vertical-menu-modern" data-col="">




    <!-- BEGIN: Content-->
        <div class="content-wrapper container-xxl p-0">
            <div class="content-header row">
            </div>
            <div class="content-body">
<!--                 <h3>여기는 뭘?</h3> -->
<!--                 <p class="mb-2"> -->
<!--                     아아아아아아 <br /> -->
<!--                     아아아아아아 -->
<!--                 </p> -->

                <!-- Role cards -->
               <div class="row" style="margin-top: 20px;">
                    <div class="col-xl-6 col-lg-6 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                     <span>등록된 관리자</span>
<!--                                     <ul class="list-unstyled d-flex align-items-center avatar-group mb-0"> -->
<!--                                         <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Vinnie Mostowy" class="avatar avatar-sm pull-up"> -->
<%--                                             <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/2.png" alt="Avatar" /> --%>
<!--                                         </li> -->
<!--                                         <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Allen Rieske" class="avatar avatar-sm pull-up"> -->
<%--                                             <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/12.png" alt="Avatar" /> --%>
<!--                                         </li> -->
<!--                                         <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Julee Rossignol" class="avatar avatar-sm pull-up"> -->
<%--                                             <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/6.png" alt="Avatar" /> --%>
<!--                                         </li> -->
<!--                                         <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Kaith D'souza" class="avatar avatar-sm pull-up"> -->
<%--                                             <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/11.png" alt="Avatar" /> --%>
<!--                                         </li> -->
<!--                                         <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Kaith D'souza" class="avatar avatar-sm pull-up"> -->
<%--                                             <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/11.png" alt="Avatar" /> --%>
<!--                                         </li> -->
<!--                                         <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Kaith D'souza" class="avatar avatar-sm pull-up"> -->
<%--                                             <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/11.png" alt="Avatar" /> --%>
<!--                                         </li> -->
<!--                                     </ul> -->
                                </div>
                                <div class="d-flex justify-content-between align-items-end mt-1 pt-25">
                                    <div class="role-heading">
                                        <h4 class="fw-bolder"><c:out value="${adminList.size() }"></c:out>명</h4>
<!--                                         <a href="javascript:;" class="role-edit-modal" data-bs-toggle="modal" data-bs-target="#addRoleModal"> -->
<!--                                             <small class="fw-bolder">Edit Role</small> -->
<!--                                         </a> -->
                                    </div>
                                    <a href="javascript:void(0);" class="text-body"><i data-feather="copy" class="font-medium-5"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                     <span>관리자 승인 대기 인원</span>
<!--                                     <ul class="list-unstyled d-flex align-items-center avatar-group mb-0"> -->
<!--                                         <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Jimmy Ressula" class="avatar avatar-sm pull-up"> -->
<%--                                             <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/4.png" alt="Avatar" /> --%>
<!--                                         </li> -->
<!--                                         <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="John Doe" class="avatar avatar-sm pull-up"> -->
<%--                                             <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/1.png" alt="Avatar" /> --%>
<!--                                         </li> -->
<!--                                         <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Kristi Lawker" class="avatar avatar-sm pull-up"> -->
<%--                                             <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/2.png" alt="Avatar" /> --%>
<!--                                         </li> -->
<!--                                         <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Kaith D'souza" class="avatar avatar-sm pull-up"> -->
<%--                                             <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/5.png" alt="Avatar" /> --%>
<!--                                         </li> -->
<!--                                         <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Danny Paul" class="avatar avatar-sm pull-up"> -->
<%--                                             <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/7.png" alt="Avatar" /> --%>
<!--                                         </li> -->
<!--                                     </ul> -->
                                </div>
                                <div class="d-flex justify-content-between align-items-end mt-1 pt-25">
                                    <div class="role-heading">
                                        <h4 class="fw-bolder"><c:out value="${notYetAdminList.size() }"></c:out>명</h4>
<!--                                         <a href="javascript:;" class="role-edit-modal" data-bs-toggle="modal" data-bs-target="#addRoleModal"> -->
<!--                                             <small class="fw-bolder">Edit Role</small> -->
<!--                                         </a> -->
                                    </div>
                                    <a href="javascript:void(0);" class="text-body"><i data-feather="copy" class="font-medium-5"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/ Role cards -->
               	 <ul class="nav nav-pills mb-2">
                     <li class="nav-item">
                         <a class="nav-link " onclick="goPage('<%=request.getContextPath() %>/admin/userManage/adminList.do','M910100','ifr');">
                             <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user font-medium-3 me-50"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                             <span class="fw-bold">관리자 조회</span></a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link " onclick="goPage('<%=request.getContextPath() %>/admin/userManage/adminApprove.do','M910102','ifr');">
                             <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-lock font-medium-3 me-50"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>
                             <span class="fw-bold">회원가입 승인</span>
                         </a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link active" onclick="goPage('<%=request.getContextPath() %>/admin/userManage/adminFinger.do','M910103','ifr');">
                             <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bookmark font-medium-3 me-50"><path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
                             <span class="fw-bold">지문 관리</span>
                         </a>
                     </li>
                  </ul>
				
<!--                 <h3 class="mt-50">관리자 지문 조회/등록</h3> -->
<!--                 <p class="mb-2">아무아무말말말</p> -->
                <!-- table -->
			<div class="card">
				<div class="table-responsive">
					<div id="DataTables_Table_0_wrapper"
						class="dataTables_wrapper dt-bootstrap5 no-footer">
						<div class="d-flex justify-content-between align-items-center header-actions mx-2 row mt-50 mb-1">
							<div class="d-flex align-items-center " style="margin-top: 3px;">
				                <div class="avatar avatar-tag bg-light-primary me-1">
				                	<div>
										<i data-feather='folder-plus' style="margin-top: -2px;"></i>
				                	</div>
				                </div>
				                <div>
				                    <h4 class="mt-50">관리자 지문 조회/등록</h4>
				                </div>
			            	</div>
						</div>
						<table class="table table-bordered">
							<thead style="text-align: center;">
								<tr>
									<th>관리자 이름</th>
									<th>부서</th>
									<th>직책</th>
<!-- 									<th>등록일</th> -->
									<th>연락처</th>
									<th>구역</th>
									<th>지문</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${adminList }" var="admin">
								<tr>
									<td><i data-feather='user-check'></i> <span class="fw-bold">${admin.mem_name }</span></td>
									<td>${admin.dp_name }</td>
									<td style="text-align: center;"><span >${admin.ad_position }</span></td>
<!-- 									<td><span -->
<%-- 										class="badge rounded-pill badge-light-primary me-1">${admin.ad_position }</span></td> --%>
									<td><span >${admin.mem_phone }</span></td>
									<td>
										<c:choose>
											<c:when test="${admin.fingerprint eq null }">
												<span >미지정</span>
											</c:when>
											<c:otherwise>
												<span >구역1(고서/귀중도서)</span>
											</c:otherwise>
										</c:choose>
									</td>
									
									<td class="text-center">
										<c:choose>
											<c:when test="${admin.fingerprint eq null }">
													<span class="badge rounded-pill badge-light-danger me-1">미등록</span>
		<!-- 												<button class="btn-sm btn-flat-success round" onclick="alert('추가하기 새창')">추가</button> -->
													<button type="button" class="btn btn-icon btn-warning waves-effect waves-float waves-light" 
															onclick="OpenWindow('adminFinger/detailForRegist.do?from=adminFinger&mem_id=${admin.mem_id}','관리자지문등록',500,840);">
		                                           		<i data-feather='plus'></i>
		                                       		</button>
											</c:when>
											
											<c:otherwise>
												<span class="badge rounded-pill badge-light-primary me-1">등록완료</span>
													<button type="button" class="btn btn-icon btn-success waves-effect waves-float waves-light" style="margin-left: -12px;">
		                                           		<i data-feather='check'></i>
		                                       		</button>
											</c:otherwise>
											
										</c:choose>
									</td>
								</tr>
                              </c:forEach>
                             </tbody>
                         </table>
                     </div>
                                        <!-- Permission table -->
                                    </div>
                                <!--/ Add role form -->
                            </div>
                            
                        </div>
                    </div>
                <!--/ Add Role Modal -->

    <!-- END: Content-->

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>


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
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/modal-add-role.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-access-roles.js"></script>
    <!-- END: Page JS-->
	<%@ include file="../../common/index_js.jsp" %>  
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
    <script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
</body>
<!-- END: Body-->

</html>