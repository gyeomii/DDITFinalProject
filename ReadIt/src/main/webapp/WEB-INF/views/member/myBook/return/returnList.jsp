<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="returnList" value="${dataMap.returnList }"/>
<c:set var="pageMaker" value="${dataMap.pageMaker }"/>
<c:set var="cri" value="${pageMaker.cri }"/>


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
<title>Dashboard ecommerce - Vuexy - Bootstrap HTML admin
	template</title>
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
</head>
<body class="container-xxl">


	<!-- User Content -->
	<section class="app-user-view-account">
		<div class="row">
			<div class="col-xl-12 col-lg-7 col-md-7 order-0 order-md-1">
				<!-- User Pills -->
				<ul class="nav nav-pills mb-2">
					<li class="nav-item"><a class="nav-link " id="M050301"
						onclick="goPage('<%=request.getContextPath()%>/main/myBook/rentList.do','M050301','ifr');">
							<i data-feather="user" class="font-medium-3 me-50"></i> <span
							class="fw-bold">MY 도서 대출</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" id="M050302"
						onclick="goPage('<%=request.getContextPath()%>/main/myBook/reviewList.do','M050302','ifr')">
							<i data-feather="bookmark" class="font-medium-3 me-50"></i> <span
							class="fw-bold">MY 리뷰</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" id="M050303"
						onclick="goPage('<%=request.getContextPath()%>/main/myBook/waitingList.do','M050303','ifr')">
							<i data-feather="lock" class="font-medium-3 me-50"></i> <span
							class="fw-bold">MY 도서 예약</span>
					</a></li>
					<li class="nav-item "><a class="nav-link active" id="M050304"
						onclick="goPage('<%=request.getContextPath()%>/main/myBook/returnList.do','M050304','ifr')">
							<i data-feather="bookmark" class="font-medium-3 me-50"></i> <span
							class="fw-bold">도서 반납 신청 </span>
					</a></li>
					<li class="nav-item"><a class="nav-link" id="M050305"
						onclick="goPage('<%=request.getContextPath()%>/main/myBook/myWishBook.do','M050305','ifr')">
							<i data-feather="bookmark" class="font-medium-3 me-50"></i> <span
							class="fw-bold">비치 희망 도서 </span>
					</a></li>
				</ul>
				<!--/ User Pills -->
			</div>
		</div>
	</section>

	<!-- Project table -->
		<div class="card">
			<h4 class="card-header">도서 반납 신청</h4>
			<p class="card-text">
				<code class="highlighter-rouge">   배송으로 도서 반납 신청이 가능한 리스트입니다.</code>
			</p>
			<div>
				<button class="btn btn-warning waves-effect waves-float waves-light" type="button" style="margin: 10px;" onclick="checkAll()">전체선택하기</button> 
				<input class="btn btn-primary waves-effect waves-float waves-light" id="returnFormBtn" onclick="getBookNo()"
<%-- 						onclick="OpenWindow('<%=request.getContextPath()%>/main/myBook/returnList/returnForm.do', '배송반납서비스신청', 1000, 800);" style="margin: 10px; float: right;" type="button" value="배송 반납 서비스 신청"/> --%>
						style="margin: 10px; float: right;" type="button" value="배송 반납 서비스 신청"/>
			</div>
			<div class="table">
				<table class="table ">
					<thead style="text-align: center;">
						<tr>
							<th></th>
							<th>이미지</th>
							<th>책 제목</th>
							<th class="text-nowrap">대출일</th>
							<th>반납 예정일</th>
							<th style="display: none;"></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${returnList }" var="returnList" varStatus="status">
						<tr class="bookList${status.index}">
							<td style="width: 50px; ">
								<div style=" margin-left: 20px;" class="form-check form-check-inline">
                                	<input class="form-check-input" type="checkbox"  name="checkedValue" id="checkedValue" value=""  checked>
                                </div> 
                            </td>
							<td style="width: 120px;">
								<img src="${returnList.book_imgurl }" class="me-75" height="150" width="100" alt="Angular"/>
							</td>
							<td>
								<span class="fw-bold">"${returnList.book_title }"  </span>
								
							</td>
							<td>
								
								<span class="fw-bold"><fmt:formatDate pattern="yyyy-MM-dd" value="${returnList.rent_date }"/></span>
<!-- 								<input type='text' id='currentDate' /> -->
							</td>
							<td>
								<span class="fw-bold"><fmt:formatDate pattern="yyyy-MM-dd" value="${returnList.due_date }"/></span>
<!-- 								<input type='text' id='lateDate' /> -->
							</td>
							<td style="display: none;">
								<input type="hidden" id="book_no" value="${returnList.book_no }"/>
							</td>
						</tr>
						</c:forEach>
					</tbody>

				</table>
			</div>
		</div>
		<!-- /Project table -->

		<!-- Activity Timeline -->
