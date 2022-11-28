<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> --%>
<!-- BEGIN: Head-->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
<meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
<meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="PIXINVENT">
<title>Login Page - Admin</title>
<link rel="apple-touch-icon" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
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
<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/pickers/pickadate/pickadate.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/pickers/flatpickr/flatpickr.min.css">
<!-- END: Vendor CSS-->
<!-- BEGIN: Page CSS-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/horizontal-menu.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-flat-pickr.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-pickadate.css">
</head>
<!-- END: Head-->
<!-- BEGIN: Body-->


<style>
 .feather-heart{
    width: 28px;
    height: 28px;
}

</style>



<body style="background-color: white;">
	<!-- <div class="container"> -->

    
    
    <div class="add-task">
                                <button type="button" class="btn btn-primary w-100 waves-effect waves-float waves-light" data-bs-toggle="modal" data-bs-target="#new-task-modal">
                                    Add Task
                                </button>
                            </div>
    
    
    
    
  
    
    <div class="modal modal-slide-in sidebar-todo-modal fade" id="new-task-modal" style="display: none;" aria-hidden="true">
                            <div class="modal-dialog sidebar-lg">
                                <div class="modal-content p-0">
                                    <form id="form-modal-todo" class="todo-modal needs-validation" novalidate="novalidate" onsubmit="return false">
                                        <div class="modal-header align-items-center mb-1">
                                            <h5 class="modal-title">Add Task</h5>
                                            <div class="todo-item-action d-flex align-items-center justify-content-between ms-auto">
                                                <span class="todo-item-favorite cursor-pointer me-75"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-star font-medium-2"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg></span>
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x cursor-pointer" data-bs-dismiss="modal"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                                            </div>
                                        </div>
                                        <div class="modal-body flex-grow-1 pb-sm-0 pb-3">
                                            <div class="action-tags">
                                                <div class="mb-1">
                                                    <label for="todoTitleAdd" class="form-label">Title</label>
                                                    <input type="text" id="todoTitleAdd" name="todoTitleAdd" class="new-todo-item-title form-control" placeholder="Title">
                                                </div>
                                                <div class="mb-1 position-relative">
                                                    <label for="task-assigned" class="form-label d-block">Assignee</label>
                                                    <div class="position-relative"><select class="select2 form-select select2-hidden-accessible" id="task-assigned" name="task-assigned" data-select2-id="task-assigned" tabindex="-1" aria-hidden="true">
                                                        <option data-img="../../../app-assets/images/portrait/small/avatar-s-3.jpg" value="Phill Buffer" selected="" data-select2-id="2">
                                                            Phill Buffer
                                                        </option>
                                                        <option data-img="../../../app-assets/images/portrait/small/avatar-s-1.jpg" value="Chandler Bing">
                                                            Chandler Bing
                                                        </option>
                                                        <option data-img="../../../app-assets/images/portrait/small/avatar-s-4.jpg" value="Ross Geller">
                                                            Ross Geller
                                                        </option>
                                                        <option data-img="../../../app-assets/images/portrait/small/avatar-s-6.jpg" value="Monica Geller">
                                                            Monica Geller
                                                        </option>
                                                        <option data-img="../../../app-assets/images/portrait/small/avatar-s-2.jpg" value="Joey Tribbiani">
                                                            Joey Tribbiani
                                                        </option>
                                                        <option data-img="../../../app-assets/images/portrait/small/avatar-s-11.jpg" value="Rachel Green">
                                                            Rachel Green
                                                        </option>
                                                    </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: auto;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-task-assigned-container"><span class="select2-selection__rendered" id="select2-task-assigned-container" role="textbox" aria-readonly="true" title="
                                                            Phill Buffer
                                                        "><div class="d-flex align-items-center"><img class="d-block rounded-circle me-50" src="../../../app-assets/images/portrait/small/avatar-s-3.jpg" height="26" width="26" alt="
                                                            Phill Buffer
                                                        "><p class="mb-0">
                                                            Phill Buffer
                                                        </p></div></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span></div>
                                                </div>
                                                <div class="mb-1">
                                                    <label for="task-due-date" class="form-label">Due Date</label>
                                                    <input type="text" class="form-control task-due-date flatpickr-input" id="task-due-date" name="task-due-date" readonly="readonly">
                                                </div>
                                                <div class="mb-1">
                                                    <label for="task-tag" class="form-label d-block">Tag</label>
                                                    <div class="position-relative"><select class="form-select task-tag select2-hidden-accessible" id="task-tag" name="task-tag" multiple="" data-select2-id="task-tag" tabindex="-1" aria-hidden="true">
                                                        <option value="Team">Team</option>
                                                        <option value="Low">Low</option>
                                                        <option value="Medium">Medium</option>
                                                        <option value="High">High</option>
                                                        <option value="Update">Update</option>
                                                    </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="3" style="width: auto;"><span class="selection"><span class="select2-selection select2-selection--multiple" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false"><ul class="select2-selection__rendered"><li class="select2-search select2-search--inline"><input class="select2-search__field" type="search" tabindex="0" autocomplete="off" autocorrect="off" autocapitalize="none" spellcheck="false" role="searchbox" aria-autocomplete="list" placeholder="Select tag" style="width: 0px;"></li></ul></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span></div>
                                                </div>
                                                <div class="mb-1">
                                                    <label class="form-label">Description</label>
                                                    <div id="task-desc" class="border-bottom-0 ql-container ql-snow" data-placeholder="Write Your Description"><div class="ql-editor ql-blank" data-gramm="false" contenteditable="true" data-placeholder="Write Your Description"><p><br></p></div><div class="ql-clipboard" contenteditable="true" tabindex="-1"></div><div class="ql-tooltip ql-hidden"><a class="ql-preview" rel="noopener noreferrer" target="_blank" href="about:blank"></a><input type="text" data-formula="e=mc^2" data-link="https://quilljs.com" data-video="Embed URL"><a class="ql-action"></a><a class="ql-remove"></a></div></div>
                                                    <div class="d-flex justify-content-end desc-toolbar border-top-0 ql-toolbar ql-snow">
                                                        <span class="ql-formats me-0">
                                                            <button class="ql-bold" type="button"><svg viewBox="0 0 18 18"> <path class="ql-stroke" d="M5,4H9.5A2.5,2.5,0,0,1,12,6.5v0A2.5,2.5,0,0,1,9.5,9H5A0,0,0,0,1,5,9V4A0,0,0,0,1,5,4Z"></path> <path class="ql-stroke" d="M5,9h5.5A2.5,2.5,0,0,1,13,11.5v0A2.5,2.5,0,0,1,10.5,14H5a0,0,0,0,1,0,0V9A0,0,0,0,1,5,9Z"></path> </svg></button>
                                                            <button class="ql-italic" type="button"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="7" x2="13" y1="4" y2="4"></line> <line class="ql-stroke" x1="5" x2="11" y1="14" y2="14"></line> <line class="ql-stroke" x1="8" x2="10" y1="14" y2="4"></line> </svg></button>
                                                            <button class="ql-underline" type="button"><svg viewBox="0 0 18 18"> <path class="ql-stroke" d="M5,3V9a4.012,4.012,0,0,0,4,4H9a4.012,4.012,0,0,0,4-4V3"></path> <rect class="ql-fill" height="1" rx="0.5" ry="0.5" width="12" x="3" y="15"></rect> </svg></button>
                                                            <button class="ql-align" type="button"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="3" x2="15" y1="9" y2="9"></line> <line class="ql-stroke" x1="3" x2="13" y1="14" y2="14"></line> <line class="ql-stroke" x1="3" x2="9" y1="4" y2="4"></line> </svg></button>
                                                            <button class="ql-link" type="button"><svg viewBox="0 0 18 18"> <line class="ql-stroke" x1="7" x2="11" y1="7" y2="11"></line> <path class="ql-even ql-stroke" d="M8.9,4.577a3.476,3.476,0,0,1,.36,4.679A3.476,3.476,0,0,1,4.577,8.9C3.185,7.5,2.035,6.4,4.217,4.217S7.5,3.185,8.9,4.577Z"></path> <path class="ql-even ql-stroke" d="M13.423,9.1a3.476,3.476,0,0,0-4.679-.36,3.476,3.476,0,0,0,.36,4.679c1.392,1.392,2.5,2.542,4.679.36S14.815,10.5,13.423,9.1Z"></path> </svg></button>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="my-1">
                                                <button type="submit" class="btn btn-primary add-todo-item me-1 waves-effect waves-float waves-light">Add</button>
                                                <button type="button" class="btn btn-outline-secondary add-todo-item waves-effect" data-bs-dismiss="modal">
                                                    Cancel
                                                </button>
                                                <button type="button" class="btn btn-primary update-btn update-todo-item me-1 waves-effect waves-float waves-light d-none">Update</button>
                                                <button type="button" class="btn btn-outline-danger update-btn waves-effect d-none" data-bs-dismiss="modal">
                                                    Delete
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
    
    
    
    
    
    
    
    
    
    
    
    


