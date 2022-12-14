<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
<meta name="description"
	content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
<meta name="keywords"
	content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="PIXINVENT">
<title>Sweet Alerts - Vuexy - Bootstrap HTML admin template</title>
<link rel="apple-touch-icon"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;700&display=swap"
	rel="stylesheet">
<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/charts/apexcharts.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/toastr.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/select/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/tables/datatable/dataTables.bootstrap5.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/tables/datatable/responsive.bootstrap5.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/tables/datatable/buttons.bootstrap5.min.css">

<!-- END: Vendor CSS-->

<!-- BEGIN: Theme CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap-extended.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/colors.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/components.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/dark-layout.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/bordered-layout.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/semi-dark-layout.css">

<!-- BEGIN: Page CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/horizontal-menu.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/dashboard-ecommerce.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/charts/chart-apex.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-toastr.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/vertical-menu.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/page-profile.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-validation.css">
<!-- END: Page CSS-->

<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
<!-- END: Custom CSS-->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>

<style>
 .feather-user{
    width: 30px;
    height: 20px;
}
 .feather-chevrons-down{
    width: 28px;
    height: 22px;
}
</style>

<body>
	<!-- BEGIN: content-->
	<div class="container">
		<section class="app-user-view-account">
			<div class="row">
				<!-- User Sidebar -->
				<div class="col-xl-4 col-lg-5 ol-md-5= order-1 order-md-0" style="padding-top: 20px; padding-left: 0px;">
					<!-- User Card -->
					<div class="card" >
						<div class="card-body">
						<!-- 	<div class="user-avatar-section"> -->
								<div class="d-flex align-items-center flex-column" >
									<%-- <img class="img-fluid rounded mt-3 mb-2"
										src="<%=request.getContextPath()%>/resources/images/egg3.png"
										height="150" width="150" alt="User avatar" /> --%>
									  <c:choose>
											<c:when test="${loginUser.mem_rank == 1}">
												<img class="img-fluid rounded " src="<%=request.getContextPath()%>/resources/images/egg3.png"
													 height="165" width="207" style="margin-top: 32px; margin-bottom: 30px; "  alt="User avatar" />
											</c:when>
											<c:when test="${loginUser.mem_rank == 2}">
												<img class="img-fluid rounded " src="<%=request.getContextPath()%>/resources/images/bookbug.png"
													 height="100px;" width="207px;"  alt="User avatar" />
											</c:when>
											<c:otherwise>
												<img class="img-fluid rounded " src="<%=request.getContextPath()%>/resources/images/???????????????.PNG"
													 height="150" width="220" style="margin-top: 10px; margin-bottom: 10px;" alt="User avatar" />
											</c:otherwise>
									  </c:choose>
								
								
									<div class="user-info text-center" >
										<h4 style="padding-top: 10px; font-size:22px; margin-bottom: 17px;"> ${loginUser.mem_id}</h4>
											<!-- <span class="badge bg-light-secondary" style="width:150px; height:30px; margin-top: 10px; margin-bottom:10px; font-size:20px;"> -->
												<c:choose>
													<c:when test="${loginUser.mem_rank == 1}">
														<span class="badge bg-light-primary " style="color: black; padding-bottm: 7px; font-size:17px; margin-bottom: 11px;" >
															     ????????? ???</span>
													</c:when>
													<c:when test="${loginUser.mem_rank == 2}">
														<span class="badge bg-light-success" style="color: black; padding: 0; font-size:17px; margin-bottom: 11px;">
															    ?????????</span>
													</c:when>
													<c:otherwise>
														<span class="badge bg-light-waring" style="color: black; padding-top: 0px; font-size:17px; margin-bottom: 11px;">
															     ????????????</span>
													</c:otherwise>
											   </c:choose>
										   </span>
									 </div>
								</div>
							<!-- </div> -->
					<div class="d-flex justify-content-around my-2 " style="margin-top: 67px;">
						<div class="d-flex align-items-start me-2" >
<!-- 							<span class="badge bg-light-primary p-75 rounded" style="width: 60px; height: 40px;">  -->
<!-- 								  <i data-feather="book-open" class="font-medium-2" style="color: sienna; margin-top: 2px;"></i> -->
<!-- 							</span> -->
							<div class="ms-75">
