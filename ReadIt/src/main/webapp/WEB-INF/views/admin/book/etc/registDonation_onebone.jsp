<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html class="loading" data-textdirection="ltr">
<!-- BEGIN: Head-->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>기증 도서 등록</title>
    <link rel="apple-touch-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/charts/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/animate/animate.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/sweetalert2.min.css">
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
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/app-chat-list.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->
    <!-- sweetAlert CSS -->
     <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-sweet-alerts.css">
    <!-- END: sweetAlert CSS -->

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu-modern  navbar-floating footer-static  " data-open="click" data-menu="vertical-menu-modern" data-col="">

    <!-- BEGIN: Content-->
<!--         <div class="content-wrapper container-xxl p-0"> -->
        <div class="content-wrapper ">
<!--             <div class="content-header row"> -->
<!--                 <div class="content-header-left col-md-9 col-12 mb-2"> -->
<!--                     <div class="row breadcrumbs-top"> -->
<!--                         <div class="col-12" style="text-align: center; margin-top: 15px; margin-bottom: -15px;"> -->
<!--                             <h2 class="content-header-title float-start mb-0" style="margin-left: ">입고 도서 등록</h2> -->
<!--                         </div> -->
<!--                          <div class="divider divider-success"> -->
<!-- 		           			<div class="divider-text" style="padding: 0px;"></div> -->
<!-- 		        		</div> -->
<!--                     </div> -->
<!--                 </div> 	 -->
               
<!--             </div> -->
            <div class="content-body" style="overflow-x: hidden; margin-left: 3px; margin-right: 0px;">
<!--          		<form action="registQuickNewBook.do" role="nbw_codeForm" class="form"> -->
			<form action="registDonationBook.do" role="bookform" class="form">
           	 <div class="row col-12">	
            		<div class="demo-inline-spacing mb-2 col-12" style="margin-left: 200px; margin-top: 20px;">
	                      <div class="form-check form-check-success" style="margin-right: 50px;">
	                          <input class="form-check-input" type="radio" name="nbw_code" id="donation" value="2" checked="">
	                          <input class="form-check-input" type="hidden" name="nbw_name" id="nbw_name" value="" >
	                          <label class="form-check-label" for="donation">기증</label>
	                      </div>
                 	 </div>
				</div>
<!--                 </form> -->
				
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                
<!--                                 <form action="registQuickNewBook.do" role="bookform" class="form"> -->
                                    <div class="row">
                                        <div class="col-md-6 col-12 mb-1">
						                    	<span class="badge badge-light-secondary" style="margin-bottom: 5px;">제목</span>
						                        <input type="text" class="form-control" id="book_title" name="book_title" required placeholder="입고 도서 제목을 입력하세요." aria-label="Amount">
						                        <input type="hidden" class="form-control" id="nb_title" name="nb_title" value="" placeholder="Button on both side" aria-label="Amount">
	                					</div>
                                        <div class="col-md-6 col-12 mb-1">
						                    	<span class="badge badge-light-secondary" style="margin-bottom: 5px;">저자</span>
						                        <input type="text" class="form-control" id="book_author" name="book_author" placeholder="저자명을 입력하세요." aria-label="Amount">
						                        <input type="hidden" class="form-control" id="nb_author" name="nb_author" placeholder="Button on both side" aria-label="Amount">
	                					</div>
                                        <div class="col-md-6 col-12 mb-1">
						                    	<span class="badge badge-light-secondary" style="margin-bottom: 5px;">출판사</span>
						                        <input type="text" class="form-control" id="book_publisher" name="book_publisher" placeholder="출판사명을 입력하세요." aria-label="Amount">
						                        <input type="hidden" class="form-control" id="nb_publish" name="nb_publish" placeholder="Button on both side" aria-label="Amount">
	                					</div>
                                        <div class="col-md-6 col-12 mb-1">
						                    	<span class="badge badge-light-secondary" style="margin-bottom: 5px;">발행연도</span>
						                        <input type="number" class="form-control" id="book_publishdate" name="book_publishdate" placeholder="발행연도를 입력하세요." aria-label="Amount">
	                					</div>
                                        <div class="col-md-6 col-12 mb-1">
						                    	<span class="badge badge-light-secondary" style="margin-bottom: 5px;">ISBN</span>
						                        <input type="text" class="form-control" id="book_isbn" name="book_isbn" placeholder="ISBN을 입력하세요(-생략)" aria-label="Amount">
						                        <input type="hidden" class="form-control" id="isbn" name="isbn" placeholder="ISBN을 입력하세요(-생략)" aria-label="Amount">
	                					</div>
                                        <div class="col-md-6 col-12 mb-1" id="wishBookDiv" style="display: none;">
						                    	<span class="badge badge-light-warning" style="margin-bottom: 5px;">희망도서 신청번호</span>
						                    <div class="input-group">
						                        <input type="text" class="form-control" id="wb_no" name="wb_no" value="0" readonly="readonly" placeholder="Button on both side" aria-label="Amount">
