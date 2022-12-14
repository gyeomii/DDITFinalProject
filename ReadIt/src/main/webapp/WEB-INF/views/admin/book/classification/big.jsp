<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<c:set var="bookList" value="${dataMap.bookList }" />
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
    <!-- END: Page CSS-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->

</head>

<style>

.tr{
padding-left: 5px;
padding-right: 5px;
}
.td{
padding-left: 5px;
padding-right: 5px;
}
</style>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">

	<select class="form-control col-md-3" name="perPageNum" id="perPageNum"	onchange="list_go(1);"  style="display:none">
  		<option value="20" >????????????</option>
	</select>
	


    <!-- BEGIN: Content-->
    <div class="app-content content " style="padding-top: 0px; font-family: 'Noto Sans KR', sans-serif;">
        <div class="content-wrapper container-xxl p-0">
            <div class="content-body">
                <div class="row">
                    <div class="col-12" >
                         <ul class="nav nav-pills mb-2" style="padding-top: 40px; padding-bottom: 20px;">
                            <!-- account -->
                           <li class="nav-item">
                                <a class="nav-link " onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/status.do','M920100','ifr')">
                                    <i data-feather="lock" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">?????? ??????</span>
                                </a>
                            </li>
                            <!-- security -->
                            <!-- billing and plans -->
                            <!-- notification -->
                            <li class="nav-item">
                                <a class="nav-link active" onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/big.do','M920101','ifr')">
                                    <i data-feather="bell" class="font-medium-3 me-50"></i>
                                    <span class="fw-bold">????????????</span>
                                </a>
                            </li>
                        </ul>

                        <!-- security -->

                        <!-- recent device -->
                        <div class="card">
                            <div style="padding-top: 10px; padding-left: 10px;">
                               			<button type="button" class="btn btn-flat-primary" onclick="goPage('<%=request.getContextPath()%>/admin/bookManage/big.do','M920101','ifr')" >??????</button>
                                        <button type="button" class="btn btn-flat-secondary" value="0" onclick="search_kdc(this.value)">??????</button>
                                        <button type="button" class="btn btn-flat-success" value="1" onclick="search_kdc(this.value)"> ??????</button>
                                        <button type="button" class="btn btn-flat-danger" value="2" onclick="search_kdc(this.value)">??????</button>
                                        <button type="button" class="btn btn-flat-warning" value="3" onclick="search_kdc(this.value)">????????????</button>
                                        <button type="button" class="btn btn-flat-info" value="4" onclick="search_kdc(this.value)">????????????</button>
                                        <button type="button" class="btn btn-flat-dark" value="5" onclick="search_kdc(this.value)">????????????</button>
                                        <button type="button" class="btn btn-flat-success" value="6" onclick="search_kdc(this.value)">??????</button>
                                        <button type="button" class="btn btn-flat-danger" value="7" onclick="search_kdc(this.value)">??????</button>
                                        <button type="button" class="btn btn-flat-warning" value="8" onclick="search_kdc(this.value)">??????</button>
                                        <button type="button" class="btn btn-flat-info" value="9" onclick="search_kdc(this.value)">??????</button>
                            </div>
                            <div style="position: relative;">
                                  <div class="kb-search-input" style="float: right; padding-right: 30px;">
                                      <div class="input-group input-group-merge" style="height:30px; width:330px; margin-left: 20px;margin-top: 10px;">
										<select class="form-control form-select" name="searchType" id="searchType" style="width:18%">
											<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>?????????</option>
											<option value="a" ${cri.searchType eq 'a' ? 'selected':'' }>??????</option>
											<option value="i" ${cri.searchType eq 'i' ? 'selected':'' }>ISBN</option>
											<option style = "display: none" value="k" ${cri.searchType eq 'k' ? 'selected':'' }>????????????</option>
