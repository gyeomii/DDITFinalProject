<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="volBoardList" value="${dataMap.volBoardList }" />
<c:set var="facRsvList" value="${dataMapTwo.facRsvList }" />


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Dashboard ecommerce - Vuexy - Bootstrap HTML admin template</title>
    <link rel="apple-touch-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;700&display=swap" rel="stylesheet">
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/charts/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/toastr.min.css">
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
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/dashboard-ecommerce.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/charts/chart-apex.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-toastr.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/page-profile.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-validation.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->
</head>    
<body class="container-xxl" >
                        <!-- User Content -->
                            
                            
                           
       <!-- User Content -->
		<%-- 	<div class="col-xl-8 col-lg-7 col-md-7 order-0 order-md-1">
				<!-- User Pills -->
				<ul class="nav nav-pills mb-2">
					<li class="nav-item"><a class="nav-link active" id="M050503"
						onclick="goPage('<%=request.getContextPath()%>/main/myInfo/volunteer.do','M050503');">
							<i data-feather="user" class="font-medium-3 me-50"></i> <span
							class="fw-bold">?????? ??????</span>
					</a></li>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<li class="nav-item"><a class="nav-link" id="M050505"
						onclick="goPage('<%=request.getContextPath()%>/main/myInfo/qna.do','M030700')">
							<i data-feather="twitch"  style="color: dodgerblue;" class="font-medium-3 me-50"></i> <span
							class="fw-bold">1:1?????? ?????? </span>
					</a></li>
					<li class="nav-item"><a class="nav-link" id="M050201"
						onclick="goPage('<%=request.getContextPath()%>/main/myInfo/bookPoint.do','M050201')">
							<i data-feather="gift" style="color: hotpink;" class="font-medium-3 me-50"></i> <span
							class="fw-bold">????????? ??????</span>
					</a></li>
				</ul> --%>
				<!--/ User Pills -->
                            
              <!-- Project table -->
              <section style="margin-top: 0px; padding-top: 0px; overflow: auto;">
                <div class="card" style="height: 305px;">
                    <h4 class="card-header">????????????</h4>
                    <div class="table">
                        <table class="table ">
                            <thead>
                                <tr>
                                    <th>no</th>
                                    <th>?????? ??????</th>
                                    <th class="text-nowrap">&nbsp;?????????</th>
                                    <th>&nbsp;&nbsp;????????????</th>
                                    <th>?????????</th>
                                </tr>
                            </thead>
                        <tbody>
					<c:forEach items="${volBoardList }" var="volBoard" varStatus="status">
						<c:if test="${loginUser.mem_id == volBoard.mem_id}">
						  	<tr onclick="OpenWindow('detail.do?from=list&vb_no=${volBoard.vb_no }','????????????',1100,700);">
							<!-- <td>${((cri.page-1) * 20) + status.count}</td> -->
								<!-- 1?????? -->
								<td>${pageMaker.totalCount - (status.index + ((cri.page-1)*20))}</td>
								<!-- ?????? -->
								<td style="text-align: left; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">${volBoard.vb_title}</td>
								
								<td>${volBoard.vb_writer}</td>
	 									 
								<td><fmt:formatDate value="${volBoard.vb_regdate }" pattern="yyyy-MM-dd" /></td>
								
								<td>
								<c:if test="${!empty volBoard.attachList}">
									<i data-feather='file'></i>(${volBoard.attachList.size() })
								</c:if> 
								<c:if test="${empty volBoard.attachList}">
									<span>-</span>
								</c:if>
								</td>
							</tr>
						</c:if>
					</c:forEach>
					 </tbody>
             	   </table>
				</div>
      	    </div>
                        <!-- /Project table -->
                        
           <div class="card" style="height: 305px;">
                <h4 class="card-header">                          
			                     ?????? ?????????</h4>
                 <div class="table">
                     <table class="table ">
                         <thead>
                             <tr>
                                 <th>no</th>
                                 <th>??????/????????? ??????</th>
                                 <th class="text-nowrap">??????</th>
                                 <th>??????</th>
                                 <th></th>
                             </tr>
                         </thead>
                         <tbody>
                         	<tr>
                         		<td>1</td>
                         		<td>????????? ??????</td>
                         		<td>????????? ??????</td>
		                        <td><button type="button" class="btn btn-primary waves-effect waves-float waves-light">????????? ??????</button></td>
                           	</tr>
                           	<tr>
                           		<td>2</td>
                           		<td>?????? ?????? ?????????</td>
                           		<td>?????????</td>
                           		<td><span class="badge rounded-pill badge-light-primary me-1" >?????? ??????</span></td>
                           	</tr>
                           	<tr>
                           		<td>3</td>
                           		<td>?????? ?????????</td>
                           		<td>?????? ??????</td>
                           		<td><span class="badge rounded-pill badge-light-primary me-1" >??????</span></td>
                           	</tr>
                           	
                           </tbody>
                       </table>
                   </div>
               </div>
                       
          <!-- /Project table -->
         <div class="card" style="height: 305px; overflow: auto;">
           <h4 class="card-header">????????????</h4>
           <div class="table">
               <table class="table ">
                   <thead>
                       <tr>
                           <th>no</th>
                           <th> &nbsp;&nbsp;??????</th>
                           <th class="text-nowrap">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;??????</th>
                           <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;??????</th>
                           <th>??????</th>
                       </tr>
                   </thead>
                   <tbody>
                  <c:forEach items="${facRsvList }" var="facRsv" varStatus="status">
						<c:if test="${loginUser.mem_id == facRsv.mem_id}">
							<tr onclick="OpenWindow('detail.do?from=list&vb_no=${facRsv.fr_no }','????????????',1100,700);" style="height: 20px;">
								<!-- <td>${((cri.page-1) * 20) + status.count}</td> -->
								<!-- 1?????? -->
								<td>${pageMaker.totalCount - (status.index + ((cri.page-1)*20))}</td>
								<!-- ?????? -->
								<td style="text-align: left; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">
								 	<%-- ${facRsv.fac_code} --%>
								 	
								 	<!-- <span class="badge bg-light-secondary" style="width:120px; height:27px; margin-top:12px; margin-bottom:10px; font-size:17px;"> -->
										<c:choose>
											<c:when test="${facRsv.fac_code == 'm1'}">
												<span class="badge bg-light-dark " style="color: black; text-align:left;">??????????????? ??? 1???</span>
											</c:when>
											<c:when test="${facRsv.fac_code == 'm2'}">
												<span class="badge bg-light-dark " style="color: black; text-align:left;">??????????????? ??? 2???</span>
											</c:when>
											<c:when test="${facRsv.fac_code == 'm3'}">
												<span class="badge bg-light-dark " style="color: black; text-align:left;">??????????????? ??? 3???</span>
											</c:when>
											<c:when test="${facRsv.fac_code == 'm4'}">
												<span class="badge bg-light-dark " style="color: black; text-align:left;">??????????????? ??? 4???</span>
											</c:when>
											<c:when test="${facRsv.fac_code == 't1'}">
												<span class="badge bg-light-dark" style="color: black; text-align:left;">????????? ??? 1???</span>
											</c:when>
											<c:when test="${facRsv.fac_code == 't2'}">
												<span class="badge bg-light-dark" style="color: black; text-align:left;">????????? ??? 2???</span>
											</c:when>
											<c:otherwise>
												<span class="badge bg-light-waring" style="color: black; text-align:left;">?????? ????????????????????????.</span>
											</c:otherwise>
									   </c:choose>
								</td>

								<td>${facRsv.fr_day}</td>
								<td>${facRsv.fr_hour}??? ~ ${facRsv.fr_hour+2}??? </td>
								<td>${facRsv.fr_seat}</td>
						
								<%-- <td><fmt:formatDate value="${volBoard.vb_regdate }"
										pattern="yyyy-MM-dd" /></td>
									 <td>
									 <c:if test="${!empty volBoard.attachList}"> </c:if> 
									 <c:if test="${empty volBoard.attachList}">
										<span>-</span>
									</c:if></td> --%>
						
							</tr>
						</c:if>
				</c:forEach>
                   </tbody>
             	  </table>
        	  </div>
   	 	  </div>
    <!-- /Project table -->
                    
	<!--/Project table
               
        <div class="card">
          <h4 class="card-header">????????????</h4>
          <div class="table">
              <table class="table ">
                  <thead>
                      <tr>
                          <th>no</th>
                          <th>??????</th>
                          <th class="text-nowrap">??????</th>
                          <th>??????</th>
                          <th></th>
                      </tr>
                  </thead>
                  <tbody>
                   	<tr>
                   		<td>1</td>
                   		<td>??????????????????</td>
                   		<td>2022.10.2. 14:00 ~ 16:00</td>
                   		<td>3???</td>
                   		<td>
                   		<span class="badge rounded-pill badge-light-primary me-1" >??????</span></td>
                   	</tr>
                   	<tr>
                   		<td>2</td>
                   		<td>?????????</td>
                   		<td>2022.10.2. 14:00 ~ 16:00</td>
                   		<td>10???</td>
                   		<td>
                   		<span class="badge rounded-pill badge-light-primary me-1" >??????</span></td>
                    </tr>
                               	
                 </tbody>
             </table>
         </div>
     </div>
    /Project table -->

                 
                <!--/ User Content -->
           </section>

	 <!-- END: content-->

   <!-- Basic Tables end -->
<div class="card-footer">

</div>

<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

<script src="<%=request.getContextPath()%>/resources/js/member.js"></script>



 <!-- BEGIN: Vendor JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
     <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/cleave.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/addons/cleave-phone.us.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/moment.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/responsive.bootstrap5.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/jszip.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/pdfmake.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/vfs_fonts.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/buttons.html5.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/buttons.print.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.rowGroup.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/polyfill.min.js"></script>
    <!-- END: Page Vendor JS-->
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/cards/card-analytics.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/page-profile.js"></script>
       <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/modal-edit-user.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-user-view-account.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-user-view.js"></script>
    <!-- END: Page JS-->
	
		
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
    
    <script >
    $('a').click(function() {
    	parent.parentsUrl($(this).attr('href'));
    	consol.log("this"+this);
    });
    

    var nall = $('.nav-link').val();
    console.log(nall);
    
    </script>
</body>






