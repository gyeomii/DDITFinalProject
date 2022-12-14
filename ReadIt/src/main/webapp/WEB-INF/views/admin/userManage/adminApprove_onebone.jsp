<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%-- <c:set var="adminList" value="${dataMap.adminList }"/> --%>
<%-- <c:set var="pageMaker" value="${dataMap.pageMaker }"/> --%>
<%-- <c:set var="cri" value="${pageMaker.cri }"/> --%>

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
<!--                 <h3>????????? ????</h3> -->
<!--                 <p class="mb-2"> -->
<!--                     ?????????????????? <br /> -->
<!--                     ?????????????????? -->
<!--                 </p> -->

                <!-- Role cards -->
                <div class="row">
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <span>6???</span>
                                    <ul class="list-unstyled d-flex align-items-center avatar-group mb-0">
                                        <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Vinnie Mostowy" class="avatar avatar-sm pull-up">
                                            <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/2.png" alt="Avatar" />
                                        </li>
                                        <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Allen Rieske" class="avatar avatar-sm pull-up">
                                            <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/12.png" alt="Avatar" />
                                        </li>
                                        <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Julee Rossignol" class="avatar avatar-sm pull-up">
                                            <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/6.png" alt="Avatar" />
                                        </li>
                                        <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Kaith D'souza" class="avatar avatar-sm pull-up">
                                            <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/11.png" alt="Avatar" />
                                        </li>
                                        <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Kaith D'souza" class="avatar avatar-sm pull-up">
                                            <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/11.png" alt="Avatar" />
                                        </li>
                                        <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Kaith D'souza" class="avatar avatar-sm pull-up">
                                            <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/11.png" alt="Avatar" />
                                        </li>
                                    </ul>
                                </div>
                                <div class="d-flex justify-content-between align-items-end mt-1 pt-25">
                                    <div class="role-heading">
                                        <h4 class="fw-bolder">?????? ?????????</h4>
                                        <a href="javascript:;" class="role-edit-modal" data-bs-toggle="modal" data-bs-target="#addRoleModal">
                                            <small class="fw-bolder">Edit Role</small>
                                        </a>
                                    </div>
                                    <a href="javascript:void(0);" class="text-body"><i data-feather="copy" class="font-medium-5"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <span>Total 7 users</span>
                                    <ul class="list-unstyled d-flex align-items-center avatar-group mb-0">
                                        <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Jimmy Ressula" class="avatar avatar-sm pull-up">
                                            <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/4.png" alt="Avatar" />
                                        </li>
                                        <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="John Doe" class="avatar avatar-sm pull-up">
                                            <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/1.png" alt="Avatar" />
                                        </li>
                                        <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Kristi Lawker" class="avatar avatar-sm pull-up">
                                            <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/2.png" alt="Avatar" />
                                        </li>
                                        <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Kaith D'souza" class="avatar avatar-sm pull-up">
                                            <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/5.png" alt="Avatar" />
                                        </li>
                                        <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Danny Paul" class="avatar avatar-sm pull-up">
                                            <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/7.png" alt="Avatar" />
                                        </li>
                                    </ul>
                                </div>
                                <div class="d-flex justify-content-between align-items-end mt-1 pt-25">
                                    <div class="role-heading">
                                        <h4 class="fw-bolder">?????? ?????????</h4>
                                        <a href="javascript:;" class="role-edit-modal" data-bs-toggle="modal" data-bs-target="#addRoleModal">
                                            <small class="fw-bolder">Edit Role</small>
                                        </a>
                                    </div>
                                    <a href="javascript:void(0);" class="text-body"><i data-feather="copy" class="font-medium-5"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <span>Total 5 users</span>
                                    <ul class="list-unstyled d-flex align-items-center avatar-group mb-0">
                                        <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Andrew Tye" class="avatar avatar-sm pull-up">
                                            <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/6.png" alt="Avatar" />
                                        </li>
                                        <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Rishi Swaat" class="avatar avatar-sm pull-up">
                                            <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/9.png" alt="Avatar" />
                                        </li>
                                        <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Rossie Kim" class="avatar avatar-sm pull-up">
                                            <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/12.png" alt="Avatar" />
                                        </li>
                                        <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Kim Merchent" class="avatar avatar-sm pull-up">
                                            <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/10.png" alt="Avatar" />
                                        </li>
                                        <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" title="Sam D'souza" class="avatar avatar-sm pull-up">
                                            <img class="rounded-circle" src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/avatars/8.png" alt="Avatar" />
                                        </li>
                                    </ul>
                                </div>
                                <div class="d-flex justify-content-between align-items-end mt-1 pt-25">
                                    <div class="role-heading">
                                        <h4 class="fw-bolder">?????? ?????????</h4>
                                        <a href="javascript:;" class="role-edit-modal" data-bs-toggle="modal" data-bs-target="#addRoleModal">
                                            <small class="fw-bolder">Edit Role</small>
                                        </a>
                                    </div>
                                    <a href="javascript:void(0);" class="text-body"><i data-feather="copy" class="font-medium-5"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
