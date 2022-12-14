<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="lossBookList" value="${dataMap.lossBookList }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />

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
    <title>Security - Vuexy - Bootstrap HTML admin template</title>
    <link rel="apple-touch-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/select/select2.min.css">
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
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-validation.css">
      <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-flat-pickr.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">



    <!-- BEGIN: Content-->
    <div class="app-content content " style="padding-top: 0px;">
        <div class="content-wrapper container-xxl p-0">
            <div class="content-body">
                <div class="row">
                    <div class="col-12">
                        <ul class="nav nav-pills mb-2" style="padding-top: 40px; padding-bottom: 20px;">
                            <!-- account -->
	                           <li class="nav-item">
    	                            <a class="nav-link " onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/donation.do','M920601','ifr')">
        	                            <i data-feather="bell" class="font-medium-3 me-50"></i>
            	                        <span class="fw-bold">????????????</span>
                	                </a>
                    	        </li>
                            
                        	    <li class="nav-item">
                            	    <a class="nav-link " onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/noRent.do','M920602','ifr')">
                                	    <i data-feather="bell" class="font-medium-3 me-50"></i>
                                    	<span class="fw-bold">??????????????????</span>
                                	</a>
                            	</li>   
  
                        	    <li class="nav-item">
                            	    <a class="nav-link active" onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/lossBook.do','M920603','ifr')">
                                	    <i data-feather="bell" class="font-medium-3 me-50"></i>
                                    	<span class="fw-bold">?????? ??? ?????? ??????</span>
                                	</a>
                            	</li>                               	
                            	
<!--                         	    <li class="nav-item"> -->
<%--                             	    <a class="nav-link " onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/getBook.do','M920604','ifr')"> --%>
<!--                                 	    <i data-feather="bell" class="font-medium-3 me-50"></i> -->
<!--                                     	<span class="fw-bold">??????????????????</span> -->
<!--                                 	</a> -->
<!--                             	</li>                               	 -->
                            	
<!--                         	    <li class="nav-item"> -->
<%--                             	    <a class="nav-link " onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/registBook.do','M920605','ifr')"> --%>
<!--                                 	    <i data-feather="bell" class="font-medium-3 me-50"></i> -->
<!--                                     	<span class="fw-bold">?????? ??????</span> -->
<!--                                 	</a> -->
<!--                             	</li>                               	 -->
                        </ul>


                    </div>
                </div>
                
                <div class="row">
                        <div class="col-lg-2 col-md-4 col-sm-12">
                            <div class="faq-navigation d-flex justify-content-between flex-column mb-2 mb-md-0">
                                <!-- pill tabs navigation -->
                                <ul class="nav nav-pills nav-left flex-column" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="payment" data-bs-toggle="pill" href="#lossBook" aria-expanded="true" role="tab" aria-selected="true">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-credit-card font-medium-3 me-1"><rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect><line x1="1" y1="10" x2="23" y2="10"></line></svg>
                                            <span class="fw-bold">?????? ??? ??????</span>
                                        </a>
                                    </li>
                                </ul>

                                <!-- FAQ image -->
                                <img src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/illustration/faq-illustrations.svg" class="img-fluid d-none d-md-block" alt="demand img">
                            </div>
                        </div>

                        <div class="col-lg-9 col-md-8 col-sm-12">
                            <!-- pill tabs tab content -->
                            <div class="tab-content">
                                <!-- ?????? -->
                                <div role="tabpanel" class="tab-pane active" id="lossBook" aria-labelledby="payment" aria-expanded="true">
                                    <!-- icon and header -->
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-tag bg-light-primary me-1">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-credit-card font-medium-4"><rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect><line x1="1" y1="10" x2="23" y2="10"></line></svg>
                                        </div>
                                        <div>
                                            <h4 class="mb-0">?????? ??? ?????? ??????</h4>
                                            <span>?????? ??? ?????? ????????? ??????????????? '?????? ??? ???????????? ??????' ????????? ????????????. </span>
                                        </div>
                                    </div>
                                    <div class="row" style="margin:auto; margin-top: 10px; margin-bottom: 20px;">
										
										<select class="form-control col-md-3" name="perPageNum" id="perPageNum"	onchange="list_go(1);"  style="display: none;">
									  		<option value="20" >????????????</option>
										</select>
										<div class="col-md-9 ">
											<div class="input-group">
												<select class="form-control form-select" name="searchType" id="searchType" style="width:25%;">
													<option value="tcw" ${cri.searchType eq 'tcw' ? 'selected':'' }>??????</option>
													<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>??????</option>
													<option value="w" ${cri.searchType eq 'w' ? 'selected':'' }>?????????</option>
													<option value="c" ${cri.searchType eq 'c' ? 'selected':'' }>??????</option>
													<option value="tc" ${cri.searchType eq 'tc' ? 'selected':'' }>??????+??????</option>
													<option value="cw" ${cri.searchType eq 'cw' ? 'selected':'' }>?????????+??????</option>
													<option value="tcw" ${cri.searchType eq 'tcw' ? 'selected':'' }>?????????+??????+??????</option>
												</select>
												<input class="form-control " type="text" name="keyword"	placeholder="???????????? ???????????????." value="${param.keyword }" style="width:50%;"/>
												<button class="form-control btn btn-primary btn-outline-secondary" style="width:25%;" type="button" onclick="list_go(1);" value="??????" data-card-widget="search"><i class="fa fa-fw fa-search"></i>??????</button>
											</div>
										</div>
										<div class="col-md-3">