<!-- 								<div>?????? ??????</div> -->
<!-- 									<h4 class="mb-0" style="text-align: center;">63???</h4> -->
							</div>
					    </div>
					     <div class="d-flex align-items-start">
<!-- 							<span class="badge bg-light-primary rounded" style="width: 60px; height: 40px;">  -->
<!-- 								<i data-feather="gift" class="font-medium-2" style="color: violet; margin: 7px;;"></i> -->
<!-- 							</span> -->
								<div class="ms-75">
<!-- 									<div>??? ?????????</div> -->
<!-- 										<h4 class="mb-0" style="text-align: center;">56???</h4> -->
								</div>
						</div>
					</div>
						<h4 class="fw-bolder border-bottom pb-50 mb-1" style="margin-top: 36px; ">&nbsp;
						<i data-feather='user' style="color:cornflowerblue; margin-bottom: 5px;"></i> ?????? ??????</h4>
							<div class="info-container">
								<ul class="list-unstyled">
									<li class="mb-75" style="margin-top: 20px; font-size: 15px;"><span class="fw-bolder me-25">&nbsp;&nbsp;????????? :</span>
										<span style="font-size: 16px;">${loginUser.mem_name} </span></li>
									<%-- <li class="mb-75" style="margin-top: 20px;"><span class="fw-bolder me-25">?????? ??????:</span>
										<span>${loginUser.mem_rank} </span></li> --%>
									<li class="mb-75" style="margin-top: 20px; margin-bottom: 20px;">
									<span class="fw-bolder me-25">&nbsp;<i data-feather='chevrons-down' style="color: dodgerblue;"></i>
										    ????????? ????????? ????????? ????????? ?????? ??? ?????? ???????????????.</span></li>
								</ul>
								
								<!-- <div class="d-flex justify-content-center pt-2">
								   	<button type="button" class="btn btn-outline-primary waves-effect" data-bs-toggle="modal" data-bs-target="#inlineForm">
                                             	  ???????????? ?????? </button>	  	   
									<a href="javascript:;" class="btn btn-outline-info me-1" id="myInfoEdit" data-bs-target="#editUser"
									   data-bs-toggle="modal" > ???????????? ??????
									</a> 
								<button type="button" class="btn btn-outline-danger waves-effect" id="isDrop" >?????? ??????</button>
								</div> -->
								
								<div class="basic-modal" style="margin-left: 65px; margin-top: 25px; margin-bottom: 5px;">
								   	<!-- <button type="button" class="btn btn-outline-primary waves-effect" data-bs-toggle="modal" data-bs-target="#default">
                                                                                                   ???????????? ?????? ?????? </button>	  	  -->
	                               <a href="javascript:;" class="btn btn-outline-info me-1" id="myInfoEdit" data-bs-target="#default"
	                               		
	                                	data-bs-toggle="modal" > ???????????? ?????? </a>  
									   
                                                                                                   
									<button type="button" class="btn btn-outline-danger waves-effect" id="isDrop" style="margin-left: 20px;" 
											>?????? ??????</button>
								</div>
								
								
							</div>
						</div>
					</div>
					
					<!-- /User Card -->
					<!-- Plan Card -->
					<div class="card border-primary" style="height: 305px; padding-bottom: 0px; margin-bottom: 0px;">
						<div class="card-body" style="padding-bottom: 0px; margin-bottom: 0px;">
							<div class="d-flex justify-content-between align-items-start"  style="justify-content: center; ">
							   <div style=" margin: auto;">
									<a href="javascript:;" class="btn btn-gradient-warning " style="width:250px; height: 50px; text-align: center; padding-top: 17px;" 
										data-bs-target="#upgradePlanModal" data-bs-toggle="modal">????????? ????????? </a> 
							   </div>	
							</div>
					        <br/>
							<ul class="ps-1 mb-2">
								<li class="mb-50">????????? ?????? ??????</li>
								<li class="mb-50">???????????? ?????? ????????? ????????? ?????? ?????? ?????? ??????????????????.</li>
							</ul>
							<div class="d-flex justify-content-between align-items-center fw-bolder mb-50">
								<span>Days</span> 
								<span>4 of 6 months</span>
							</div>
							<div class="progress mb-50" style="height: 8px">
								<div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="65" aria-valuemax="100" aria-valuemin="80"></div>
							</div>
							<span>4 days remaining</span>
							<div class="d-grid w-100 mt-2" style="padding-bottom: 0px; margin-bottom: 0px;">
								<button class="btn btn-primary" data-bs-target="#upgradePlanModal" data-bs-toggle="modal"> ????????? ?????? ?????? ??? ??????</button>
							</div>
						</div>
					</div>
					<!-- /Plan Card -->
				</div>
				<!--/ User Sidebar -->

				<!-- User Content -->
				<div class="col-xl-8 col-lg-7 col-md-7 order-0 order-md-1" style="padding-left: 40px;" >
					<!-- User Pills -->
					<ul class="nav nav-pills mb-2" style="padding-left: 20px; padding-top: 32px; margin-bottom: 0px; padding-bottom: 0px;">
						<li class="nav-item">
							<a class="nav-link active" id="M050503" onclick="goPage('<%=request.getContextPath()%>/main/myInfo/volunteer.do','M050503');">
								<i data-feather="user" class="font-medium-3 me-50"></i> 
									<span class="fw-bold">?????? ??????</span>
							</a></li>
						
						<li class="nav-item">
							<a class="nav-link" id="M050505" onclick="goPage('<%=request.getContextPath()%>/main/myInfo/qna.do','M030700')">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i data-feather="twitch" style="color: dodgerblue;" class="font-medium-3 me-50"></i> 
								<span class="fw-bold"> 1:1?????? ?????? </span> 
							</a>
						</li>
						<li class="nav-item">
						 	<a class="nav-link" id="M050201" onclick="goPage('<%=request.getContextPath()%>/main/myInfo/bookPoint.do','M050201')">
								<i data-feather="gift" style="color: hotpink;" class="font-medium-3 me-50"></i> 
								<span class="fw-bold">????????? ??????</span>
							</a>
						</li>
					</ul>
					<!--/ User Pills -->

					<div class="content-wrapper" style="overflow-x: hidden; padding-right: 0px; margin-right: 0px;" >
						<iframe name="ifr" src="" frameborder="0" scrolling="no" style="width: 100%; height: 150vh; padding-top: 10px"></iframe>
					</div>
					
				</div>
				<!--/ User Content -->
			</div>
		</section>
			</div>
		
		<!-- modal -->
        <div class="modal fade text-start" id="default" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true"
        		>
            <div class="modal-dialog" style="margin-top: 300px;">
                <div class="modal-content" style="margin-top: 300px;" >
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel33">???????????? ?????????</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="#">
                        <div class="modal-body">
                            <label>????????????: </label>
                            <div class="mb-1">
                                <input type="password" placeholder="Password" class="form-control" id="pwdValue"/>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="show_popup();" >??????</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
		
		
		
		<!-- Edit User Modal -->
		<div class="modal fade" id="editUser" tabindex="-1" aria-hidden="true" > 
			<div class="modal-dialog modal-lg modal-edit-user" style="margin-top: 150px;">
				<div class="modal-content" style="margin-top: 150px;">
					<div class="modal-header bg-transparent">
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body px-sm-5 " style="margin-bottom: 10px;">
						<div class="text-center mb-2"  >
							<h1 class="mb-1">???????????? ??????</h1>
						</div>
						<form role="form" class="row gy-1 " method="post" action="myPageForm.do" style="margin-top: 30px;">
							 <input type="hidden" id="modalEditUserId" name="mem_id"
									class="form-control" placeholder="" value="${loginUser.mem_id}"/>
							<div class="col-12 col-md-6">
								<label class="form-label" for="modalEditUserName">??????</label>
								<input type="text" id="modalEditUserName" name="mem_name"
									   class="form-control" placeholder="" value="${loginUser.mem_name}"/>
							</div>
							<div class="col-12 col-md-6">
								<label class="form-label" for="modalEditUserPhone">??????</label> 
								<input type="text" id="modalEditUserPhone" name="mem_phone"
									   class="form-control" placeholder="" value="${loginUser.mem_phone}" />
							</div>
							<div class="col-12 col-md-6">
								<label class="form-label" for="password">????????????</label>
								 <span id='cfMessage' style="font-size: 13px; margin-left: 5px;"></span>
								<div class="input-group input-group-merge form-password-toggle">
									<input type="password" name="input_pwd" id="password" class="form-control" value="" 
										   placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;" />
									<span class="input-group-text cursor-pointer">
									<i data-feather="eye"></i>
									</span>
								</div>
							</div>
							<div class="col-12 col-md-6">
								<label class="form-label" for="passwordchk">???????????? ?????? </label>
								<span id='cfMessage' style="font-size: 13px; margin-left: 5px;"></span>
								<div class="input-group input-group-merge form-password-toggle">
									<input type="password"  id="passwordConfirm" class="form-control"  onkeyup='pwdCheck();'
										   placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;" />
									<span class="input-group-text cursor-pointer">
									<i data-feather="eye"></i>
									</span>
								</div>
							</div>
							 <div class="col-12 col-md-6">
								<label class="form-label" for="modalEditUserEmail">?????????</label> 
								<input type="text" id="modalEditUserEmail" name="mem_email"
									   class="form-control" value="${loginUser.mem_email}"
									   placeholder="example@domain.com" />
							</div>
							<div class="col-12 col-md-6">
								<label class="form-label" for="modalEditUserInterest">?????????</label>
								<br/>		
								<div class="form-check form-check-inline" style=" margin-right: 6px;" >
			                    	<input type="radio" id="eco" class="form-check-input" value="1" name="mem_interest">
			                    	<label class="form-check-label" for="eco">??????</label>
			                    </div>
			                    <div class="form-check form-check-inline" style="margin-right: 6px;">
			                    	<input type="radio" id="tr" class="form-check-input" value="2" name="mem_interest">
			                    	<label class="form-check-label" for="tr">??????</label>
			                    </div>
			                    <div class="form-check form-check-inline" style="margin-right: 6px;">
			                    	<input type="radio" id="re" class="form-check-input" value="3" name="mem_interest">
			                    	<label class="form-check-label" for="re">??????</label>
			                    </div>
			                    <div class="form-check form-check-inline" style="margin-right: 6px;"> 
			                    	<input type="radio" id="po" class="form-check-input" value="4" name="mem_interest">
			                    	<label class="form-check-label" for="po">??????</label>
			                    </div>
			                    <div class="form-check form-check-inline" style="margin-right: 6px;">
			                    	<input type="radio" id="lo" class="form-check-input" value="5" name="mem_interest">
			                    	<label class="form-check-label" for="lo">??????</label>
			                    </div>
			                    <div class="form-check form-check-inline" style="margin-right: 6px;">
			                    	<input type="radio" id="ps" class="form-check-input" value="6" name="mem_interest">
			                    	<label class="form-check-label" for="ps">??????</label>
			                    </div>
			                    <div class="form-check form-check-inline" style="margin-right: 6px;">
			                    	<input type="radio" id="cp" class="form-check-input" value="7" name="mem_interest">
			                    	<label class="form-check-label" for="cp">??????</label>
			                    </div>
			                    <div class="form-check form-check-inline" style="margin-right: 6px;">
			                    	<input type="radio" id="vo" class="form-check-input" value="8" name="mem_interest">
			                    	<label class="form-check-label" for="vo">??????</label>
			                    </div>
			                    <div class="form-check form-check-inline">
			                    	<input type="radio" id="be" class="form-check-input" value="9" name="mem_interest">
			                    	<label class="form-check-label" for="be">??????</label>
			                    </div>
							</div>
							 <div class="col-12 col-md-6">
								<label class="form-label" for="modalEditUserStatus">MBTI</label>
						
								<div class="row input-group" style="margin: 0px;">
			            	   		<select class="col-3 form-select" id="basicSelect" name="mbti1">
			               				<option value="I">I</option>
			               				<option value="E">E</option>
			           	    		</select>
			               			<select class="col-3 form-select" id="basicSelect" name="mbti2">
			               				<option value="S">S</option>
			               				<option value="N">N</option>
			              	 		</select>
				               		<select class="col-3 form-select" id="basicSelect" name="mbti3">
				               				<option value="F">F</option>
				               				<option value="T">T</option>
				               		</select>
				               		<select class="col-3 form-select" id="basicSelect" name="mbti4">
				               				<option value="P">P</option>
				               				<option value="J">J</option>
				               		</select>
		               		   </div>
							</div> 
							<div class="col-12 col-md-6">
								<label class="form-label" for="modalEditUserCar">??? ??????</label>
								<input type="text" id="modalEditUserCar" name="mem_car" class="form-control" placeholder=""
									   value="${loginUser.mem_car}" />
							</div>  
							<div class="col-12 ">
								<label class="form-label" for="modalEditUserAddr">??????</label>
								<input type="text" id="modalEditUserAddr" name="mem_addr" class="form-control" placeholder=""
									   value="${loginUser.mem_addr}" />
							</div>  
							<div class="col-12 text-center mt-2 pt-50">
								<button type="submit" class="btn btn-primary" id="modBtn" onclick="edit_go();">??????</button>
								<button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal" aria-label="Close">??????</button>
							</div> 
						</form>
					</div>
				</div>
			</div>
		</div>
		<!--/ Edit User Modal -->
		
		<!-- upgrade your plan Modal -->
		<div class="modal fade" id="upgradePlanModal" tabindex="-1" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-upgrade-plan">
				<div class="modal-content">
					<div class="modal-header bg-transparent">
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body px-5 pb-2" style="margin-bottom: 0px;">
						<div class="text-center mb-2" style="margin-bottom: 0px;">
							<h1 class="mb-1">????????? ?????????</h1>
						    <br/>
							<p>${loginUser.mem_phone}</p>
							<br/>
							<div class="user-info text-center mb-3" style="margin-bottom: 0px;">
									<c:choose >
										<c:when test="${loginUser.mem_rank == 1}">
											<span class="badge bg-light-primary " style="font-size:20px;">????????? ???</span>
										</c:when>
										<c:when test="${loginUser.mem_rank == 2}">
											<span class="badge bg-light-success" style="font-size:20px;">?????????</span>
										</c:when>
										<c:otherwise>
											<span class="badge bg-light-waring" style="font-size:20px;">????????????</span>
										</c:otherwise>
								   </c:choose>
								
							</div>
						</div>
					</div>
					<div class="d-flex align-items-center flex-column" style="margin:0px;">
						<%-- <img class="img-fluid rounded mt-1 mb-3" src="<%=request.getContextPath()%>/resources/images/member.jpg"
							 height="110" width="110" alt="User avatar">  --%>
                                 <div >
                                    <img src="${webPath }/${loginUser.mem_img }" alt="Profile Picture" class="img-fluid"
                                    	  width="150">
								</div>
					    <img class="img-fluid rounded mt-1 mb-3" src="<%=request.getContextPath()%>/resources/images/?????????.jpg"
							 height="110" width="110" alt="User avatar">
					</div>
				</div>
			</div>
		</div>
		<!--/ upgrade your plan Modal -->

	<!-- END: content-->

	<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
	<script src="<%=request.getContextPath()%>/resources/js/member.js"></script>

	<!-- BEGIN: Vendor JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
	<!-- BEGIN Vendor JS-->

	<!-- BEGIN: Page Vendor JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/select/select2.full.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/cleave.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/addons/cleave-phone.us.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/moment.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/responsive.bootstrap5.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/jszip.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/pdfmake.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/vfs_fonts.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/buttons.html5.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/buttons.print.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.rowGroup.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/polyfill.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
		
	<script 
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
	<script 
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/sweetalert2.all.min.js"></script>
	<script 
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/polyfill.min.js"></script>	
	<!-- END: Page Vendor JS-->

	<!-- BEGIN: Theme JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
	<!-- END: Theme JS-->

	<!-- BEGIN: Page JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/cards/card-analytics.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/page-profile.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/modal-edit-user.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-user-view-account.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-user-view.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-user-list.js"></script>
	<script 
	    src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/extensions/ext-component-sweet-alerts.js" aria-hidden="true"></script>	
	 <script 
	 	src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/components/components-modals.js"></script>
	<!-- END: Page JS-->

	<%@ include file="./myPage_js.jsp"%>
	
	<!-- seeet alerts myinfo -->
	

	
	<script>
	/* var ajax = $('#myInfo');
	
	if (ajax.length) {
	    ajax.on('click', function () {
	      Swal.fire({
	        title: 'Search for a GitHub user',
	        input: 'text',
	        customClass: {
	          confirmButton: 'btn btn-primary',
	          cancelButton: 'btn btn-outline-danger ms-1'
	        },
	        buttonsStyling: false,
	        inputAttributes: {
	          autocapitalize: 'off'
	        },
	        showCancelButton: true,
	        confirmButtonText: 'Look up',
	        showLoaderOnConfirm: true,
	        preConfirm: login => {
	          return fetch(`//api.github.com/users/${login}`)
	            .then(response => {
	              if (!response.ok) {
	                throw new Error(response.statusText);
	              }
	              return response.json();
	            })
	            .catch(error => {
	              Swal.showValidationMessage(`Request failed: ${error}`);
	            });
	        }
	      }).then(result => {
	        if (result.isConfirmed) {
	          Swal.fire({
	            title: '' + result.value.login + "'s avatar",
	            imageUrl: result.value.avatar_url,
	            customClass: { confirmButton: 'btn btn-primary' }
	          });
	        }
	      });
	    });
	  } */
	 /*  $(function () {
			var myInfoEdit = $('#myInfoEdit');
			
			myInfoEdit.on('click', function () {
				   Swal.fire({
					  title: '???????????? ??????',
					  input: 'text',
				/* 	  showCancelButton: true,
					  confirmButtonText: '??????',
					  cancelButtonText: '?????????',
					  customClass: {
						  confirmButton: 'btn btn-primary',
						  cancelButton: 'btn btn-outline-danger ms-1'
					  },
					  buttonsStyling: false */
					/*   customClass: {
				          confirmButton: 'btn btn-primary',
				          cancelButton: 'btn btn-outline-danger ms-1'
				        },
				        buttonsStyling: false,
				        inputAttributes: {
				          autocapitalize: '??????'
				        },
				        showCancelButton: true,
				        confirmButtonText: '??????',
				        showLoaderOnConfirm: true,	  
				  }).then(function (result) {
					  if (result.value) {
						  Swal.fire({
							  icon: 'success',
							  title: '?????? ?????????????????????.',
							  text: '?????? ????????? ???????????????.',
							  customClass: {
								  confirmButton: 'btn btn-success'
							  }
						  });
					  }
				  }); 
			  });
		}); */ 
		
		
	/* function modalFirst(){
			
		var pwdInput = document.getElementById('pwdValue').value;
		var pwdCpr = ${loginUser.mem_pwd};
		var CloseModal = document.querySelector("#pwdValue");
	
		if(pwd == pwdCpr){
			CloseModal.classList.add("CloseModal");
			$('#myInfoEdit').modal('show')
		}
	} */
		
	/* 
	 function infoEdit(){
		var pwd = "";
		var res = "${loginUser.mem_pwd}";
		var check = prompt('???????????? ?????????').text;
		console.log(res)
		alert(check);
		pwd = check;
		
	 	if(pwd === res){
			alert("?????????????????????.");
		} else{
			alert("??????????????? ?????? ????????????.");
		} 
	} 
	
	
	if(prompt('???????????? ??????')==='${loginUser.mem_pwd}'){
		alert("?????????????????????.");
	} else {
		alert("???????????? ????????????.");
	}
}
*/
	function show_popup () {
	 
// 		if($('#pwdValue').val() == '${loginUser.mem_pwd}'){
// 			alert("??????????????? ???????????????.");
// 			$('#editUser').modal('show');
// 		}else{
// 			alert("???????????? ????????????. ?????? ??????????????????.");
// 			$('#editUser').modal('hide');
//       	}

		var input_pwd = $('#pwdValue').val();
		$.ajax({
			url : "${webPath}/main/myInfo/ckeckPwd.do",
			type:"get",
			data : {input_pwd:input_pwd},
			success : function(result){
				if(result == "success"){
					Swal.fire({
						icon: 'success',
						title: '??????????????? ???????????????.',
						text: '?????????????????? ??????.'
					}).then(function(){
						$('#password').val(input_pwd);
			 			$('#editUser').modal('show');
					})
				}else{
		 			Swal.fire('??????????????? ????????????????????????', '????????????????????????.', 'success');
	           } 
			},
			error:function(error){
		       Swal.fire('?????????????????? ????????? ???????????????', '?????? ??????????????????.', 'success');
		    } 
		});
	}
