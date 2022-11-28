<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<!-- BEGIN: Head-->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Basic Card - Vuexy - Bootstrap HTML admin template</title>
    <link rel="apple-touch-icon" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template//app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template//app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template//app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/swiper.min.css">

    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template//app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template//app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template//app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template//app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template//app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template//app-assets/css/themes/bordered-layout.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template//app-assets/css/themes/semi-dark-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template//app-assets/css/core/menu/menu-types/horizontal-menu.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-swiper.css"> 
    <!-- END: Page CSS-->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-sweet-alerts.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/sweetalert2.min.css">
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template//assets/css/style.css">
    <!-- END: Custom CSS-->

</head>
<style>
.img-fluid my-2 {
	height : 270px;
}

</style>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class=" horizontal-layout horizontal-menu   navbar-floating footer-static container-xxl  " data-open="hover" data-menu="horizontal-menu" data-col="">

            <div class="container" style="font-family: 'Noto Sans KR', sans-serif;">
            
              <div class="content-header row">
                <div class="content-header-left col-md-9 col-12 mb-2">
                    <div class="row breadcrumbs-top">
                        <div class="col-12">
                            <h2 class="content-header-title float-start mb-0">AI 추천</h2>
                            <div class="breadcrumb-wrapper">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item ">Home
                                    </li>
                                    <li class="breadcrumb-item ">스마트공간
                                    </li>
                                    <li class="breadcrumb-item active"><a href="#">AI 추천</a>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            
                <!-- Examples -->
                <section id="card-demo-example">
                    <div class="row match-height">
                        <div class="col-md-4 col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">MBTI를 통한 영화 추천</h4>
                                    <h6 class="card-subtitle text-muted">MBTI 영화추천, 멀티미디어룸에서 즐겨요</h6>
                                    <img class="img-fluid my-2" src="<%=request.getContextPath() %>/resources/images/mbti2.png" alt="Card image cap" style="height:270px;"/>
                                    <p class="card-text"> &nbsp; </p>
                                    <div class="d-grid col-lg-12 col-md-12 mb-1 mb-lg-0">
                                    <c:if test="${loginUser != null }">
                                 <button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="recommandReview"  onclick="goPage('<%=request.getContextPath()%>/main/ai/recommandReview.do','M040100','ifr');"   >   결과 보기   </button>
                                    </c:if>
                                    <c:if test="${loginUser eq null }">
                                 <button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="recommandReview"  onclick="doAlert();"   >   결과 보기   </button>
                                    </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">독서 내역을 통한 도서 추천</h4>
                                    <h6 class="card-subtitle text-muted">당신의 취향 저격 도서 추천</h6>
                                    <img class="img-fluid my-2" src="<%=request.getContextPath() %>/resources/images/book2.png" alt="Card image cap" style="height:270px;"/>
                                    <p class="card-text"> &nbsp; </p>
                                    <div class="d-grid col-lg-12 col-md-12 mb-1 mb-lg-0">
                                    <c:if test="${loginUser != null }">
                                 <button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="recommandRecord" onclick="goPage('<%=request.getContextPath()%>/main/ai/recommandRecord.do','M040200','ifr');"   >   결과 보기   </button>
                                 	</c:if>
                                    <c:if test="${loginUser eq null }">
                                 <button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="recommandRecord" onclick="doAlert();"   >   결과 보기   </button>
                                 	</c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">MBTI별 도서 추천</h4>
                                    <h6 class="card-subtitle text-muted">MBTI맞춤형 도서 추천</h6>
                                    <img class="img-fluid my-2" src="<%=request.getContextPath() %>/resources/images/mbti.png" alt="Card image cap" style="height:270px;"/>
                                    <p class="card-text"> &nbsp; </p>
                                    <div class="d-grid col-lg-12 col-md-12 mb-1 mb-lg-0">
                                    <c:if test="${loginUser != null }">
                                 <button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="recommandMBTI" onclick="goPage('<%=request.getContextPath()%>/main/ai/recommandMBTI.do','M040300','ifr');"   >   결과 보기   </button>
                                	 </c:if>
                                    <c:if test="${loginUser eq null }">
                                 <button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="recommandMBTI" onclick="doAlert();"   >   결과 보기   </button>
                                	 </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                                        <div class="row match-height">
                        <div class="col-md-4 col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">개인 맞춤형 도서 추천</h4>
                                    <h6 class="card-subtitle text-muted">나이, 성별, 관심사를 통한 AI분석</h6>
                                    <img class="img-fluid my-2" src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template//app-assets/images/slider/06.jpg" alt="Card image cap" style="height:270px;"/>
                                    <p class="card-text">&nbsp; </p>
                                       <div class="d-grid col-lg-12 col-md-12 mb-1 mb-lg-0">
                                       <c:if test="${loginUser != null }">
                                 <button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="recommandPersonal" onclick="goPage('<%=request.getContextPath()%>/main/ai/recommandPersonal.do','M040500','ifr');"    >   결과 보기   </button>
                                 		</c:if>
                                       <c:if test="${loginUser eq null }">
                                 <button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="recommandPersonal" onclick="doAlert();"    >   결과 보기   </button>
                                 		</c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">관상별 도서 추천</h4>
                                    <h6 class="card-subtitle text-muted">당신은 누구를 닮았습니까?</h6>
                                    <img class="img-fluid my-2" src="<%=request.getContextPath() %>/resources/images/face.PNG" alt="Card image cap" style="height:270px;"/>
                                    <p class="card-text"> &nbsp; </p>
                                    <div class="d-grid col-lg-12 col-md-12 mb-1 mb-lg-0">
                                    <c:if test="${loginUser != null }">
                                 <button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="recommandFace" onclick="goPage('<%=request.getContextPath()%>/main/ai/recommandFace.do','M040600','ifr');"   >   결과 보기   </button>
                                	</c:if>
                                    <c:if test="${loginUser eq null }">
                                 <button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="recommandFace" onclick="doAlert();"   >   결과 보기   </button>
                                	</c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-4">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">영화 뭐 보지?</h4>
                                    <h6 class="card-subtitle text-muted">멀티미디어룸에서 뭐 보지?</h6>
                                    <img class="img-fluid my-2" src="<%=request.getContextPath() %>/resources/images/movie.png" alt="Card image cap" style="height:270px;"/>
                                    <p class="card-text">&nbsp; </p>
                                    <div class="d-grid col-lg-12 col-md-12 mb-1 mb-lg-0">
                                    <c:if test="${loginUser != null }">
                                 <button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="recommandMovie" onclick="goPage('<%=request.getContextPath()%>/main/ai/recommandMovie.do','M040400','ifr');"  >   결과 보기   </button>
                                 	</c:if>
                                    <c:if test="${loginUser eq null }">
                                 <button type="button" class="btn btn-primary waves-effect waves-float waves-light" id="recommandMovie" onclick="doAlert();"  >   결과 보기   </button>
                                 	</c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                </section>
                <!-- Examples -->

            </div>
    <!-- END: Content-->
	<!-- jQuery -->
	<script src="<%=request.getContextPath()%>/resources/jquery/jquery.min.js" ></script>
    <!-- BEGIN: Vendor JS-->
    <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template//app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template//app-assets/vendors/js/ui/jquery.sticky.js"></script>
     <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/swiper.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template//app-assets/js/core/app-menu.js"></script>
    <script src="<%=request.getContextPath() %>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template//app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->



    <!-- BEGIN: Page JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/extensions/ext-component-swiper.js"></script>
    
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/extensions/ext-component-sweet-alerts.js"></script>
<script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/sweetalert2.all.min.js"></script>
    <!-- END: Page JS-->
    
    <script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
	<%@ include file="../../common/index_js.jsp" %>    

    <script>
        $(window).on('load', function() {
            if (feather) {
                feather.replace({
                    width: 14,
                    height: 14
                });
            }
    	<c:if test="${from eq 'ai'}">
		 Swal.fire({
             icon: 'warning',
             title: 'AI요정 지니가 아직 오지 않았어요.',
             text: '지니를 다시 한번 불러주세요.'
          })
	    </c:if>
        })
    </script>
    
    <script>
	function doAlert() {
		
			 Swal.fire({
                 icon: 'warning',
                 title: '북적북적 회원만 이용할 수 있습니다.',
                 text: '로그인이 필요합니다.'
              })
//               .then(function(){
//             	  parent.location.href = "http://localhost/readit/common/loginForm.do";
//               })
	
	}

</script>
    
    <script>
    const axios = {}; // axios라는 유명한 비동기 라이브러리가 있음 (namespace용)
  	//메소드 get 추가
  	axios.get = (p_url) =>{
      return new Promise((resolve,reject)=>{
          var xhr = new XMLHttpRequest();
          xhr.open("get",p_url,true);
          xhr.responseType='json';
          xhr.onreadystatechange = ()=>{
              if(xhr.readyState == 4 && xhr.status == 200){
                  //완료되었을때
                  resolve(xhr.response); // resolve를 이용해서 성공을 알림
              }
          }
          xhr.send();
      })
  	}
    </script>
    
    <script>

    </script>
    
</body>
<!-- END: Body-->

</html>