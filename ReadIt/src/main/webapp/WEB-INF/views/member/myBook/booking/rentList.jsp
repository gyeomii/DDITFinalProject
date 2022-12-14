<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="rentList" value="${dataMap.rentList }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri }" />


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
<!-- <title>Dashboard ecommerce - Vuexy - Bootstrap HTML admin -->
<!-- 	template</title> -->
<link rel="apple-touch-icon"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;700&display=swap"
	rel="stylesheet">
<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/charts/apexcharts.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/toastr.min.css">
<!-- END: Vendor CSS-->

<!-- BEGIN: Theme CSS-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">

<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap-extended.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/colors.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/components.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/dark-layout.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/bordered-layout.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/semi-dark-layout.css">

<!-- BEGIN: Page CSS-->
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/horizontal-menu.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/dashboard-ecommerce.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/charts/chart-apex.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-toastr.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/vertical-menu.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/page-profile.css">
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-validation.css">
<!-- END: Page CSS-->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css"
	href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
<!-- END: Custom CSS-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <style type="text/css">
.table td {
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	font-size: 14px;
}



.tooltip {
  position: relative;
  display: block;
}

.tooltip .tooltiptext {
  visibility: hidden;
  width: 120px;
  background-color: black;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 5px 0;

  position: absolute;
  z-index: 1;
}

.tooltip:hover .tooltiptext {
  visibility: visible;
}

.tooltip .tooltip-top {
  width: 120px;
  bottom: 150%;
  left: 50%;
  margin-left: -60px;
}

.tooltip .tooltip-top::after {
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-color: black transparent transparent transparent;
}
</style>

</head>

<body class="container-xl" style="font-family: 'Noto Sans KR', sans-serif;">
	<!-- User Content -->
	<section class="app-user-view-account">
		<div class="row">
			<div class="col-xl-12 col-lg-7 col-md-7 order-0 order-md-1">
				<!-- User Pills -->
				<ul class="nav nav-pills mb-2">
					<li class="nav-item"><a class=" nav-link active" id="M050301"
						onclick="goPage('${webPath}/main/myBook/rentList.do','M050301','ifr');">
							<i data-feather="user" class="font-medium-3 me-50"></i> <span
							class="fw-bold">MY ?????? ??????</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" id="M050302"
						onclick="goPage('${webPath}/main/myBook/reviewList.do','M050302','ifr')">
							<i data-feather="bookmark" class="font-medium-3 me-50"></i> <span
							class="fw-bold">MY ??????</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" id="M050303"
						onclick="goPage('${webPath}/main/myBook/waitingList.do','M050303','ifr')">
							<i data-feather="lock" class="font-medium-3 me-50"></i> <span
							class="fw-bold">MY ?????? ??????</span>
					</a></li>
<!-- 					<li class="nav-item"><a class="nav-link" id="M050304" -->
<%-- 						onclick="goPage('${webPath}/main/myBook/returnList.do','M050304','ifr')"> --%>
<!-- 							<i data-feather="bookmark" class="font-medium-3 me-50"></i> <span -->
<!-- 							class="fw-bold">?????? ?????? ?????? </span> -->
<!-- 					</a></li> -->
					<li class="nav-item"><a class="nav-link" id="M050305"
						onclick="goPage('${webPath}/main/myBook/myWishBook.do','M050305','ifr')">
							<i data-feather="bookmark" class="font-medium-3 me-50"></i> <span
							class="fw-bold">?????? ?????? ?????? </span>
					</a></li>
				</ul>
				<!--/ User Pills -->
			</div>
		</div>
	</section>


	<!-- Project table -->
	<section>
	<c:if test="${!empty rentList }">