<%-- 											<option style = "display: none" value="i" ${cri.searchType eq 'i' ? 'selected':'' }>??????</option> --%>
										</select>
                                        <span class="input-group-text"><i data-feather=""></i></span>
										<input type="text" class="form-control" id="searchText" style="width:60%" name="keyword"  value="${param.keyword }" placeholder="????????? ??????" onkeyup="if(window.event.keyCode==13){search_go(1)}"/>
                                       </div>
                                   </div>
                            </div>
                          
                            <div class="card-body my-2 py-25">
                                <div class="table-responsive" >
                                    <table class="table table-bordered text-nowrap text-center" style="table-layout: fixed">
                                        <thead>
                                            <tr style="text-align: center;">
                                                <th width="5%" style = "text-overflow:ellipsis; overflow:hidden; white-space:nowrap; padding-left: 0px; padding-right: 0px;" >??????</th>
                                                <th width="10%" style = "text-overflow:ellipsis; overflow:hidden; white-space:nowrap;" >????????????</th>
                                                <th width="10%" style = "text-overflow:ellipsis; overflow:hidden; white-space:nowrap;" >????????????</th>
                                                <th width="25%" style = "text-overflow:ellipsis; overflow:hidden; white-space:nowrap;" >?????????</th>
                                                <th width="15%" style = "text-overflow:ellipsis; overflow:hidden; white-space:nowrap;" >??????</th>
                                                <th width="10%" style = "text-overflow:ellipsis; overflow:hidden; white-space:nowrap;" >?????????</th>
                                                <th width="10%" style = "text-overflow:ellipsis; overflow:hidden; white-space:nowrap;" >????????????</th>
                                                <th width="15%" style = "text-overflow:ellipsis; overflow:hidden; white-space:nowrap;">ISBN</th>
                                                <th width="15%" >????????????</th>
                                            </tr>
                                        </thead>
				                        <tbody>
											<c:forEach items="${bookList }" var="book" varStatus="status">
												<tr >
		<!-- 											onclick="OpenWindow('detail.do?from=list&notice_no=${member.mem_id }','????????????',1100,700);"> -->
													<td style = "text-overflow:ellipsis; overflow:hidden; white-space:nowrap; padding-left: 5px; padding-right: 5px;">
																${((cri.page-1) * 10) + status.count}													
													
													</td>
													<td style = "text-overflow:ellipsis; overflow:hidden; white-space:nowrap;padding-left: 0px; padding-right: 0px;">${book.kdc_cri}</td>
													<td style = "text-overflow:ellipsis; overflow:hidden; white-space:nowrap; padding-left: 5px; padding-right: 5px;">${book.book_no}</td>
													<td style="text-align: left; text-overflow:ellipsis; overflow:hidden; white-space:nowrap; padding-left: 5px; padding-right: 5px;"  >${book.book_title}</td>
													<td style="text-align: left; text-overflow:ellipsis; overflow:hidden; white-space:nowrap; padding-left: 5px; padding-right: 5px;">${book.book_author}</td>
													<td style="text-align: left; text-overflow:ellipsis; overflow:hidden; white-space:nowrap; padding-left: 5px; padding-right: 5px;">${book.book_publisher}</td>
													<td style = "text-overflow:ellipsis; overflow:hidden; white-space:nowrap; padding-left: 5px; padding-right: 5px;">${book.book_publishDate}</td>
													<td style = "text-overflow:ellipsis; overflow:hidden; white-space:nowrap; padding-left: 5px; padding-right: 5px;">${book.book_isbn}</td>
													<td style="text-align: left; text-overflow:ellipsis; overflow:hidden; white-space:nowrap; padding-left: 5px; padding-right: 5px;">${book.room}/${book.sector}/${book.call_number}</td>
												</tr>
											</c:forEach>                                        
				                        
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            	<div class="card-footer">
								 <%@ include file="/WEB-INF/views/include/bookpagination.jsp"%>
								</div>
                        </div>
                        <!-- / recent device -->

                        <!--/ security -->
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
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/modal-two-factor-auth.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/page-account-settings-security.js"></script>
    <!-- END: Page JS-->
    
    <script	src="<%=request.getContextPath()%>/resources/jquery/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
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
    
    
    <script>
	function search_go(page,url) {
		if(!url) url="<%=request.getContextPath()%>/admin/bookManage/big.do";
				var jobForm = $('#jobForm');
				jobForm.find("[name='page']").val(page);
				jobForm.find("[name='perPageNum']").val(
						$('select[name="perPageNum"]').val());
				jobForm.find("[name='searchType']").val(
						$('select[name="searchType"]').val());
				jobForm.find("[name='keyword']").val(
						$('div.input-group>input[name="keyword"]').val());
				jobForm.attr({
					action : url,
					method : 'get'
				}).submit();
	}
   </script>
   
   <script>
   function search_kdc(btnVal){
	   console.log(btnVal);
	   		var page=1;
	   		var url="<%=request.getContextPath()%>/admin/bookManage/big.do";
			var jobForm = $('#jobForm');
			jobForm.find("[name='page']").val(page);
			jobForm.find("[name='perPageNum']").val(
					$('select[name="perPageNum"]').val());
			jobForm.find("[name='searchType']").val("k");
			jobForm.find("[name='keyword']").val(btnVal);
			jobForm.attr({
				action : url,
				method : 'get'
			}).submit();
	   
   }
   
   </script>
</body>
<!-- END: Body-->

</html>