</script> 

<script>
var pwdCheck = function() {
	
	if(document.getElementById('passwordConfirm').value == 0) {
		
		document.getElementById('cfMessage').innerHTML = ' ????????  ??????????????? ??????????????????.';
		document.getElementById('cfMessage').style.color = 'dodgerblue';
				
 	}else{

		  if (document.getElementById('password').value ==

		    document.getElementById('passwordConfirm').value) {

		    document.getElementById('cfMessage').style.color = 'forestgreen';

		    document.getElementById('cfMessage').innerHTML = ' ???????  ??????????????? ???????????????.';

		  } else {

		    document.getElementById('cfMessage').style.color = 'tomato';

		    document.getElementById('cfMessage').innerHTML = ' ????  ??????????????? ???????????? ????????????.';

	 	 }

	 } 
}

</script>	
	
	
	<!-- sweet alert function -->
	<script>
	$(function () { var isDrop = $('#isDrop');
		
		isDrop.on('click', function () {
			   Swal.fire({
				  title: '?????????????????????????',
				  text: "?????? ??????????????? ???????????? ??? ????????????!",
				  icon: 'warning',
				  showCancelButton: true,
				  confirmButtonText: '???, ?????????????????????.',
				  cancelButtonText: '?????????',
				  customClass: {
					  confirmButton: 'btn btn-secondary',
					  cancelButton: 'btn btn-outline-danger ms-1'
				  },
				  buttonsStyling: false
			  }).then(function (result) {
				  if (result.value) {
					  
					  $.ajax({
						    type : 'post',        									   // ?????? (get, post, put ??????)
						    url : '${webPath}/main/myInfo/dropMember.do',           // ????????? ??????url
						    async : true,         									   // ???????????? ?????? (default : true)
						    success : function(result) { 							// ?????? ?????? ????????????
						        console.log(result);
						    	/* window.location.href="http://localhost/readit/index.do"; */
						    },
						    error : function(request, status, error) { // ?????? ?????? ????????????
						        console.log(error)
						    }
						}).done(function(data) {
							Swal.fire({
								  icon: 'success',
								  title: '????????? ?????????????????????.',
								  text: '?????? ????????? ???????????? ?????????????????????.',
								  customClass: {
									  confirmButton: 'btn btn-success'
								  }
							  }).then(function(){
									parent.document.location.href = "<%=request.getContextPath()%>/index.do";
								  
							  })
							
						}) 
					  
// 					  Swal.fire({
// 						  icon: 'success',
// 						  title: '?????? ?????????????????????.',
// 						  text: '?????? ????????? ???????????? ?????????????????????.',
// 						  customClass: {
// 							  confirmButton: 'btn btn-success'
// 						  }
// 					  });
				  }
			  }); 
		  });
	});
	</script>