<div class="content-header row">
                <div class="content-header-left col-md-9 col-12 mb-2">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h2 class="content-header-title float-start mb-0">MY ????????????</h2>
                            <div class="breadcrumb-wrapper">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item ">Home
                                    </li>
                                    <li class="breadcrumb-item ">My Library
                                    </li>
                                    <li class="breadcrumb-item active"><a href="#">MY ????????????</a>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>

      
	</div>
		<!-- /Project table -->

		<!-- Activity Timeline -->
		<div class="row" id="table-hover-row" style="font-family: 'Noto Sans KR', sans-serif;">
			<div class="col-12 card">
				<div class="card">
					<select class="form-control col-md-3" name="perPageNum"
						id="perPageNum" onchange="list_go(1);" style="display: none;">
						<option value="5">????????????</option>
						<option value="7">7???</option>
						<option value="10">10???</option>
					</select>
					<div class="row col-md-5 " style="padding-top: 20px;">
						<div class="input-group">
							<select class="form-control form-select" name="searchType"
								id="searchType" style="width: 15%;">
								<option value="t" ${cri.searchType eq 't' ? 'selected':'' }>?????????</option>
								<option value="w" ${cri.searchType eq 'w' ? 'selected':'' }>?????????</option>
							</select> <input class="form-control " type="text" name="keyword"
								placeholder="???????????? ???????????????." value="${param.keyword }"
								style="width: 50%;"
								onkeyup="if(window.event.keyCode==13){list_go(1)}" />
								<button class="form-control btn btn-primary btn-outline-secondary waves-effect" style="width:25%;" type="button" onclick="list_go(1);" value="??????" data-card-widget="search"><i class="fa fa-fw fa-search"></i>??????</button>
						</div>
					</div>
				</div>
				<div class="card-body" style="display: none;">
				</div>

				<div class="bs-stepper-header" role="tablist">

					<input type="text" value="${loginUser.mem_id }" name="mem_id"
						style="display: none;" />
				</div>
				<div class="table-responsive table " >
					<table class="table text-center"  style=" table-layout: fixed;" id="table">
						<thead>
							<tr>
								<th >?????????</th>
								<th style="width: 30%">?????????</th>
								<th >??????</th>
								<th>????????????</th>
								<th>????????????</th>
								<th>??????</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${rentList }" var="rent">
								<tr >

							<td onclick="detailGo('${rent.book_no}')"><a> <img src="${rent.book_imgurl}" width="120px;"
											height="150px;" /></a></td>
									
									<td id="book_title" title="${rent.book_title }" onclick="detailGo('${rent.book_no}')"> ${rent.book_title}
										<div id="rent_no" value="${rent.rent_no }"
											style="display: none;"></div>
									</td>
									<td  title="${rent.book_author }" onclick="detailGo('${rent.book_no}')">${rent.book_author}</td>
									<td><fmt:formatDate value="${rent.rent_date }" pattern="yyyy-MM-dd" /></td>
									<td id="due_date" val>
									<fmt:formatDate value="${rent.due_date }" pattern="yyyy-MM-dd" /></td>
									<td>
<%-- 									<c:if test="${rent.is_overdue eq 'N}"> --%>
										<c:if test="${rent.is_return eq 'N' }">
												<c:if test="${rent.is_delay eq 0}">
													<input type="button" class="btn-primary" onclick="returnExtension(${rent.rent_no })" value="?????? ??????" id="${rent.is_delay eq 0}"/>
													
												</c:if> 
												<c:if test="${rent.is_delay eq '1'}">
													<input type="button"  class="btn-warning"
														value="??????  ?????????" onclick="dontOverdue()"/>
												</c:if>
										</c:if>
										<c:if test="${rent.is_return eq 'Y' }">
												<input type="button"  class="btn-success"
														value="?????? ??????" />
										</c:if>
