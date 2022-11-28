<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
<title>Readit</title>
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
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/summernote/summernote-bs5.min.css">


</head>
<body>

	<div class="container-xxl">
		<div class="container-fluid" style="padding-top: 50px">
			<div class="card card-outline card-info">
				<div class="col-md-10 col-12" style="margin: auto">
					<div class="card">
						<div class="card-header" style="text-align: center">
							<h4 class="card-title">봉사 모집 게시글 등록</h4>
						</div>
						<div class="divider divider-default">
							<div class="divider-text" style="padding: 0px;"></div>
						</div>


						<div class="card-body">
							<div class="row">
								<form enctype="multipart/form-data" role="form" method="post"
									action="regist.do" name="registForm">
									<input type="hidden" name="mem_id" value="${loginUser.mem_id}">
									<div class="mb-1">
										<label class="form-label" for="smallInput">제목</label> <input
											id="title" class="form-control form-control-sm" type="text"
											name="title" placeholder="Large Input">
									</div>
									<div class="mb-1">
										<label class="form-label" for="smallInput">작성자</label> <input
											id="defaultInput" class="form-control form-control-sm"
											name="writer" value="" type="text" placeholder="Normal Input">
									</div>
									<div>
										<label class="form-label" for="largeInput">내용</label>
									</div>
									<div>
										<textarea class="textarea" name="content" id="vb_content"
											rows="20" cols="90" placeholder="1000자 내외로 작성하세요."
											style="display: none;"></textarea>
									</div>
									<div class="form-group">
										<div class="card card-outline card-success">
											<div class="card-header">
												<h5 style="display: inline; line-height: 40px;">첨부파일 :
												</h5>
												&nbsp;&nbsp;
												<button class="btn btn-xs btn-primary"
													onclick="addFile_go();" type="button" id="addFileBtn">파일
													추가</button>
											</div>
											<div class="card-footer fileInput"></div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div style="text-align: center;">
				<button type="button" id="registBtn" class="btn btn-primary"
					onclick="regist_go();">등 록</button>
				<button type="button" id="cancelBtn" class="btn btn-dark"
					onclick="CloseWindow();">닫 기</button>
			</div>
		</div>
	</div>
	<!-- END: Content-->

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

	<!-- jQuery -->
	<script
		src="<%=request.getContextPath()%>/resources/jquery/jquery.min.js"></script>
	<!-- BEGIN: Theme JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
	<!-- END: Theme JS-->
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/summernote/summernote-bs5.min.js"></script>
	<!-- BEGIN: Page JS-->
	<!-- END: Page JS-->


	<script>
	
	window.onload=function(){
		summernote_go($('#vb_content'),'<%=request.getContextPath()%>');
	
		$('.fileInput').on('change','input[type="file"]',function(event){
		if(this.files[0].size>1024*1024*40){
 			alert("파일 용량이 40MB를 초과하였습니다.");
 			this.click();
 			this.value="";	 					
 			return false;
 		} 
	});
}
	</script>

	<script>
		function regist_go() {
			
			var files = $('input[name="uploadFile"]');
			console.log(files);
			for(var file of files){
				console.log(file.name+" : "+file.value);
				if(file.value==""){
					alert("파일을 선택하세요.");
					file.focus();
					file.click();
					return;
				}
			}	
			
			

			if($("input[name='title']").val()==""){ //form.title.value
				alert("제목은 필수입니다.");
				$("input[name='title']").focus();
				return;
			}
			
			$("form[role='form']").submit()
		}
	
		
		//첨부파일
		var dataNum=0;

		function addFile_go(){

			if($('input[name="uploadFile"]').length >=5){
				alert("파일추가는 5개까지만 가능합니다.");
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