<!-- 		<div class="card"> -->
<!-- 			<h4 class="card-header">반납 페이지</h4> -->
<!-- 			<div class="table"> -->
<!-- 				<table class="table "> -->
<!-- 					<thead> -->
<!-- 						<tr> -->
<!-- 							<th></th> -->
<!-- 							<th></th> -->
<!-- 							<th>책 제목</th> -->
<!-- 							<th class="text-nowrap">대출일</th> -->
<!-- 							<th>반납 예정일</th> -->
<!-- 						</tr> -->
<!-- 					</thead> -->
<!-- 					<tbody> -->
<!-- 						<tr> -->
<!-- 							<td style="width: 50px; "> -->
<!-- 								<div style=" margin-left: 20px;" class="form-check form-check-inline"> -->
<!--                                    	<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="checked" checked=""> -->
<!--                                 </div>  -->
<!--                             </td> -->
<!-- 							<td style="width: 120px;"> -->
<%-- 								<img src="<%=request.getContextPath()%>/resources/images/안녕자두야.jpg" class="me-75" height="150" width="100" alt="Angular"/> --%>
<!-- 							</td> -->
<!-- 							<td> -->
<!-- 								<span class="fw-bold">안녕 자두야 </span> -->
<!-- 							</td> -->
<!-- 							<td> -->
<!-- 								<input type='text' id='currentDate' /> -->
<!-- 							</td> -->
<!-- 							<td> -->
<!-- 								<input type='text' id='lateDate' /> -->
<!-- 							</td> -->
<!-- 						</tr> -->
<!-- 						<tr> -->
<!-- 							<td style="width: 50px; "> -->
<!-- 								<div style=" margin-left: 20px;" class="form-check form-check-inline"> -->
<!--                                 <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="checked" checked=""> -->
<!--                             	</div>  -->
<!--                             </td> -->
<!-- 							<td style="width: 120px;"> -->
<%-- 								<img src="<%=request.getContextPath()%>/resources/images/안녕자두야.jpg" class="me-75" height="150" width="100" alt="Angular"/> --%>
<!-- 							</td> -->
<!-- 							<td> -->
<!-- 								<span class="fw-bold">안녕 자두야 </span> -->
<!-- 							</td> -->
<!-- 							<td> -->
<!-- 								<input type='text' id='currentDate' /> -->
<!-- 							</td> -->
<!-- 							<td> -->
<!-- 								<input type='text' id='lateDate' /> -->
<!-- 							</td> -->
<!-- 						</tr> -->

<!-- 					</tbody> -->

<!-- 				</table> -->
<!-- 			</div> -->
<!-- 		</div> -->
		
		<!-- /Activity Timeline -->

<!-- 도서 반납 서비스 -->
	<!-- / refer and earn modal -->
		

	<!-- END: content-->


	<!-- Basic Tables end -->
	
<form id="returnForm">
	<input type="hidden" name="mem_id" value="" />
	<input type="hidden" name="book_no" value="" />
</form>
	<div class="card-footer"></div>

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
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
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
	<!-- END: Page Vendor JS-->
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
	<!-- END: Page JS-->

	<script	src="<%=request.getContextPath()%>/resources/jquery/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
	<%@ include file="../../../common/index_js.jsp"%>
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
		var bookNoList = "";
	function getBookNo(){
		var rowData = new Array();
		var checkbox = $("input[name=checkedValue]:checked");
		
		checkbox.each(function(i){
			console.log(i);
			// checkbox.parent() : checkbox의 부모는 <td>이다.
			// checkbox.parent().parent() : <td>의 부모이므로 <tr>이다.
			var tr = checkbox.parent().parent().parent().eq(i);
			var td = tr.children().children();
// 			console.log(tr);
// 			console.log(td);
			
			// 체크된 row의 모든 값을 배열에 담는다.
			rowData.push(tr.text());
// 			console.log(rowData);
			
			// td.eq(0)은 체크박스 이므로  td.eq(1)의 값부터 가져온다.
			var bookImg  = td.eq(1).text()+", ";
			var bookTitle = td.eq(2).text()+", ";
			var deachul = td.eq(3).text()+", ";
			var bannap = td.eq(4).text()+", ";
			var bookNo = td.eq(5).val();
			var tdArrResult= {};
			// 가져온 값을 배열에 담는다.
// 			tdArrResult.push(bookImg);
// 			tdArrResult.push(bookTitle);
// 			tdArrResult.push(deachul);
// 			tdArrResult.push(bannap);
			//tdArrResult['book_no'] = bookNo;
			
			if( i == 0){
				bookNoList += "bookNo="+bookNo;
			}else{
				bookNoList += "&bookNo="+bookNo;
			}
			console.log(bookNoList);
			
// 			console.log("bookImg : " + bookImg);
// 			console.log("bookTitle : " + bookTitle);
// 			console.log("deachul : " + deachul);
// 			console.log("bannap : " + bannap);
		});
		
		
		
<%-- 		$.ajax({
			url: '<%=request.getContextPath()%>/main/myBook/returnList/returnForm.do',
			type: 'post',
			data: JSON.stringify(tdArr),
			contentType : "application/json;charset=utf-8",
			success: function(data){
				alert("성공?");
			},
			error: function(error){
				alert("errrrrr");
			}
			
		}) --%>
		
		
// 		console.log(tdArr);
		
		goReturnForm('form');
	}
	
	function goReturnForm(type){
		var url = "<%=request.getContextPath()%>/main/myBook/returnList/returnForm.do?"+bookNoList;
		console.log(url);
		
		var checked = document.querySelectorAll('input[name="checkedValue"]:checked');
		var cob_checked = checked.length;
	// 	console.log(cob_checked);
		
		if(type == 'form' && cob_checked != 0){
<%-- 			url = OpenWindow('<%=request.getContextPath()%>/main/myBook/returnList/returnForm.do', '배송반납서비스신청', 1000, 800); --%>
			OpenWindow(url, '배송반납서비스신청', 1000, 800);
		}else if(type == 'form' && cob_checked == 0){
			alert("선택된 항목이 없습니다.");
			return false;
		}
		bookNoList = "";
	}
	
// }

//체크박스 전체 선택,

function checkAll() {
	var obj = document.getElementsByName('checkedValue');
	if (obj.length > 0){
		for( var i=0; i< obj.length; i++) {
			if (obj[i].checked == false){
				obj[i].checked = true;
			}else{
				obj[i].checked = false;
			}
		}
	}
}





</script> 





