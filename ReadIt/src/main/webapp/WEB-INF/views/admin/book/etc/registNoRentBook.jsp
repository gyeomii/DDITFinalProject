<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
<meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
<meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="PIXINVENT">
<title>Checkout - Vuexy - Bootstrap HTML admin template</title>
<link rel="apple-touch-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/wizard/bs-stepper.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/spinner/jquery.bootstrap-touchspin.css">
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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/app-ecommerce.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-pickadate.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-wizard.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-toastr.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-number-input.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/page-knowledge-base.css">

<!-- END: Page CSS-->

<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
<!-- END: Custom CSS-->
<style>
.ajax-loader {
  display: none;  /* ?????? ????????? ??? ????????? */
  position: fixed;
  background-color: rgba(0,0,0,0.7);
  z-index: +100 !important;
  width: 100%;
  height:100%;
}

.ajax-loader img {
  position:relative;
  top:40%;
  left:40%;
}
</style>
</head>
<body style="max-height: 780px;">
<div class="ajax-loader">
  <img src="<%=request.getContextPath() %>/resources/images/?????????.gif" class="img-responsive" />
</div>
<div class="container" style="margin-top: 15px;">
	<div class="row">
		<div class="col-6">
		    <!-- Knowledge base Jumbotron -->
		    <section id="knowledge-base-search">
		        <div class="row">
		            <div class="col-12">
		                <div class="card knowledge-base-bg text-center" style=" height: 100px; background-color: white !important;  background-image: url('<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/banner/parallax-4.jpg')">
		                    <div class="card-body" style="padding-top: 15px;">
		                        <h2 class="text-primary">?????? ??????</h2>
		                        <div class="kb-search-input" >
		                            <div class="input-group input-group-merge" style="height:40px; width:auto">
		                                <span class="input-group-text"><i data-feather=""></i></span>
		                                <input type="text" class="form-control " id="keyword" placeholder="ISBN??? ???????????????." onkeyup="if(window.event.keyCode==13){bookSearch()}"/>
		                                <button type="button" class="form-control btn-primary" onclick="bookSearch()">??????</button>
		                            </div>
		                       </div> 
		                    </div>
		                </div>
		            </div>
		        </div>
		    </section>
		    <!--/ Knowledge base Jumbotron -->
		    <hr/>
			<div id="searchResult" style="overflow: auto;height: 500px; background-image: url('<%=request.getContextPath()%>/resources/img/????????????.png')">
				<!-- searchList Start -->
			</div>
			<hr/>
		</div>
		<div class="col-6">
			<div class="card-header">
				<h4 class="card-title">?????? ?????? ?????? ??????</h4>
				<p class="card-text">
					ISBN??? ???????????????.<br/>
					?????????????????? ????????? ???????????? ???????????? ???????????????.<br/>
					??????????????? ?????? ????????? ????????? ?????? ?????? ?????? ???????????????.
				</p>
			</div>
			<hr/>
			<!-- form start -->
			<form action="regist.do" method="post">
				<input type="hidden" name="mem_id" value="${loginUser.mem_id}">
				<div class="card-body">
					<div class="row">
						<div class="col-12">
						</div>
						<div class="col-12">
							<div class="mb-1">
    	                        <label class="form-label" for="helperText">??????</label>
        	                    <input type="text" id="form-title" name="wish_title" class="form-control" placeholder="?????????" />
            	                <p><small class="text-muted">???????????? ???????????? ????????????.</small></p>
                	        </div>
						</div>
						<div class="col-12">
							<div class="mb-1">
    	                        <label class="form-label" for="helperText">??????</label>
        	                    <input type="text" id="form-author" name="wish_author" class="form-control" placeholder="??????" />
            	                <p><small class="text-muted">????????? ???????????? ????????????.</small></p>
                	        </div>
						</div>
						<div class="col-12">
							<div class="mb-1">
    	                        <label class="form-label" for="helperText">?????????</label>
        	                    <input type="text" id="form-publisher" name="wish_publisher" class="form-control" placeholder="?????????" />
            	                <p><small class="text-muted">???????????? ???????????? ????????????.</small></p>
                	        </div>
						</div>
						<div class="col-12">
							<div class="mb-1">
    	                        <label class="form-label" for="helperText">ISBN</label>
        	                    <input type="text" id="form-isbn" name="book_isbn" class="form-control" placeholder="ISBN" />
            	                <p><small class="text-muted">ISBN??? ???????????? ????????????.</small></p>
                	        </div>
						</div>
						<div class="col-12">
						<!-- ????????? ????????? ?????? ???????????? ?????? -->
							<div class="mb-1">
    	                        <label class="form-label" for="helperText">?????? ??????</label>
    	                        <select class="form-control form-select" name="state_code" id="state_code" style="width:25%;">
													<option value="9">??????/????????????</option>
													<option value="10">???????????????</option>
													<option value="11">????????????</option>
													<option value="12">??????/????????????</option>
												</select>
<!-- 		        	            <input type="text" id="form-etc" name="wish_note" class="form-control" placeholder="??????" /> -->
            	                <p><small class="text-muted">??????????????? ??????????????????.</small></p>
                	        </div>
						</div>
					</div>
					<input type="submit" value="??????" class="btn btn-primary">
					
				</div>
			</form>
			<!-- form end -->
		</div>
	</div>
</div>
<%@ include file="./handlebarsSearchTemplate.jsp" %>

<script	src="<%=request.getContextPath()%>/resources/jquery/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<!-- END: Content-->
    <!-- BEGIN: Vendor JS-->
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
<!-- BEGIN Vendor JS-->

<!-- BEGIN: Page Vendor JS-->
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/wizard/bs-stepper.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/spinner/jquery.bootstrap-touchspin.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/toastr.min.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Theme JS-->
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
<!-- END: Theme JS-->

<!-- BEGIN: Page JS-->
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-ecommerce-checkout.js"></script>
<!-- handlebars Template -->
<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
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
function toForm(target){
	console.log(target.querySelector("#title"));
	var title = target.querySelector("#title").value;
	var author = target.querySelector("#author").value;
	var publisher = target.querySelector("#publisher").value;
	var isbn = target.querySelector("#isbn").value;
	$('input#form-title').val(title);
	$('input#form-author').val(author);
	$('input#form-publisher').val(publisher);
	$('input#form-isbn').val(isbn);
}
</script>


<script>
	var pageNum = 1;
	
	function bookSearch(){
// 		alert("????????????");
	$("#searchResult").scrollTop(0);//????????? ??? ??????
	
	var keyword = document.getElementById('keyword').value;
	console.log("?????????(isbn)"+keyword);
	var c_disp = document.getElementById("disp");
	var data = {book_isbn:keyword};
	
	var myUrl = "<%=request.getContextPath()%>/admin/bookManage/searchBook.do";
		$.ajax({
			url : myUrl,
			type : 'GET',
			async : true,
			data : data,

			success : function(result) {
				console.log("?????????????" + result);
				console.log("data??? ???" + data);
				console.log(result);
				var item = result[0]
				console.log(item);
				
				var template = Handlebars.compile($('#searchBook-list-template').html());
				var htmlCode = template(result);
				$('.checkout-items').remove();
				$('#searchResult').css('background-image', 'url("")');
				$('#searchResult').append(htmlCode);
			},
			
			error : function(error) {
				console.log(error);
			}
		});

	};
</script>

<c:if test="${from eq 'regist'}">
   <script>
		alert("?????????????????????.");
		window.close();
		window.opener.location.reload();
   </script>
</c:if>

</body>
</html>