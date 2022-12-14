<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="adminList2" value="${dataMap.adminList }"/>
<c:set var="notYetAdminList" value="${dataMap.notApproveList }"/>

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
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/modal-create-app.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-sweet-alerts.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/sweetalert2.min.css">
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
                <div class="row" style="margin-top: 20px;">
                    <div class="col-xl-6 col-lg-6 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <span>????????? ?????????</span>
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
                                        <h4 class="fw-bolder"><c:out value="${adminList2.size() }"></c:out>???</h4>
                                        <a href="javascript:;" class="role-edit-modal" data-bs-toggle="modal" data-bs-target="#addRoleModal">
                                            <small class="fw-bolder">Edit Role</small>
                                        </a>
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
                                    <span>????????? ?????? ?????? ??????</span>
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
                                        <h4 class="fw-bolder"><c:out value="${notYetAdminList.size() }"></c:out>???</h4>
                                        <a href="javascript:;" class="role-edit-modal" data-bs-toggle="modal" data-bs-target="#addRoleModal">
                                            <small class="fw-bolder">Edit Role</small>
                                        </a>
                                    </div>
                                    <a href="javascript:void(0);" class="text-body"><i data-feather="copy" class="font-medium-5"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/ Role cards -->
                <div class="">
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
                </div>
               
                <!-- table -->
			<div class="card">
				<div class="table-responsive">
					<div id="DataTables_Table_0_wrapper"
						class="dataTables_wrapper dt-bootstrap5 no-footer">
						<div class="d-flex justify-content-between align-items-center header-actions mx-2 row mt-50 mb-1">
							 <div class="d-flex align-items-center" >
				                <div class="avatar avatar-tag bg-light-primary me-1">
				                	<div>
										<i data-feather='alert-octagon' style="margin-top: -2px;"></i>
				                	</div>
				                </div>
				                <div>
				                    <h4 class="mt-50">????????? ???????????? ?????? ?????? ??????</h4>
				                    <span>????????????'??? '????????????' ????????? ????????? ???????????????. '???????????????'??? ????????? ????????? '??????' ?????? '??????' ????????? ?????? ??????????????????. </span>
				                </div>
			            	</div>
						</div>
						<table class="table table-bordered">
							<thead style="text-align: center;">
								<tr>
									<th>??????</th>
									<th>?????? ?????????</th>
									<th>?????????</th>
									<th>?????????</th>
									<th>????????????</th>
									<th>??????</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${dataList}" var="adminList">
								<tr>
									<td><i data-feather='plus'></i><span class="fw-bold">${adminList.mem_name}</span></td>
<%-- 									<td id="${adminList.mem_id }">${adminList.mem_id}</td> --%>
									<td>${adminList.mem_id}
<%-- 										<input type="hidden" id="mem_id" value="${adminList.mem_id}"> --%>
									</td>
									<td style="text-align: center;"><fmt:formatDate value="${adminList.mem_joinDate}" pattern="yyyy-MM-dd"/></td>
									<td>${adminList.mem_phone}</td>
									<c:choose>
										<c:when test="${adminList.joincheck eq 0 }">
											<td style="text-align: center;">
<%-- 												<span class="badge badge-light-info" onclick="approve('${adminList.mem_id}');"><a>??????</a></span> --%>
												<span class="badge badge-light-info" data-bs-toggle="modal" data-bs-target="#editUser" onclick="sendMemId('${adminList.mem_id}');"><a>??????</a></span>
												<span class="badge badge-light-danger" onclick="cancle('${adminList.mem_id}');"><a>??????</a></span>
											</td>
											<td style="text-align: center;">
												<span class="badge badge-light-warning">???????????????</span>		
											</td>
										</c:when>
										<c:when test="${adminList.joincheck eq 1 }">
										<td>
											<span class="badge badge-light-info">????????????</span>
										</td>
										<td>
											<span class="badge badge-light-success">????????????</span>		
										</td>
										</c:when>
										<c:when test="${adminList.joincheck eq 2 }">
										<td style="text-align: center;">
											<span class="badge badge-light-danger">????????????</span>
										</td>
										<td style="text-align: center;">
											<span class="badge badge-light-success">????????????</span>		
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
                <div class="modal fade" id="editUser" tabindex="-1" style="display: none;" aria-hidden="true">
                    <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
                        <div class="modal-content">
                            <div class="modal-header bg-transparent">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body pb-5 px-sm-5 pt-50">
                                <div class="text-center mb-2">
                                    <h1 class="mb-1">????????? ???????????? ?????? ??????</h1>
                                    <p>????????? ????????? ?????? ??? ????????? ???????????????.</p>
                                </div>