<%-- 									</c:if> --%>
									<c:if test="${rent.is_overdue eq 'Y' }">
										<input type="button"  class="btn-danger"
													value="????????????" onclick="overdue()"/>
									</c:if>
										</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
			</div>
				<div class="card-footer">
		<%@ include file="/WEB-INF/views/include/pagination.jsp"%>
	</div>
	</div>
		<!-- 		</div> -->
		<!-- /Activity Timeline -->

		<!--/ User Content -->
	</c:if>
	</section>


				<c:if test="${empty rentList }">
		               	<div  style="text-align: center; ">
		               	
							<img src="${webPath}/resources/img/empty.png"  >
							<br>
							<hr>
							<a onclick="pageGO('${webPath}/main/ai/recommand1.do','M040000','AI ?????? ??????')" > 
							<img src="${webPath}/resources/img/AI.png"  >
							</a>
							<br>
							<hr>
							<a onclick="pageGO('${webPath}/main/search/bestList.do','M020400','????????? ??????')" >
							<img src="${webPath}/resources/img/best.png" >
							</a>
							<br>
							<hr>
							<a onclick="pageGO('${webPath}/main/search/recommandList.do','M020300','????????? ?????? ??????')">
							<img src="${webPath}/resources/img/recommend.png" >
							</a>
                      		</div>
                      		  <div class="card-body" style="padding-top: 0px; padding-bottom: 0px;">
	                        </div>     
                   	</c:if>
                   	

	<!-- END: content-->


	<!-- Basic Tables end -->
	

	<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

	<script src="${webPath}/resources/js/member.js"></script>

	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>





	<!-- BEGIN: Vendor JS-->
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
	<!-- BEGIN Vendor JS-->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
	
	<!-- BEGIN: Page Vendor JS-->
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/select/select2.full.min.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/cleave.min.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/cleave/addons/cleave-phone.us.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/moment.min.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/responsive.bootstrap5.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/jszip.min.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/pdfmake.min.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/vfs_fonts.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/buttons.html5.min.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/buttons.print.min.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.rowGroup.min.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/polyfill.min.js"></script>
	<!-- END: Page Vendor JS-->
	<!-- END: Page Vendor JS-->

	<!-- BEGIN: Theme JS-->
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
	<!-- END: Theme JS-->

	<!-- BEGIN: Page JS-->
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/cards/card-analytics.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/page-profile.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/modal-edit-user.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-user-view-account.js"></script>
	<script
		src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-user-view.js"></script>
	<!-- END: Page JS-->
	<%@ include file="../../../common/index_js.jsp"%>
	<script src="${webPath}/resources/js/common.js"></script>


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
	
	
function list_go(page, url){
	   if(!url) url="${webPath}/main/myBook/rentList.do";
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
					method : 'get',
				}).submit();
			}
   </script>


	<script>
		  // ?????? ??????????????? ????????? ?????? ????????? ??????????????? ????????????..
		const datebtn = document.querySelector("#filterDate");
		
		datebtn.onclick = () =>{
			
			console.log("??????");

		// ?????? ??????("yyyy-MM-dd") ???????????? ??????
		dateFormatter = function(newDay, today) {
		  var year = newDay.getFullYear()
		  var month = newDay.getMonth()+1
		  var date = newDay.getDate()

		  // ?????? ????????? ????????? ????????? ?????? ?????? 
		  if(today) {
		    let todayDate = today.getDate()

		    if(date != todayDate) {
		      if(month == 0) year-=1
		      month = (month + 11) % 12
		      date = new Date(year, month, 0).getDate()	// ?????? ?????? ????????? ????????? ??????
		    }
		  }

		  month = ("0"+month).slice(-2)
		  date = ("0"+date).slice(-2)

		  return year+"-"+month+"-"+date
		}

		document.getElementsByName("filterDate").forEach(e = > {
		  e.addEventListener('click', function() {  
			
		  var endDate = new Date($("#endDate").val())
		  var newDate = new Date($("#endDate").val())

		  switch(this.value) {
		      case '1':
		        console.log("?????????")
		        newDate.setDate(newDate.getDate() - 7)
		        newDate = dateFormatter(newDate)
		        break;
		      case '2':
		        newDate.setMonth(newDate.getMonth() - 3)
		        newDate = dateFormatter(newDate, endDate)
		        console.log("3??????")
		        break;
		      case '3':
		        newDate.setMonth(newDate.getMonth() - 6)
		        newDate = dateFormatter(newDate, endDate)
		        console.log("6??????")
		        break;
		      case '4':
		        newDate.setFullYear(newDate.getFullYear() - 1)
		        newDate = dateFormatter(newDate, endDate)
		        console.log("1???")
		        break;
		  }
		  $("#startDate").val(newDate)
		    
		  })
		})
		}
		}
		
	</script>

	<script type="text/javascript">
		function extensionRent(booking_no) {
			var bookingNO = booking_no;
			Swal.fire({
				   title: '?????????????????????????',
				   icon: 'info',
				   
				   showCancelButton: true, // cancel?????? ?????????. ????????? ?????? ??????
				   confirmButtonColor: '#3085d6', // confrim ?????? ?????? ??????
				   cancelButtonColor: '#d33', // cancel ?????? ?????? ??????
				   confirmButtonText: '??????', // confirm ?????? ????????? ??????
				   cancelButtonText: '??????', // cancel ?????? ????????? ??????
				   
				   reverseButtons: true, // ?????? ?????? ?????????
				   
				}).then(result => {
				   // ?????? Promise????????? ?????????,
				   if (result.isConfirmed) { // ?????? ??????????????? confirm ????????? ????????????
				   
				      Swal.fire('?????????????????????', 'success');
				   }
				});
		}
	</script>
	

	<script type="text/javascript">
	
	
	function returnExtension(rent_no){
		var url = "${webPath}/main/myBook/returnExtension.do"
		var page = 1;
		var perPageNum = $('select[name="perPageNum"]').val();
		var searchType = $('select[name="searchType"]').val();
		var keyword = $('div.input-group>input[name="keyword"]').val();
// 		var dateForm = rent_date.toLocaleDateString().replace(/\./g, '').split(' ').join('-');
		
		
		var data = {rent_no: rent_no,
				}
		console.log(data);
		
		Swal.fire({
			   title: '?????? ???????????? ?????????????????????????',
			   icon: 'info',
			   
			   showCancelButton: true, // cancel?????? ?????????. ????????? ?????? ??????
			   confirmButtonColor: '#3085d6', // confrim ?????? ?????? ??????
			   cancelButtonColor: '#d33', // cancel ?????? ?????? ??????
			   cancelButtonText: '??????', // cancel ?????? ????????? ??????
			   confirmButtonText: '??????', // confirm ?????? ????????? ??????
			   
			   reverseButtons: false, // ?????? ?????? ?????????
			   
			}).then(result => {
			   // ?????? Promise????????? ?????????,
			   if (result.isConfirmed) { // ?????? ??????????????? confirm ????????? ????????????
				   $.ajax({
					    type: 'GET',
					    url: url,
					    data: data,
					  	success : function (data) {
// 					      alert("????????? ?????????????????????.");
					      Swal.fire({
				                 icon: 'success',
				                 title: '????????? ????????? ?????????????????????.',
				              })
				               .then(function(){
				            	   history.go(0);
				               })
					    },
					    error : function (error) {
					    	 Swal.fire({
				                 icon: 'warning',
				                 title: JSON.stringify(error),
				              })
					    }
				});
			    
			   }else {
				   Swal.fire({
		                 icon: 'info',
		                 title: '????????? ???????????????.',
		              })
// 					alert("????????? ???????????????.")
				}
			});
		
	}
	
	</script>