<!-- 											<button type="button" class="form-control btn btn-danger btn-outline-secondary"  id="registBtn" onclick="OpenWindow('registForm.do','????????????',800,700);">?????? ??? ???????????? ??????</button> -->
											<button type="button" class="form-control btn btn-danger btn-outline-secondary"  id="registBtn" onclick="OpenWindow('registLossBook.do', '?????? ??? ???????????? ??????',1500,800);">?????? ??? ???????????? ??????</button>
										</div>
									</div>

                                    <!-- frequent answer and question  collapse  -->
		                           <div class="table-responsive">
		                                <table class="table mb-0">
		                                    <thead>
		                                        <tr>
		                                            <th scope="col" class="text-nowrap">??????</th>
		                                            <th scope="col" class="text-nowrap">?????????</th>
		                                            <th scope="col" class="text-nowrap">??????</th>
		                                            <th scope="col" class="text-nowrap">??????</th>
<!-- 		                                            <th scope="col" class="text-nowrap">?????????</th> -->
<!-- 		                                            <th scope="col" class="text-nowrap">?????????</th> -->
<!-- 		                                            <th scope="col" class="text-nowrap">????????????</th> -->
		                                        </tr>
		                                    </thead>
		                                    <tbody>
		                                    	<c:forEach items="${lossBookList }" var="lossBook">
		                                        <tr>
		                                            <td class="text-nowrap">${lossBook.state_name }</td>
		                                            <td class="text-nowrap">
		                                            	<img src="${lossBook.book_imgurl }" width="50px;" height="70px;" />
		                                            </td>
		                                            <td class="text-nowrap">${lossBook.book_title }</td>
		                                            <td class="text-nowrap">${lossBook.book_author }</td>
		                                        </tr>
		                                    	</c:forEach>
		                                    </tbody>
		                                </table>
		                            </div>
                                </div>
                                 <div class="card-footer">
								<%@ include file="/WEB-INF/views/include/pagination.jsp"%>
								</div>

                                <!-- ??????/???????????? -->
                                <div class="tab-pane" id="doneList" role="tabpanel" aria-labelledby="delivery" aria-expanded="false">
                                    <!-- icon and header -->
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-tag bg-light-primary me-1">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-bag font-medium-4"><path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path><line x1="3" y1="6" x2="21" y2="6"></line><path d="M16 10a4 4 0 0 1-8 0"></path></svg>
                                        </div>
                                        <div>
                                            <h4 class="mb-0">???????????? ??????</h4>
                                            <span></span>
                                        </div>
                                    </div>

                                    <!-- frequent answer and question  collapse  -->
                                   <div class="table-responsive">
		                                <table class="table mb-0">
		                                    <thead>
		                                        <tr>
		                                            <th scope="col" class="text-nowrap">#</th>
		                                            <th scope="col" class="text-nowrap">?????????</th>
		                                            <th scope="col" class="text-nowrap">?????? ??????</th>
		                                            <th scope="col" class="text-nowrap">?????????</th>
		                                            <th scope="col" class="text-nowrap">??????</th>
		                                            <th scope="col" class="text-nowrap">?????????</th>
		                                            <th scope="col" class="text-nowrap">?????? ?????????</th>
		                                        </tr>
		                                    </thead>
		                                    <tbody>
		                                        <tr>
		                                            <td class="text-nowrap">1</td>
		                                            <td class="text-nowrap">1</td>
		                                            <td class="text-nowrap">Table cell1</td>
		                                            <td class="text-nowrap">Table cell2</td>
		                                            <td class="text-nowrap">Table cell3</td>
		                                            <td class="text-nowrap">Table cell4</td>
		                                            <td class="text-nowrap">Table cell5</td>
		                                        </tr>
		                                    </tbody>
		                                </table>
		                            </div>
                                </div>

                                
                        </div>
                    </div>


            </div>

            </div>
        </div>
    </div>
    <!-- END: Content-->

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <!-- BEGIN: Vendor JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/cleave.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/addons/cleave-phone.us.js"></script>
        <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/charts/chart.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
        <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/charts/chart-chartjs.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/modal-two-factor-auth.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/page-account-settings-security.js"></script>
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