<!--                                 <form id="editUserForm" class="row gy-1 pt-75" onsubmit="return false" novalidate="novalidate"> -->
									<div class="row gy-1 pt-75">
                                    <div class="col-12 col-md-12">
                                        <label class="form-label" for="modalEditUserCountry">????????? ?????????</label>
                                        <div class="position-relative">
                                        	<input type="text" class="form-control" id="selectedMemId" readonly="readonly" value="">
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6">
                                        <label class="form-label" for="modalEditUserCountry">??????</label>
                                        <div class="position-relative">
                                        	<select id="chooseDP" name="chooseDP" class="select2 form-select select2-hidden-accessible" data-select2-id="modalEditUserCountry" tabindex="-1" aria-hidden="true">
	                                            <option value="none">?????? ??????</option>
	                                            <option value="100">???????????????</option>
	                                            <option value="200">???????????????</option>
	                                            <option value="300">?????????</option>
	                                            <option value="400">?????????</option>
	                                            <option value="500">???????????????</option>
                                        </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="33" style="width: auto;"><span class="selection"></span></span></div>
                                    </div>
                                    <div class="col-12 col-md-6">
                                        <label class="form-label" for="modalEditUserCountry">??????</label>
                                        <div class="position-relative">
                                        	<select id="choosePosition" name="choosePosition" class="select2 form-select select2-hidden-accessible" data-select2-id="modalEditUserCountry" tabindex="-1" aria-hidden="true">
	                                            <option value="none">?????? ??????</option>
	                                            <option value="??????">??????</option>
	                                            <option value="??????">??????</option>
	                                            <option value="??????">??????</option>
	                                            <option value="??????">??????</option>
                                        </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="33" style="width: auto;"><span class="selection"></span></span></div>
                                    </div>
                                    <div class="col-12 text-center mt-2 pt-50">
                                        <button type="button" class="btn btn-primary me-1 waves-effect waves-float waves-light" onclick="approve();">??????</button>
                                        <button type="reset" class="btn btn-outline-secondary waves-effect" data-bs-dismiss="modal" aria-label="Close">
                                            ??????
                                        </button>
                                    </div>
<!--                                 </form> -->
									</div>
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
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/extensions/ext-component-sweet-alerts.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/sweetalert2.all.min.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
<%--     <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/modal-add-role.js"></script> --%>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-access-roles.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/modal-edit-user.js"></script>
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
    
    <script type="text/javascript">
    function cancle(mem_id){
//     	console.log(mem_id);
    	
    	Swal.fire({
			title: '??????????????? ?????????????????????????',
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: '??????',
			cancelButtonText: '??????',
			reverseButtons: true, // ?????? ?????? ?????????
		}).then((result) => {
			if(result.isConfirmed){
				$.ajax({
					url: "<%=request.getContextPath()%>/admin/userManage/notApprove.do",
					type: "post",
					data: {mem_id:mem_id},
					success: function(data){
						Swal.fire({
							title: '???????????? ????????? ??????????????????.',
							icon: 'success'
						}).then(function(){
							window.location.replace('<%=request.getContextPath() %>/admin/userManage/adminApprove.do');
						})
					},
					error:function(error){
			 			alert("??????????????? ?????????..");
			 		}
				})
			}
		})
		
	}
    </script>
    
    <script type="text/javascript">
    function sendMemId(mem_id){
//     	alert(mem_id);
    	document.getElementById("selectedMemId").value = mem_id;
    }
    </script>
    
    <script type="text/javascript">
    function approve(){
    	var mem_id = $("input[id=selectedMemId]").val();
    	var dp = $("select[name=chooseDP] option:selected").val();
    	var position = $("select[name=choosePosition] option:selected").val();
    	
    	console.log(mem_id);
    	console.log(dp);
    	console.log(position);
    	
    	var data = {
    			mem_id:mem_id,
    			dp_no:dp,
    			ad_position:position
    	}
    	
    	Swal.fire({
			title: '?????????????????????????',
			text: '',
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: '??????',
			cancelButtonText: '??????',
			reverseButtons: true, // ?????? ?????? ?????????
		}).then((result) => {
			if(result.isConfirmed){
				$.ajax({
					type:"post",
					url: "<%=request.getContextPath()%>/admin/userManage/approve.do",
					data: data,
					success : function(data){
						Swal.fire({
							icon: 'success',
							title: '????????? ?????????????????????!'
						}).then(function(){
							window.location.replace('<%=request.getContextPath() %>/admin/userManage/adminApprove.do');
						})
					},
					error : function(error){
						alert("??????!");
					}
				});
			}
		})
    }
    </script>
    
</body>
<!-- END: Body-->

</html>