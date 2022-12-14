<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="cri" value="${pageMaker.cri }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />

<%-- <c:set var="myWishBookList" value="${dataMap.myWishBook }" /> --%>
<%-- <c:set var="pageMaker" value="${dataMap.pageMaker }" /> --%>
<%-- <c:set var="cri" value="${pageMaker.cri }" /> --%>


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
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/swiper.min.css">
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
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-sweet-alerts.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/sweetalert2.min.css">

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/confirm.css">
    <!-- END: Custom CSS-->
	</head>    
		<body class="container-xxl" >
                        <!-- User Content -->
                             <section class="app-user-view-account">
                    <div class="row">
                        <div class="col-xl-12 col-lg-7 col-md-7 order-0 order-md-1">
                            <!-- User Pills -->
                            <ul class="nav nav-pills mb-2">
                                <li class="nav-item">
                                    <a class="nav-link "  id="M050301" onclick="goPage('<%=request.getContextPath()%>/main/myBook/rentList.do','M050301','ifr');" >
                                        <i data-feather="user" class="font-medium-3 me-50"></i>
                                        <span class="fw-bold">MY ?????? ??????</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  id="M050302"   onclick="goPage('<%=request.getContextPath()%>/main/myBook/reviewList.do','M050302','ifr')">
                                        <i data-feather="bookmark" class="font-medium-3 me-50"></i>
                                        <span class="fw-bold">MY ??????</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"  id="M050303"   onclick="goPage('<%=request.getContextPath()%>/main/myBook/waitingList.do','M050303','ifr')" >
                                        <i data-feather="lock" class="font-medium-3 me-50"></i>
                                        <span class="fw-bold">MY ?????? ??????</span>
                                    </a>
                                </li>
<!--                                 <li class="nav-item"> -->
<%--                                     <a class="nav-link"  id="M050304"   onclick="goPage('<%=request.getContextPath()%>/main/myBook/returnList.do','M050304','ifr')"> --%>
<!--                                         <i data-feather="bookmark" class="font-medium-3 me-50"></i> -->
<!--                                         <span class="fw-bold">?????? ?????? ?????? </span> -->
<!--                                     </a> -->
<!--                                 </li> -->
                                <li class="nav-item">
                                    <a class="nav-link active"  id="M050305"   onclick="goPage('<%=request.getContextPath()%>/main/myBook/myWishBook.do','M050305','ifr')">
                                        <i data-feather="bookmark" class="font-medium-3 me-50"></i>
                                        <span class="fw-bold">?????? ?????? ??????  </span>
                                    </a>
                                </li>
                            </ul>
                            <!--/ User Pills -->
                        </div>
                    </div>
                </section>
			

                            <!-- Project table -->
                            <div class="card">
                            <c:if test="${empty dataList }">
                            	<h4 class="card-header">????????? ??????????????? ????????????. </h4>
                            </c:if>
                            <c:if test="${!empty dataList }">
                                <h4 class="card-header">?????? ???????????? ?????? ??????</h4>
                            </c:if>
<!--                             <input type ="hidden" name="book_isbn" value=""> -->
<!--                           	 <script> -->
<%--                              	alert(${cartList[0].book_isbn}); --%>
<!--                           	 </script> -->
                                <div class="table">
                                    <table class="table ">
                                        <thead style="text-align: center;">
                                            <tr>
                                                <th>????????????</th>
                                                <th>?????????</th>
                                                <th>ISBN</th>
                                                <th>????????????</th>
                                                <th>??????</th>
                                                
                                            </tr>
						                 </thead>
											<tbody>
												<c:forEach items="${dataList }" var="wishBookList">
													<tr>
														<td style="text-align: center;"><fmt:formatDate value="${wishBookList.wish_regdate }" pattern="yyyy-MM-dd"/></td>
														<td>${wishBookList.wish_title }</td>
														<c:if test="${wishBookList.wish_state eq 0}">
															<td style="text-align: center;">${wishBookList.isbn }
															</td>
															<td style="text-align: center;">
																<span class="badge badge-light-primary">????????????</span>
															</td>
															<td>
															</td>
														</c:if>
														<c:if test="${wishBookList.wish_state eq 5}">
															<td style="text-align: center;">${wishBookList.isbn }
															</td>
															<td style="text-align: center;">
																	<span class="badge badge-light-warning">????????????</span>
															</td>
															<td style="text-align: center;">
																<button type="button" onclick="goCartGoGo(${wishBookList.isbn});" class="btn-xs btn-warning waves-effect waves-float waves-light" style="font-size: small;">
																<span id="'${wishBookList.isbn}'">??????????????????</span>
																</button>
															</td>
														</c:if>
													</tr>
												</c:forEach>
											</tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- /Project table -->
 						
                           
	 
	 <!-- END: content-->
	 

   <!-- Basic Tables end -->
<div class="card-footer">

</div>

<!-- <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script> -->

<%-- <script src="<%=request.getContextPath()%>/resources/js/member.js"></script> --%>



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
<%--     <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/cards/card-analytics.js"></script> --%>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/page-profile.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/modal-edit-user.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-user-view-account.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-user-view.js"></script>
    
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/extensions/ext-component-sweet-alerts.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/sweetalert2.all.min.js"></script>
    <!-- END: Page JS-->
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
	
	<%@ include file="../../../common/index_js.jsp" %> 
	<script src="<%=request.getContextPath()%>/resources/js/confirm.js"></script>
		
    <script>
        $(window).on('load', function() {
            if (feather) {
                feather.replace({
                    width: 14,
                    height: 14
                });
            }
        });
    </script>
    
    <script type="text/javascript">
//    	$('#goInsertCart').on('click', function() { 
   	function goCartGoGo(book_isbn) { 

		$.ajax({
			url : "<%=request.getContextPath()%>/main/myBook/myWishBook/checkCart.do",
			type:"post",
			data : {book_isbn:book_isbn},
			success : function(result){
				if(result == "DUPLICATED"){
					Swal.fire({
						icon: 'warning',
						title: '?????? ?????????????????? ???????????????.'
					})
				}else{
	              insertCart();
	           } 
			},
			error:function(error){
		       alert("?????????????????? ???????????? ????????? ???????????????..");
		    }
		});
		
//     	alert(book_isbn);
    	var data = {book_isbn:book_isbn}
    	function insertCart(){
		   	$.ajax({
		   		type:"post",
				url:"<%=request.getContextPath()%>/main/myBook/myWishBook/insertCart.do",
				data: data,
				dataType:"text", // ?????? ????????? ???????????? JSON.parse??? ?????? ????????? ??????
				success:function(data){
					Swal.fire({
						title: '??????????????? ???????????????!',
						text: '?????????????????????????',
						icon: 'success',
						showCancelButton: true,
						confirmButtonColor: '#3085d6',
						cancelButtonColor: '#d33',
						confirmButtonText: '??????',
						cancelButtonText: '??????',
						reverseButtons: false, // ?????? ?????? ?????????
// 					<button type="button" onclick="goCartGoGo(${wishBookList.isbn});" class="btn-xs btn-warning waves-effect waves-float waves-light" style="font-size: small;">
// 					<span id="tooOld">??????????????????</span>
						
					}).then((result) => {
						if(result.isConfirmed){
							goPage('<%=request.getContextPath()%>/main/myBook/myWishBook/bookCart.do','M050210','ifr'); 
						}
					})
				},
				error: function(){
					console.log("??????");
				}
					
			});
    	}
		
   	};
  		  
// 	});
    	
//     	console.log(book_isbn);
    </script>
  
</body>