<!--                     <div class="col-xl-4 col-lg-6 col-md-6"> -->
<!--                         <div class="card"> -->
<!--                             <div class="row"> -->
<!--                                 <div class="col-sm-5"> -->
<!--                                     <div class="d-flex align-items-end justify-content-center h-100"> -->
<%--                                         <img src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/illustration/faq-illustrations.svg" class="img-fluid mt-2" alt="Image" width="85" /> --%>
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <div class="col-sm-7"> -->
<!--                                     <div class="card-body text-sm-end text-center ps-sm-0"> -->
<!--                                         <a href="javascript:void(0)" data-bs-target="#addRoleModal" data-bs-toggle="modal" class="stretched-link text-nowrap add-new-role"> -->
<!--                                             <span class="btn btn-primary mb-1">Add New Role</span> -->
<!--                                         </a> -->
<!--                                         <p class="mb-0">Add role, if it does not exist</p> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
                </div>
                <!--/ Role cards -->
               	 <ul class="nav nav-pills mb-2">
                     <li class="nav-item">
                         <a class="nav-link " onclick="goPage('<%=request.getContextPath() %>/admin/userManage/adminList.do','M910100','ifr');">
                             <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user font-medium-3 me-50"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                             <span class="fw-bold">????????? ??????</span></a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link active" onclick="goPage('<%=request.getContextPath() %>/admin/userManage/adminApprove.do','M910102','ifr');">
                             <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-lock font-medium-3 me-50"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>
                             <span class="fw-bold">???????????? ??????</span>
                         </a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" onclick="goPage('<%=request.getContextPath() %>/admin/userManage/adminFinger.do','M910103','ifr');">
                             <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bookmark font-medium-3 me-50"><path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
                             <span class="fw-bold">?????? ??????</span>
                         </a>
                     </li>
                  </ul>

                <h3 class="mt-50">???????????? ?????? ??????</h3>
                <p class="mb-2">?????????????????????</p>
                <!-- table -->
			<div class="card">
				<div class="table-responsive">
					<div id="DataTables_Table_0_wrapper"
						class="dataTables_wrapper dt-bootstrap5 no-footer">
						<div class="d-flex justify-content-between align-items-center header-actions mx-2 row mt-50 mb-1">
							<div class="col-sm-12 col-md-4 col-lg-6">
								<div class="dataTables_length" id="DataTables_Table_0_length">
									<label>Show <select name="DataTables_Table_0_length" aria-controls="DataTables_Table_0" class="form-select">
									<option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label>
								</div>
							</div>
							<div class="col-sm-12 col-md-8 col-lg-6 ps-xl-75 ps-0">
								<div class="dt-action-buttons d-flex align-items-center justify-content-md-end justify-content-center flex-sm-nowrap flex-wrap">
									<div class="me-1">
										<div id="DataTables_Table_0_filter" class="dataTables_filter">
											<label>Search:<input type="search" class="form-control" placeholder="" aria-controls="DataTables_Table_0"></label>
										</div>
									</div>
									<div class="user_role mt-50 width-200"></div>
								</div>
							</div>
						</div>
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>??????</th>
									<th>?????? ?????????</th>
									<th>?????????</th>
									<th>?????????</th>
									<th>????????????</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${dataList}" var="adminList">
								<tr>
									<td><img src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/icons/angular.svg"
											class="me-75" height="20" width="20" alt="Angular"> 
										<span class="fw-bold">${adminList.mem_name}</span></td>
									<td>${adminList.mem_id}</td>
									<td><fmt:formatDate value="${adminList.mem_joinDate}" pattern="yyyy-MM-dd"/></td>
									<td>${adminList.mem_phone}</td>
									<c:choose>
										<c:when test="${adminList.joincheck eq 0 }">
											<td>
												<span class="badge badge-light-info" onclick="alert('dd');"><a>??????</a></span>
												<span class="badge badge-light-danger" onclick="alert('dd');"><a>??????</a></span>
											</td>
										</c:when>
										<c:when test="${adminList.joincheck eq 1 }">
										<td>
											<span class="badge badge-light-info">????????????</span>
										</td>
										</c:when>
									</c:choose>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- table -->
                <!-- Add Role Modal -->
                <div class="modal fade" id="addRoleModal" tabindex="-1" aria-hidden="true">
                    <div class="modal-dialog modal-lg modal-dialog-centered modal-add-new-role">
                        <div class="modal-content">
                            <div class="modal-header bg-transparent">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body px-5 pb-5">
                                <div class="text-center mb-4">
                                    <h1 class="role-title">Add New Role</h1>
                                    <p>Set role permissions</p>
                                </div>
                                <!-- Add role form -->
                                <form id="addRoleForm" class="row" onsubmit="return false">
                                    <div class="col-12">
                                        <label class="form-label" for="modalRoleName">Role Name</label>
                                        <input type="text" id="modalRoleName" name="modalRoleName" class="form-control" placeholder="Enter role name" tabindex="-1" data-msg="Please enter role name" />
                                    </div>
                                    <div class="col-12">
                                        <h4 class="mt-2 pt-50">Role Permissions</h4>
                                        <!-- Permission table -->
                                        <div class="table-responsive">
                                            <table class="table table-flush-spacing">
                                                <tbody>
                                                    <tr>
                                                        <td class="text-nowrap fw-bolder">
                                                            Administrator Access
                                                            <span data-bs-toggle="tooltip" data-bs-placement="top" title="Allows a full access to the system">
                                                                <i data-feather="info"></i>
                                                            </span>
                                                        </td>
                                                        <td>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" id="selectAll" />
                                                                <label class="form-check-label" for="selectAll"> Select All </label>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-nowrap fw-bolder">User Management</td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <div class="form-check me-3 me-lg-5">
                                                                    <input class="form-check-input" type="checkbox" id="userManagementRead" />
                                                                    <label class="form-check-label" for="userManagementRead"> Read </label>
                                                                </div>
                                                                <div class="form-check me-3 me-lg-5">
                                                                    <input class="form-check-input" type="checkbox" id="userManagementWrite" />
                                                                    <label class="form-check-label" for="userManagementWrite"> Write </label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="userManagementCreate" />
                                                                    <label class="form-check-label" for="userManagementCreate"> Create </label>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-nowrap fw-bolder">Content Management</td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <div class="form-check me-3 me-lg-5">
                                                                    <input class="form-check-input" type="checkbox" id="contentManagementRead" />
                                                                    <label class="form-check-label" for="contentManagementRead"> Read </label>
                                                                </div>
                                                                <div class="form-check me-3 me-lg-5">
                                                                    <input class="form-check-input" type="checkbox" id="contentManagementWrite" />
                                                                    <label class="form-check-label" for="contentManagementWrite"> Write </label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="contentManagementCreate" />
                                                                    <label class="form-check-label" for="contentManagementCreate"> Create </label>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-nowrap fw-bolder">Disputes Management</td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <div class="form-check me-3 me-lg-5">
                                                                    <input class="form-check-input" type="checkbox" id="dispManagementRead" />
                                                                    <label class="form-check-label" for="dispManagementRead"> Read </label>
                                                                </div>
                                                                <div class="form-check me-3 me-lg-5">
                                                                    <input class="form-check-input" type="checkbox" id="dispManagementWrite" />
                                                                    <label class="form-check-label" for="dispManagementWrite"> Write </label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="dispManagementCreate" />
                                                                    <label class="form-check-label" for="dispManagementCreate"> Create </label>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-nowrap fw-bolder">Database Management</td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <div class="form-check me-3 me-lg-5">
                                                                    <input class="form-check-input" type="checkbox" id="dbManagementRead" />
                                                                    <label class="form-check-label" for="dbManagementRead"> Read </label>
                                                                </div>
                                                                <div class="form-check me-3 me-lg-5">
                                                                    <input class="form-check-input" type="checkbox" id="dbManagementWrite" />
                                                                    <label class="form-check-label" for="dbManagementWrite"> Write </label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="dbManagementCreate" />
                                                                    <label class="form-check-label" for="dbManagementCreate"> Create </label>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-nowrap fw-bolder">Financial Management</td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <div class="form-check me-3 me-lg-5">
                                                                    <input class="form-check-input" type="checkbox" id="finManagementRead" />
                                                                    <label class="form-check-label" for="finManagementRead"> Read </label>
                                                                </div>
                                                                <div class="form-check me-3 me-lg-5">
                                                                    <input class="form-check-input" type="checkbox" id="finManagementWrite" />
                                                                    <label class="form-check-label" for="finManagementWrite"> Write </label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="finManagementCreate" />
                                                                    <label class="form-check-label" for="finManagementCreate"> Create </label>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-nowrap fw-bolder">Reporting</td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <div class="form-check me-3 me-lg-5">
                                                                    <input class="form-check-input" type="checkbox" id="reportingRead" />
                                                                    <label class="form-check-label" for="reportingRead"> Read </label>
                                                                </div>
                                                                <div class="form-check me-3 me-lg-5">
                                                                    <input class="form-check-input" type="checkbox" id="reportingWrite" />
                                                                    <label class="form-check-label" for="reportingWrite"> Write </label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="reportingCreate" />
                                                                    <label class="form-check-label" for="reportingCreate"> Create </label>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-nowrap fw-bolder">API Control</td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <div class="form-check me-3 me-lg-5">
                                                                    <input class="form-check-input" type="checkbox" id="apiRead" />
                                                                    <label class="form-check-label" for="apiRead"> Read </label>
                                                                </div>
                                                                <div class="form-check me-3 me-lg-5">
                                                                    <input class="form-check-input" type="checkbox" id="apiWrite" />
                                                                    <label class="form-check-label" for="apiWrite"> Write </label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="apiCreate" />
                                                                    <label class="form-check-label" for="apiCreate"> Create </label>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-nowrap fw-bolder">Repository Management</td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <div class="form-check me-3 me-lg-5">
                                                                    <input class="form-check-input" type="checkbox" id="repoRead" />
                                                                    <label class="form-check-label" for="repoRead"> Read </label>
                                                                </div>
                                                                <div class="form-check me-3 me-lg-5">
                                                                    <input class="form-check-input" type="checkbox" id="repoWrite" />
                                                                    <label class="form-check-label" for="repoWrite"> Write </label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="repoCreate" />
                                                                    <label class="form-check-label" for="repoCreate"> Create </label>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-nowrap fw-bolder">Payroll</td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <div class="form-check me-3 me-lg-5">
                                                                    <input class="form-check-input" type="checkbox" id="payrollRead" />
                                                                    <label class="form-check-label" for="payrollRead"> Read </label>
                                                                </div>
                                                                <div class="form-check me-3 me-lg-5">
                                                                    <input class="form-check-input" type="checkbox" id="payrollWrite" />
                                                                    <label class="form-check-label" for="payrollWrite"> Write </label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="checkbox" id="payrollCreate" />
                                                                    <label class="form-check-label" for="payrollCreate"> Create </label>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- Permission table -->
                                    </div>
                                    <div class="col-12 text-center mt-2">
                                        <button type="submit" class="btn btn-primary me-1">Submit</button>
                                        <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal" aria-label="Close">
                                            Discard
                                        </button>
                                    </div>
                                </form>
                                <!--/ Add role form -->
                            </div>
                        </div>
                    </div>
                </div>
                <!--/ Add Role Modal -->

            </div>
        </div>
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
</body>
<!-- END: Body-->

</html>