<!-- 						                        <input type="text" class="form-control" id="wb_no" name="wb_no_hidden" value="0" placeholder="Button on both side" aria-label="Amount"> -->
						                        <button class="btn btn-outline-primary waves-effect" type="button" onclick="getWishBookList();">
						                        	<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
						                        </button>
						                    </div>
	                					</div>
	                					<div class="col-md-6 col-12 mb-1" id="donationMemIdDiv" >
						                    	<span class="badge badge-light-warning" style="margin-bottom: 5px;">기증회원 아이디</span>
						                    <div class="input-group">
						                        <input type="text" class="form-control" id="searchMemId" name="mem_id" value="" 
						                        		onkeyup="if(window.event.keyCode==13){memSearch()}"
						                        		placeholder="찾을 회원의 아이디를 입력하세요." aria-label="Amount">
						                        <input type="hidden" id="donator_id" name="donator_id" value="">
						                        <button class="btn btn-outline-primary waves-effect" type="button" onclick="memSearch();">
						                        	<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
						                        </button>
						                    </div>
	                					</div>
                                        <div class="col-md-6 col-12 mb-1" id="donationMemNameDiv" >
						                    	<span class="badge badge-light-warning" style="margin-bottom: 5px;">기증자명</span>
<!-- 						                   	<div class="input-group"> -->
						                        <input type="text" class="form-control" placeholder="기증회원 아이디를 검색하면 자동입력됩니다." 
						                        		id="donator_name" name="donator_name"
						                        		aria-label="Amount" readonly="readonly" value="">
<!-- 						                        <button class="btn btn-outline-primary waves-effect" type="button"> -->
<%-- 						                        	<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg> --%>
<!-- 						                        </button> -->
<!-- 						                    </div> -->
	                					</div>
                                       
	                				<div class="row" style="margin-left: 0px; margin-top: 10px;">
                                        <div class="d-grid col-6" style="margin-left: 0px;">
<!--                                         	<button type="button" class="btn btn-outline-warning waves-effect" id="type-warning">Warning</button> -->
                                            <button type="button" class="btn btn-outline-warning waves-effect" id="disableReadOnly2" onclick="disableReadOnly()">내용수정</button>
                                        </div>
                                        <div class="d-grid col-6" style="margin-left: 0	px;">
                                            <button type="button" class="btn btn-outline-secondary waves-effect" id="setReadOnly2" onclick="setReadOnly()">입력완료</button>
                                        </div>
	                				</div>
	                				<div class="row" style="margin-top: 20px; margin-left: 0px;">
                                        <div class="d-grid col-6">
                                            <button type="button" class="btn btn-danger" onclick="window.close();">취소</button>
                                        </div>
                                        <div class="d-grid col-6">
<!--                                             <button type="submit" class="btn btn-primary" onclick="alert('등록완료');">등록완료</button> -->
                                            <button type="button" onclick="donationRegistGo()" class="btn btn-primary">등록완료</button>
                                        </div>
	                				</div>
                                    </div>
<!--                                 </form> -->
                                </form>
                            </div>
                        </div>
                    </div>
<!--                     / Payment Card -->
                </div>
			

            </div>
        </div>
    <!-- END: Content-->

    <div class="sidenav-overlay"></div>
<!--     <div class="drag-target"></div> -->


    <!-- BEGIN: Vendor JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/charts/apexcharts.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/sweetalert2.all.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/polyfill.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/cards/card-advance.js"></script>