<script>
function detailGo(bookNo){
	var book_no = bookNo;
	console.log(book_no);
	Swal.fire({
		   title: '????????? ??????????????? ?????????????????????????',
		   icon: 'info',
		   
		   showCancelButton: true, // cancel?????? ?????????. ????????? ?????? ??????
		   confirmButtonColor: '#3085d6', // confrim ?????? ?????? ??????
		   cancelButtonColor: '#d33', // cancel ?????? ?????? ??????
		   confirmButtonText: '??????', // confirm ?????? ????????? ??????
		   cancelButtonText: '??????', // cancel ?????? ????????? ??????
		   
		   reverseButtons: false, // ?????? ?????? ?????????
		   
		}).then(result => {
		   // ?????? Promise????????? ?????????,
		   if (result.isConfirmed) { // ?????? ??????????????? confirm ????????? ????????????
			   goPage('${webPath}/main/search/bookDetail.do?book_no='+book_no,'M020310','ifr');
		   }
		});
	
}

function pageGO(url, mCode, text){
	var url = url;
	var mCode = mCode;
	var text = text;
	
	Swal.fire({
			 title: "",
			text : text +"????????? ?????????????????????????",
		   icon: 'info',
		   
		   showCancelButton: true, // cancel?????? ?????????. ????????? ?????? ??????
		   confirmButtonColor: '#3085d6', // confrim ?????? ?????? ??????
		   cancelButtonColor: '#d33', // cancel ?????? ?????? ??????
		   confirmButtonText: '??????', // confirm ?????? ????????? ??????
		   cancelButtonText: '??????', // cancel ?????? ????????? ??????
		   
		   reverseButtons: false, // ?????? ?????? ?????????
		   
		}).then(result => {
		   // ?????? Promise????????? ?????????,
		   if (result.isConfirmed) { // ?????? ??????????????? confirm ????????? ????????????
				goPage(url,mCode,'ifr');
		   }
		});
	
	}
	
	function dontOverdue(){
		 Swal.fire({
             icon: 'info',
             title: '????????? ????????? ??????????????????.',
          })
//           .then(function(){
//         	  parent.location.href = "http://localhost/readit/common/loginForm.do";
//           })
	}
	function overdue(){
		Swal.fire({
            icon: 'info',
            title: '?????? ????????? ???????????????.',
            text: '?????? ???????????? ?????? ??????????????????..'
         })
		
	}
	
</script>
</body>