<!-- 	<script>
		function drop_go(){
			
		}
	</script> -->

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
		$('a').click(function() {
			parent.parentsUrl($(this).attr('href'));
		});
			consol.log("url" + url);

			var ur = $("form[href]");

			<script type="text/javascript">

		function change_parent_url(url) {
			document.location = url;
			alert(url)
		}

		function changePage(url, mCode) {
			var parent = window.parent.document;
			parent.querySelector('.nav-link').src = url;
			console.log(url);
			window.top.location.href = url;
		}

		var nall = $('.nav-link').val();
		console.log("nall", nall);

		var id_nav = $('.nav-link').attr('id');
		console.log("id_nav", id_nav);
	</script>

	<script>
	function edit_go(){
		if($("input[name='mem_name']").val()==""){ 
			alert("?????? ????????? ???????????????.");
			$("input[name='mem_name']").focus();
			return;
		}
		if($("input[name='mem_pwd']").val()==""){ 
			alert("???????????? ????????? ???????????????.");
			$("input[name='mem_pwd']").focus();
			return;
		}
		if($("input[name='mem_pwd']").val()=="input[='mem_pwd']")
		var form = $("form[role='form']");
		form.submit();
	}
	</script>

	<script>
    <c:if test="${status eq 'modify'}">
		alert("?????? ?????? ????????? ??????????????????.");
		</c:if>

		<c:if test="${status eq 'fail'}">
		alert("?????? ?????? ????????? ??????????????????.");
		</c:if>
	</script>
	
	<!-- <script>
    	function drop_go(){
		 	alert("?????????????????????????");
		}
   </script> -->

</body>