<%--     <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/forms/form-tooltip-valid.js"></script> --%>
    <script src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/extensions/ext-component-sweet-alerts.js"></script>
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
    
    <script type="text/javascript">
    $(function(){
// 		console.log("ppp:",$("#type-warning"));
   	  	$("#disableReadOnly2").on("click",function () {
			Swal.fire({
    	      icon: 'warning',
    	      title: '수정모드로 전환되었습니다.',
    	      text: '수정 후 입력완료를 눌러주세요.',
	   	  });
	   });
	   	
	   	$("#setReadOnly2").on("click",function () {
			Swal.fire({
    	      icon: 'success',
    	      title: '입력이 완료되었습니다.',
    	      text: '내용을 수정하려면, 수정하기 버튼을 누르세요.',
	   	  });
	   });
	   	  
	   	  
    });
    </script>
    
    <script type="text/javascript">
    function disableReadOnly(){
    	document.querySelector('input[id="book_title"]').readOnly=false; 
//     	document.querySelector('input[id="book_title"]').style.backgroundColor = 'white';
    	
    	document.querySelector('input[id="book_author"]').readOnly=false; 
    	document.querySelector('input[id="book_publisher"]').readOnly=false; 
    	document.querySelector('input[id="book_publishdate"]').readOnly=false; 
    	document.querySelector('input[id="searchMemId"]').readOnly=false; 
    	document.querySelector('input[name="book_isbn"]').readOnly=false; 
    	document.querySelector('input[id="wb_no"]').readOnly=false; 
    	
//     	$('input[type=text]').css('backgroundColor','white');
		
// 		alert("수정모드로 전환되었습니다.");
    }
    

    </script>
    
    <script type="text/javascript">
    function setReadOnly(){
    	$('input[type=text],input[type=number]').prop('readOnly',true);
    	$('input[type=text],input[type=number]').css('backgroundColor','white'); // 사용 부트스트랩 템플릿 오류로 이렇게 처리
    	
    }
    </script>
    
    <script type="text/javascript">
    	function getWishBookList(){
    		// window.name = "부모창 이름"; 
    		window.name = "parentForm";
    		
    		var popup = window.open('<%=request.getContextPath()%>/admin/getWishBookList.do', 'childForm', 'width=1300px, height=800px, scrollbars=yes' );
    	}
    </script>
    
    <script type="text/javascript">
    	function memSearch(){
    		var mem_id = $('#searchMemId').val();
    		var mem_id_pla = $('#searchMemId');
    		var mem_id_save = $('#mem_id_save');
    		
//     		console.log("mem_id",mem_id);
    		var mem_name =$('#donator_name');
    		
    		var url="<%=request.getContextPath()%>/admin/memInfo.do";
    		
    		if(!mem_id){
    			console.log("mem_id",mem_id);
    			alert("아이디를 입력해주세요;")	
    			return false;
    		}
    		
    		var data = {mem_id : mem_id};
    		
    		$.ajax({
    			url : url,
    			type: 'post',
    			data : data,
    			success : function(data){
    				if (data.member.mem_id) {
	    				mem_id_pla.prop("value","");
	    				mem_id_pla.prop("placeholder",data.member.mem_id);
	    				mem_id_save.prop("value",data.member.mem_id);
	    				mem_name.prop("value",data.member.mem_name);
    				}
    				
    			},
    			error : function(error){
    				alert("회원 아이디가 존재하지 않습니다.");
    		}
    		})
    	}
    </script>
    
	<script>
	function donationRegistGo(){
		
		/* nb_code 가져오기 */
		var donationCode = document.querySelector('input[id="donation"]').value;
		
		/* 라디오버튼 누르는거에 따라 value값 설정 */
		if(document.querySelector('input[type="radio"][id="donation"]').checked){
			document.querySelector('input[id="nbw_name"]').value = "기증";
		}
		
		
		/* 각 input box에 들어간 데이터를 hidden input에 넣어주기 */
		var book_title = document.querySelector('input[name="book_title"]');
		var book_author = document.querySelector('input[name="book_author"]');
		var book_publisher = document.querySelector('input[name="book_publisher"]');
		var book_isbn = document.querySelector('input[name="book_isbn"]');
// 		var mem_id = document.querySelector('input[name="mem_id"]');
// 		var wb_no = document.querySelector('input[id="wb_no"][name="wb_no_hidden"]');
		
		document.querySelector('#nb_title').value = book_title.value;
		document.querySelector('#nb_author').value = book_author.value;
		document.querySelector('#nb_publish').value = book_publisher.value;
		document.querySelector('#isbn').value = book_isbn.value;
		
		var book_title = $('#book_title').val();
		var book_author = $('#book_author').val();
		var book_publisher = $('#book_publisher').val();
		var book_isbn = $('#book_isbn').val();
		
		
		var donator_idPH = $('#searchMemId').attr('placeholder');
		document.querySelector('#donator_id').value = donator_idPH
		
		var donator_id = $('#donator_id').val();
		var donator_name = $('#donator_name').val();
		console.log(donator_id);
		console.log(donator_name);
		
		
		
		if(book_title == "" || book_author == "" || book_publisher == "" || book_isbn == "" ){
			Swal.fire({
	    	      icon: 'error',
	    	      title: '특정 칸이 입력되지 않았습니다',
	    	      html: '모든 칸에 입고 도서의 정보가 필요합니다.<br>다시 한 번 확인해주세요.',
		   	  });
			return false;
		}
		
		var checkReadOnly = $('input[type=text],input[type=number]').prop('readOnly');
		if(checkReadOnly == false){
			Swal.fire({
	    	      icon: 'error',
	    	      title: '입력완료를 누르지 않았습니다.',
	    	      text: '입력완료 버튼을 누른 후 등록완료를 진행해주세요.',
		   	  });
			return false;
		}
		
		// submit안시키고 테스트 할 때 풀면됨
// 		return;
		
		
		
		var form = document.querySelector('form[role=bookform]');
		
		form.submit();
		
<%-- 		window.open("<%=request.getContextPath()%>/admin/main/getBookManage/resultPage.jsp", "_self").close(); --%>
		

	}
	</script>
    
    
    <script type="text/javascript">
//     $(function (){
    	
//     	$('input[type="radio"][id="donation"]').on('click', function(){
// //     		alert("donation 진입");
//     	  	var donationChkValue = $('input[type=radio][id="donation"]:checked').val();
//     	  if(donationChkValue){
//            	$('#wishBookDiv').css('display','none');
//            	$('#donationMemIdDiv').css('display','block');
//            	$('#donationMemNameDiv').css('display','block');
//     	  }else{
//          	$('#wishBookDiv').css('display','block');
//       		$('#donationMemIdDiv').css('display','none');
//        		$('#donationMemNameDiv').css('display','none');
//     	  }
    	 
//     	});
    	
//   	});
    
    </script>
</body>
<!-- END: Body-->

</html>