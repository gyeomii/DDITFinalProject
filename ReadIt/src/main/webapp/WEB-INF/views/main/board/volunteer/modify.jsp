<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs5.min.css">

</head>
<body>

<div class="container-xxl">
	<div class="container-fluid" style="padding-top: 50px">
		<div class="card card-outline card-info">
			<div class="col-md-10 col-12" style="margin: auto">
				<div class="card">
					<div class="card-header" style="text-align: center">
						<h4 class="card-title">?????? ????????? ??????</h4>
					</div>
					<div class="divider divider-default">
						<div class="divider-text" style="padding: 0px;"></div>
					</div>
	
					<div class="card-body">
						<div class="row">
							<form enctype="multipart/form-data" role="form" method="post" action="modify.do" name="modifyForm">
							<input type="hidden" name="vb_no" value="${volBoard.vb_no }" />
								<div class="mb-1">
									<label class="form-label" for="smallInput">??????</label> 
									<input id="title" class="form-control form-control-sm" type="text" name="vb_title" placeholder="Large Input" 
										   value="${volBoard.vb_title}">
								</div>
								<div class="mb-1">
									<label class="form-label" for="smallInput">?????????</label>
									<input id="defaultInput" class="form-control form-control-sm" name="vb_writer" value="${volBoard.vb_writer}" type="text" 
										   placeholder="Normal Input">
								</div>
								<div>
									<label class="form-label" for="largeInput">??????</label>
								</div>
								<div>
									<textarea class="textarea" name="vb_content" id="vb_content" rows="20" cols="90" placeholder="1000??? ????????? ???????????????." 
											  style="display: none;">${fn:escapeXml(volBoard.vb_content)}</textarea>
								</div>
								<div class="form-group">								
									<div class="card card-outline card-success">
										<div class="card-header">
											<h5 style="display:inline;line-height:40px;">???????????? : </h5>
											&nbsp;&nbsp;
											<button class="btn btn-xs btn-primary" onclick="addFile_go();"	type="button" id="addFileBtn">?????? ??????</button>
										</div>									
										<div class="card-footer fileInput">
										  <ul class="mailbox-attachments d-flex align-items-stretch clearfix">
											<!-- ???????????? ????????? -->
											<c:forEach items="${volBoard.attachList }" var="attach" >
												<li class="attach-item thumb${attach.ano }" file-name="${attach.fileName }" target-ano="${attach.ano }">																			
												<div class="mailbox-attachment-info ">
													<a class="mailbox-attachment-name" name="attachedFile" attach-fileName="${attach.fileName }" 
													   attach-no="${attach.ano }" href="#" onclick="return false "  >													
														<i class="fas fa-paperclip"></i>
														${attach.fileName }&nbsp;&nbsp;
														<button type="button" onclick="removeFile_go('thumb${attach.ano}');return false;" 
															    style="border:0;outline:0;" class="badge bg-red">X</button>
														<!-- return false; event propagation??? ???????????? ?????????. ????????? button?????? a????????? ???????????? ????????? -->																									
													</a>													
												</div>
											</li>	
											</c:forEach>	
										  </ul>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div style="text-align: center;">
			<button type="button" id="registBtn" class="btn btn-primary" onclick="modify_go();">??? ???</button>
			<button type="button" id="cancelBtn" class="btn btn-dark" onclick="CloseWindow();">??? ???</button>
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
	<!-- END: Page Vendor JS-->

	<!-- jQuery -->
	<script src="<%=request.getContextPath()%>/resources/jquery/jquery.min.js"></script>
	<!-- BEGIN: Theme JS-->
	<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
	<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
	<!-- END: Theme JS-->
	<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs5.min.js"></script>
	<!-- BEGIN: Page JS-->
	<!-- END: Page JS-->

<script>
window.onload=function(){
	summernote_go($('#vb_content'),'<%=request.getContextPath()%>');
}
</script>

<script>
function modify_go(){
	
	var form = $('form[name="modifyForm"]');
	
	//????????? ??????
	if($("input[name='title']").val()==""){
		alert(input.name+"??? ???????????????.");
		$("input[name='title']").focus();
		return;
	}
	
	//?????? ????????????
	var files = $('input[name="uploadFile"]');
	for(var file of files){
		console.log(file.name+" : "+file.value);
		if(file.value==""){
			alert("????????? ???????????????.");
			file.click();
			return false;
		}
	}	
	form.submit();
	window.opener.parent.location.reload();
}

function removeFile_go(className){
	var li = $('li.' + className);
	if(!confirm(li.attr("file-name")+"??? ?????? ?????????????????????????")){
		return;
	}
	
	li.remove();
	
	var input=$('<input>').attr({
		"type" : "hidden",
		"name" : "deleteFile",
		"value" : li.attr("target-ano")
	});
	$('form[role="form"]').prepend(input);
}

var dataNum=0;

function addFile_go(){
	
	var attachedFile = $('a[name="attachedFile"]').length;
	var inputFile = $('input[name="uploadFile"]').length;
	var attachCount = attachedFile + inputFile;

	if(attachCount >= 5){
		alert("??????????????? 5???????????? ???????????????.");
		return;
	}
	
	var div=$('<div>').addClass("inputRow").attr("data-no",dataNum);
	var input=$('<input>').attr({"type":"file","name":"uploadFile"}).css("display","inline");
	
	var button="<button onclick='remove_go("+dataNum+");' style='border:0;outline:0; text-align:center;' class='btn btn-danger btn-sm' type='button'>X</button>";
	
	div.append(input).append(button);
	$('.fileInput').append(div);
	
	dataNum++;
}

function remove_go(dataNum){
	$('div[data-no="'+dataNum+'"]').remove();
}
</script>

<script>	
	function CloseWindow(){	
		window.close();
	}
</script>