<script	src="<%=request.getContextPath()%>/resources/jquery/jquery.min.js"></script>
<!-- BEGIN: Theme JS-->
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
<!-- END: Theme JS-->

<!-- BEGIN: Page JS-->
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/auth-register.js"></script>
    <!-- END: Page JS-->

<!-- END: Body-->
<!-- BEGIN: Page Vendor JS-->
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/picker.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/legacy.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
<!-- END: Page Vendor JS-->
<!-- BEGIN: Page JS-->
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/forms/pickers/form-pickers.js"></script>
<!-- END: Page JS-->
    <!-- BEGIN: Vendor JS-->
<script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
<!-- BEGIN Vendor JS-->
<!-- BEGIN: Page Vendor JS-->
<script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
<script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Theme JS-->
<script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
<script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
<!-- END: Theme JS-->

<!-- BEGIN: Page JS-->
<script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/auth-login.js"></script>
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

<!-- END: Body-->

<script>
		var checkedID ="";
		function idCheck_go(){
			//alert("idcheck btn click");
			var input_ID=$('input[name="mem_id"]');
			if(!input_ID.val()){
		       alert("아이디를 입력하시오");
		       input_ID.focus();
		       return;
			}
			$.ajax({
				url : "idCheck.do?mem_id="+input_ID.val().trim(),
				method : "post",	
				success : function(result){
					if(result.toUpperCase() == "DUPLICATED"){
				      alert("중복된 아이디 입니다.");
				      $('input[name="mem_id"]').focus();
					}else{
		              alert("사용가능한 아이디 입니다.");
		              checkedID=input_ID.val().trim();
		              $('input[name="mem_id"]').val(input_ID.val().trim());	             
		           } 
		           
				},
				error:function(error){
			       alert("시스템장애로 가입이 불가합니다.");
			    }
			});
			
		}

		function regist_go(){

			if($("input[name='mem_id']").val()==""){ 
				alert("아이디 입력은 필수입니다.");
				$("input[name='mem_id']").focus();
				return;
			}
			
			if($("input[name='mem_pwd']").val()==""){ 
				alert("비밀번호 입력은 필수입니다.");
				$("input[name='mem_pwd']").focus();
				return;
			}
			
			if($("input[name='mem_name']").val()==""){ 
				alert("이름 입력은 필수입니다.");
				$("input[name='mem_name']").focus();
				return;
			}
			
			var form = $("form[role='form']");
			form.submit();
		}
	</script>
	
	  <script>
    <c:if test="${status eq 'success'}">
		alert("회원가입이 성공했습니다.");
		window.location.href = "<%=request.getContextPath()%>/common/loginForm";
	</c:if>

	<c:if test="${status eq 'fail'}">
		alert("회원가입을 실페했습니다.");
	</c:if>
	
	
    </script>




</body>
</html>