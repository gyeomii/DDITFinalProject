
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
<meta name="description"
	content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
<meta name="keywords"
	content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="PIXINVENT">
<title>Swiper - Vuexy - Bootstrap HTML admin template</title>
<link rel="apple-touch-icon"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600"
	rel="stylesheet">

<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/swiper.min.css">
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
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-swiper.css">
<!-- END: Page CSS-->

<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
<!-- END: Custom CSS-->

</head>

<style>
 .feather-arrow-down{
    width: 20px;
    height: 20px;
}
 .feather-users{
    width: 20px;
    height: 20px;
    }
 .feather-check-circle{
    width: 16px;
    height: 14px;
    }
</style>

<body>
<div class="container">
			<div class="card" style="margin-top: 30px; min-height: 600px; min-width: 750px;">
				<div style="float: left;"></div>
				<div class="demo-inline-spacing" style="float: right;">
					<span class="badge bg-primary"> <i data-feather="star" class="me-25"></i> <span>??????</span></span>
				</div>
				<div style="float: right;">
					<h3 class="card-title" style="text-align: center; font-style: oblique;">${volBoard.vb_title}</h3>
				</div>

				<div class="card-body" style="min-height: 400px">
					<div class="d-flex" style="float: right; padding-right: 30px;">
						<div class="avatar me-50">
							<img src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/portrait/small/avatar-s-7.jpg" 
								  alt="" width="24" height="24">
						</div>
						<div class="author-info">
							<small class="text-muted me-25">by</small>
							<small><a href="#" class="text-body">${volBoard.vb_writer}</a></small>
							<span class="text-muted ms-50 me-25">|</span>
							<small class="text-muted">?????????</small>
							<small><a href="#" class="text-body">
							<fmt:formatDate value="${volBoard.vb_regdate }" pattern="yyyy-MM-dd"/></a></small>
						</div>
						
					</div>
					<br/>
					<hr>
					<div class="author-info" style="padding: 20px; min-height: 400px;">${volBoard.vb_content}</div>
					<div class="form-group col-sm-12">
							<div class="card card-outline card-success">	
								<div>
								<hr>
									<div class="row">
										<!-- ???????????? ????????? -->
										<c:forEach items="${volBoard.attachList }" var="attach">
										<div class="col-xl-2 col-md-4 col-sm-5">
											<div class="card bg-primary text-white h-75" style="cursor:pointer;" onclick="location.href=
												 '<%=request.getContextPath()%>/main/board/volBoard/getFile.do?ano=${attach.ano }';">
												<div class="card-body">
													
													<span class="card-text"><i data-feather='file'></i>&nbsp;${attach.fileName }</span>
												</div>
											</div>
										</div>
										</c:forEach>
									</div>
								</div>				
							</div>
						</div>
					<div class="dropdown blog-detail-share">
				<sec:authorize access="hasRole('ROLE_ADMIN')"> 			
						<button type="button" class="btn btn-warning waves-effect waves-float waves-light" data-bs-toggle="modal" id="applyList"
								style="margin-left: 10px; margin-right: 170px;" data-bs-target="#shareProject" >????????? ?????? ??????</button>
				</sec:authorize>			
				
				<button type="button" id="cancelBtn" class="btn btn-secondary" onclick="CloseWindow();" style="float: right; margin: 1px;">??? ???</button>
				<button type="button" onclick="javascript:application_go('${volBoard.vb_no}')" id="application" class="btn btn-info" style="float: right; margin: 1px;">????????????</button>
				
				<sec:authorize access="hasRole('ROLE_ADMIN')"> 		
							<button type="button" id="modifyBtn" class="btn btn-success" onclick="modify_go('${volBoard.vb_no}');" style="float: right; margin: 1px;">??? ???</button>
							<button type="button" id="removeBtn" class="btn btn-danger" onclick="remove_go('${volBoard.vb_no}');" style="float: right; margin: 1px;">??? ???</button> 
				</sec:authorize>
						<!-- <div class="col-lg-12 col-sm-12 text-lg-end text-center"> -->
							<%-- <button type="button" class="btn btn-outline-success waves-effect" data-bs-toggle="modal"
							        onclick="javascript:applyList_go('${volApply.vb_no}')" id="applyList" > ????????? ?????? ??????</button> --%>
													<!-- </div> -->
					</div>
				</div>
			</div>
	</div>
	<!-- END: Content-->


	<!-- share project modal -->
                <div class="modal fade" id="shareProject" tabindex="-1" aria-labelledby="shareProjectTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-lg">
                        <div class="modal-content" style="min-height: 400px;">
                            <div class="modal-header bg-transparent">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body" style="margin: 10px; margin-left: 60px; margin-right: 60px;" >
                                <h2 class="text-center mb-1" id="shareProjectTitle"><i data-feather='arrow-down' style="color: skyblue;"></i>
                                	&nbsp;?????? ????????? ??????&nbsp;
                                	<i data-feather='arrow-down' style="color: hotpink;"></i></h2>
                                <p class="text-center" style="margin-bottom: 12px; margin-top:25px; font-size: 15px;">?????? ?????? ????????? ???????????? <br> ?????? ???????????? ??????????????????. </p>
                                	<!-- <i data-feather='check-circle' style="color: forestgreen;"></i> -->

                                <p class="fw-bolder pt-50 mt-2" style="font-size: 16px; margin-bottom: 0px;"><i data-feather='users' style="color: dodgerblue;"></i>&nbsp;?????????</p>

                               <form role="form" class="row gy-1 pt-75" method="post" name="applyConfirmForm" id="applyConfirmForm" 
                               		  style="margin-top: 0px; margin-right: 2px; margin-left: 0px; margin-bottom: 20px;">
                               		<ul class="list-group list-group-flush mb-2">
	                                    <c:forEach items="${volApply}" var="volList">
		                                    <li class="list-group-item d-flex align-items-start border-0 px-0">
		                                        <div class="d-flex align-items-center justify-content-between w-100">
		                                            <div class="me-1">
		                                                <h5 class="mb-25">${volList.mem_id}</h5>
		                                            </div>
		                                            <div class="dropdown">
	                                                	<input type="hidden" id="mem_id" name="mem_id" value="${volList.mem_id}">
		                                           		<label class="form-label fw-bolder font-size font-small-4 mb-50" for="addMemberSelect"> &nbsp;?????? ??????</label>
							                                <select class="select2 form-select" id="is_approved" style="width: 120px;" name="is_approved">
							                                	 <option value="0" ${volList.is_approved == '0' ? 'selected="selected"' : '' }>????????????</option>
							                                     <option value="1" ${volList.is_approved == '1' ? 'selected="selected"' : '' }>??????</option>
							                                     <option value="2" ${volList.is_approved == '2' ? 'selected="selected"' : '' }>????????????</option>
							                                </select>
		                                            </div>
		                                        </div>
		                                    </li>
	                                    </c:forEach>
                          			</ul>
                               </form>
                                <!--/ member's list  -->

                                <!-- project link -->
                                <div class="d-flex align-content-center justify-content-between flex-wrap" style="margin-top: 10px;">
                                    <div class="d-flex align-items-center me-2" style="margin-bottom: 5px; margin-top: 20px; color: deepskyblue;">
                                        <i data-feather="users" class="font-medium-2 me-50"></i>
                                        <p class="fw-bolder mb-0" >?????? ????????? ???????????? ???????????????.</p>
                                    </div>
									<div>
										 <button class="btn btn-warning" type="button" id="applyComplete"  onclick="sendMember();"
										         aria-expanded="false" style="margin-top: 17px; margin-left: 250px; margin-bottom:10px; width: 110px; 
										         height: 35px; padding-top: 9px;">
	                                             <span style=>?????? ??????</span></button>
									</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- / share project modal -->
          <!--/ member's list  -->
  
    <!--     </div>
      </div>
    </div>
  </div> -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<div class="sidenav-overlay"></div>
	<div class="drag-target"></div>

	<!-- BEGIN: Vendor JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
	<!-- BEGIN Vendor JS-->

	<!-- BEGIN: Page Vendor JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
	<!-- END: Page Vendor JS-->

	<!-- BEGIN: Theme JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/resources/js/common.js"></script>
	<!-- END: Theme JS-->
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
	
	<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/modal-share-project.js"></script>
	<!-- BEGIN: Page JS-->
	<!-- END: Page JS-->

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
		function modify_go(vb_no) {
			location.href = "modifyForm.do?vb_no=" + vb_no;
		}

		function remove_go(vb_no) {
			location.href = "remove.do?vb_no=" + vb_no;
		}
		
		function application_go(vb_no) {
			var loginInfo = '${loginUser.mem_id}';
			if(loginInfo == ''){
				alert("????????? ??? ?????? ???????????????.")
				window.close();
				opener.parent.location.href = "http://localhost/readit/common/loginForm.do";
			}else{
				<c:choose>
					<c:when test="${duplicateCheck}">
					Swal.fire({
					       icon: 'error',
					       title: '?????? ??????.',
					       text: '?????? ????????? ????????? ????????????.'
					 	}).then(function(){
					 		window.close();
					 		opener.location.href ="<%=request.getContextPath()%>/main/myInfo/myPage.do"
					 		})
					</c:when>
					<c:otherwise>
						location.href = "application.do?vb_no=" + vb_no;
					</c:otherwise>
				</c:choose>
			}
		}
	</script>		

	<script>
		function sendMember(){
			if(volApplyVo.is_approved == 1){
				
			}
		}
	
	</script>

	<script>
	$(document).ready(function() {
		$('#applyComplete').click(function() {
			
			form = $('#applyConfirmForm').serialize();
			console.log(form);
			//?????? ?????? ? ?????? ?????? ??????????????? ??????
			if(location.href.indexOf("?") == -1 ){
				alert("?????? ??????????????? ");
				return;
			}		
			var vb_no = location.href.split("?")[1].split("&")[0].split("=")[1];
			//alert(vb_no);
			
			console.log("k1",form);
			form = form.split("&");
			console.log(form);
			var arrData = [];
			for(var i=0; i<form.length; i++){
			   if( i % 2 == 0){
				   var volApplyVo = {};
				   volApplyVo.mem_id = form[i].split("=")[1];				   
			   }else {
				   volApplyVo.is_approved = form[i].split("=")[1];
				   volApplyVo.vb_no = vb_no
				   arrData.push(volApplyVo);
			   }
			}
			console.log("??????:",arrData);
					
			$.ajax({
	            type : "post",
	            url : "<%=request.getContextPath()%>/main/board/volBoard/applyConfirm.do",
	            data : JSON.stringify(arrData),
	            contentType:"application/json;charset=utf-8",
	            dataType : 'text',
	            success : function(data) {
	            	if(data == "OK"){
	            		Swal.fire({
	            		       icon: 'success',
	            		       title: '????????????',
	            		       text: '?????? ?????????????????????.'
	            		 	}).then(function(){
	            		 		window.close();
	            		 		})
	            		
	            	}
	            },
	            error : function(request, status, error) {
	            	alert("?????? ?????? ????????? ?????? ???????????????.");
	            }
	         }); 
		});
	});
	</script>	
	
	<script>
	 $(document).ready(function() {
		// ????????? 
		// ?????????id??????
        var modal = document.getElementById('shareProject');
        // ??????id??????
        var btn = document.getElementById("applyList");
        // ??????
        var close = document.getElementsByClassName("modal_close")[0];                                          
        //????????????????????? ????????? block
        btn.onclick = function() {
            modal.style.display = "block";
        }
        // close_btn????????? ?????????none
        close.onclick = function() {
            modal.style.display = "none";
        }
        // ???????????? ????????? ?????? ??????
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    });
	</script>
		
	<script>	
		<c:if test="${from eq 'modify'}">
		alert("?????????????????????.");
		</c:if>
		<c:if test="${from eq 'remove'}">
		alert("?????????????????????.")
		window.close();
		window.opener.location.reload();
		</c:if>
	</script>
	
