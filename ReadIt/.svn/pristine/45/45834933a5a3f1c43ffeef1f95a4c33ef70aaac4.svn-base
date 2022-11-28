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
    <link rel="apple-touch-icon" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/bordered-layout.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/themes/semi-dark-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/horizontal-menu.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-validation.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/authentication.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<style>

 .feather-book-open{
    width: 36px;
    height: 30px;
}
 .feather-home{
    width: 18px;
    height: 13px;
}

</style>


<!-- BEGIN: Body-->

<body class="horizontal-layout horizontal-menu blank-page navbar-floating footer-static "
	   data-open="hover" data-menu="horizontal-menu" data-col="blank-page">
    <!-- BEGIN: Content-->
    <div style="margin-top: 20px;">
    
    <div class="app-content content" style="text-align: center; text-align: center;margin-top: 150px;">
        		<!-- Login basic -->
                        <div class="card mb-0" style="width: 380px; height:500px; margin: 0 auto;"> 
                            <div class="card-body" >
                                <a href="${webPath}/index.do" class="brand-logo">
                                    <h1 class="brand-text text-dark ms-1"  style="text-align: center; margin-right: 26px; margin-top: 30px; font-weight: bold;"> 
                                        <i data-feather='book-open'></i>  ReadIt !</h1>
                                </a>

                                <h4 class="card-title mb-1"></h4>
                                <p class="card-text mb-1"></p>

                                <form class="auth-login-form mt-2" action="login.do" method="post">
                                	<input name="retUrl" value="${retUrl }" type="hidden" />	
                                    <div class="mb-1">
                                        <label for="login-email" class="form-label" style="font-style:black; margin-top: 35px; font-weight: bold;
                                        		font-size: 1em;">&nbsp;아이디</label>
                                        <input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요" value="${pastID }" 
                                        	   aria-describedby="login-email" tabindex="1" autofocus  />
                                    </div>

                                    <div class="mb-1">
                                        <div class="d-flex justify-content-between">
                                            <label class="form-label" for="login-password" style="font-weight: bold;  font-size: 1em;">&nbsp;비밀번호</label>
                                            <a href="#">
                                                <span style="font-size: 13px; margin-right: 5px;">비밀번호를 잊어버리셨나요?</span>
                                            </a>
                                        </div>
                                        <div class="input-group input-group-merge form-password-toggle">
                                            <input type="password" class="form-control form-control-merge" name="pwd" tabindex="2" placeholder="비밀번호 입력하세요." 
                                            		aria-describedby="login-password" value="" />
                                            <span class="input-group-text cursor-pointer"><i data-feather="eye"></i></span>
                                        </div>
                                    </div>
                                   <!--  <div class="mb-1">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="remember-me" tabindex="3" />
                                            <label class="form-check-label" for="remember-me" style="font-weight: bold;"> 아이디 저장 </label>
                                        </div>
                                    </div> -->
                                    <button type="submit" class="btn btn-dark w-100" tabindex="4" style=" margin-top: 15px;">로그인</button>
                                </form>

                                <p class="text-center mt-2" style="margin-top: 0px; padding-top: 0px; ">
                                    <span style="font-weight: bold; margin-top: 0px; padding-top: 0px; ">ReadIt이 처음이신가요?</span>
                                    <a href=" ${webPath}/common/signupForm.do">
                                        <span style="font-weight: bold; font-size: 15px; ">&nbsp;&nbsp; 회원가입 🏛️</span>
                                    </a>
                                </p>

                                <div class="divider my-2" style="margin: 0px; padding:0px;">
                                    <div class="divider-text" style="font-weight: bold;">or</div>
                                </div>
	
                                <div class="auth-footer-btn d-flex justify-content-center">
                                    <a href="${webPath}/index.do" class="btn btn-github" style="height: 30px; font-size:12px;
                                        padding-top:8px; margin: 0px; ">
                                        <i data-feather="home" ></i>&nbsp; 홈페이지로 돌아가기
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- /Login basic -->
        		</div>
        		
        </div>
    <!-- END: Content-->
<c:if test="${!empty msg }">
	<script>
		alert('${msg}');
	</script>

</c:if>


    <!-- BEGIN: Vendor JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/auth-login.js"></script>
    <!-- END: Page JS-->

    <script>
        $(window).on('load', function() {
            if (feather) {
                feather.replace({
                    width: 14,
                    height: 14
                });
            }
//             location.href='${webPath}/common/loginForm.do'
//             	window.top.location.href = "${webPath}/common/loginForm.do"; 
        })
    </script>
    
</body>
<!-- END: Body-->


</html>