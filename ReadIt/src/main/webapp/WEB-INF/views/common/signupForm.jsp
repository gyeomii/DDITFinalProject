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
  
 .feather-smile{
    width: 20px;
    height: 20px;
}
 .feather-home{
    width: 20px;
    height: 16px;
}

label{
	font-size: 1.1em;
}

.form-label{
	font-size: 13px;
}

.money {
  animation: mymove 5s infinite;
}
@keyframes mymove {
  from {
      transform: rotateY(0deg);
    }
    to {
      transform: rotateY(359deg);
    }
}

</style>

<body style="background-color: white; margin-bottom: 0px; margin-top:0px; margin-bottom:0px;  padding-bottom: 0px; height: 900px;">
	<!-- <div class="container"> -->
		<div class="content-header mb-2" style="margin-top: 30px;">
			<h1 style="text-align: center; font-size: 36px; margin-bottom: 2px;"> 
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; 회원 가입</h1>
		</div>
		<div class="content-body" style="padding-bottom: 0px; margin-bottom: 20px; height: 850px;">
		<div class="row" >
			<!-- Left Text-->
			<div class="col-4 align-items-center">
			<div style="margin-top:90px; "></div>
			    <div class="w-100 d-lg-flex" style="margin-left: 90px; margin-right: 0px;">
			        <img  src = "<%=request.getContextPath()%>/resources/images/책책박사님.PNG" style="width: 80%; height: 70%;"  >
			    </div>
			</div>
	<!-- Register-->
	<div class="col-8 align-items-center"  >
         <div class="card-body" style=" padding-left: 30px; padding-top: 0px; height: 860px;">
               <div class="content-header mb-2" style="padding-left: 37px;">
               		<h3 class="fw-bolder mb-75" >북적북적에 오신걸 환영합니다.</h3>
               		<span  style="font-size: 1.1em;">회원님의 소중한 정보를 입력헤주세요.</span>
		   	   </div>
      <form role="form" method="post" action="signup.do" name="signUpForm" >
            <div class="row" >
                 <div class="mb-1 col-5" style="margin-right: 80px; padding-left: 50px;">
                 <label class="form-label" for="id">&nbsp;아 이 디  &nbsp;&nbsp;</label>
                  		<div class="input-group">
                  		     <input type="text"  name="mem_id" class="form-control" placeholder="(13글자 내 영문,숫자 조합) 중복 체크 해주세요." aria-describedby="button-addon2" 
                  		       		onkeyup="this.value=this.value.replace(/['~!@#$%^&*()_|+\-=?;:'<>\{\}\[\]\\\ㄱ-ㅎㅏ-ㅣ가-힣]/g, &#39;&#39;);" />
                      		  <button class="btn btn-outline-primary" id="button-addon2" type="button"  onclick="idCheck_go();"><i data-feather='search'></i></button>
                      		  <button class="btn btn-outline-primary" id="button-addon2" type="button"><i data-feather='check'></i></button>
                      	</div>
                 </div>     
                 <div class="mb-1 col-5">
                 <label class="form-label" for="id">&nbsp;관 리 자</label>
             		    <div class="input-group">
               		      	 <input type="text" class="form-control" placeholder="관리자만 체크 부탁드립니다." style="height: 40px;" aria-describedby="button-addon2" disabled />
                  		     <div class="input-group-text">
                            	  <div class="form-check" style="width: 20px; padding-left: 0px;  padding-top: 3px; height: 12px;">
                                	    <input class="btn btn-secondary w-100 waves-effect waves-float waves-light" type="checkbox" id="inputCheckbox" 
                                	           name="authority" value="true" data-bs-toggle="modal" data-bs-target="#new-task-modal" style="height: 12px;" >
                             	  </div>
                          	 </div>
                   	   </div>
            	 </div>   
            </div>  
            
    <!-- <div class="modal modal-slide-in sidebar-todo-modal fade" id="new-task-modal" style="display: none;" aria-hidden="true">
            <div class="modal-dialog sidebar-lg"  style="width: 35%;">
                <div class="modal-content p-0">
                    <form id="form-modal-todo" class="todo-modal needs-validation" novalidate="novalidate" onsubmit="return false">
                        <div class="modal-header align-items-center mb-1">
                            <h3 class="modal-title">관리자 추가 정보</h3>
                            <div class="todo-item-action d-flex align-items-center justify-content-between ms-auto">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="3" 
                                stroke-linecap="round" stroke-linejoin="round" class="feather feather-x cursor-pointer" data-bs-dismiss="modal">
                                <line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                            </div>
                        </div>
                        <div class="modal-body flex-grow-1 pb-sm-0 pb-3">
                            <div class="action-tags">
                                <div class="mb-1">
                                    <label for="todoTitleAdd" class="form-label">Title</label>
                                    <input type="text" id="todoTitleAdd" name="todoTitleAdd" class="new-todo-item-title form-control" placeholder="Title">
                                </div>
                                <div class="mb-1">
                                    <label for="task-tag" class="form-label d-block">Tag</label>
                                    <div class="position-relative"><select class="form-select task-tag select2-hidden-accessible" id="task-tag" name="task-tag" multiple="" 
                                    data-select2-id="task-tag" tabindex="-1" aria-hidden="true">
                                        <option value="Team">Team</option>
                                        <option value="Low">Low</option>
                                        <option value="Medium">Medium</option>
                                        <option value="High">High</option>
                                        <option value="Update">Update</option>
                                    </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="3" style="width: auto;">
                                    <span class="selection"><span class="select2-selection select2-selection--multiple" role="combobox" aria-haspopup="true" 
                                    aria-expanded="false" tabindex="-1" aria-disabled="false">
                                    <ul class="select2-selection__rendered"><li class="select2-search select2-search--inline">
                                    <input class="select2-search__field" type="search" tabindex="0" autocomplete="off" autocorrect="off" autocapitalize="none" spellcheck="false" 
                                    role="searchbox" aria-autocomplete="list" placeholder="Select tag" style="width: 0px;"></li></ul></span></span>
                                    <span class="dropdown-wrapper" aria-hidden="true"></span></span></div>
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
        </div> -->
            	
	<div class="row" >
           <div class="mb-1 col-md-5" style="margin-right: 80px; margin-top: 6px; margin-bottom: 0px; padding-left: 50px;" >
           <label class="form-label" for="password">&nbsp;비밀번호&nbsp;&nbsp;  </label>
          	 	<!-- <label class="form-label" for="id" style="color: lightcoral">  필수 입력 정보입니다.  </label> -->
                  <div class="input-group input-group-merge form-password-toggle">
               			<input type="password" name="mem_pwd" id="password" class="form-control" onkeyup='check();'
               			  	    placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;" />
                   	 	<span class="input-group-text cursor-pointer"><i data-feather="eye"></i></span>
                 </div>
           </div>
           <div class="mb-1 col-md-5" style="margin-top: 6px; margin-bottom: 0px;"  >
           <label class="form-label" for="confirm-password">&nbsp;비밀번호 확인  </label>
          	 	  <span id='cfMessage' style="font-size: 13px; margin-left: 5px;"></span>
          	 		  <label id="confirmMsg" style="width: 200px; font-size: 14px; "></label>		
                			<div class="input-group input-group-merge form-password-toggle">
                   	 			<input type="password" name="password" id="passwordConfirm" class="form-control" 
                   	   			 	   placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;" 
                          			    onkeyup='check();' style="margin-top: 0px;"/>
                 	 		<span class="input-group-text cursor-pointer"><i data-feather="eye"></i></span>
               				</div>
           </div>
    </div>  
            	 
   	<div class="row">
           <div class="mb-1 col-md-5" style="margin-right: 80px; margin-top: 12px; margin-bottom: 0px; padding-left: 50px;">
           <label class="form-label" for="first-name">&nbsp;이  &nbsp;&nbsp;&nbsp;&nbsp;름 &nbsp; </label>
                <input type="text" name="mem_name" id="name" class="form-control" placeholder="" />
           </div>
           
           <div class="mb-1 col-md-5"  style="margin-top: 12px;">
           <label class="form-label" for="gender">&nbsp;성 &nbsp;&nbsp;  별</label>
         	  	<br/>
	            <div class="form-check form-check-inline" style=" padding-right:60px; margin-left: 5px;">
	            	<input type="radio" class="form-check-input" id="m" value="M" name="mem_gender" checked="">
	            	<label class="form-check-label" for="m">남성 🤴🏻&nbsp;</label><!-- <i data-feather='heart' style="color: skyblue;"></i -->
	            </div>
	            <div class="form-check form-check-inline" style="margin-top: 8px;">
	            	<input type="radio" class="form-check-input" id="f" value="F" name="mem_gender" unchecked="">
	            	<label class="form-check-label" for="f">여성 👸🏻&nbsp;</label><!-- <i data-feather='heart' style="color: violet	;"></i> -->
	            </div>
          </div>       
    </div>
	              
    <div class="row">
          <div class="mb-1 col-md-5"  style="margin-top: 6px; margin-right: 80px; padding-left: 50px;">
          <label class="form-label" for="last-name">&nbsp;나  &nbsp;&nbsp;  이</label>
               <input type="text" name="mem_age" id="age" class="form-control" placeholder="" />
         </div>
             
		  <div class="col-md-5 mb-1" style="margin-right: 65px; margin-top: 4px;">
		  <label class="form-label" for="fp-default" style="margin-top: 3px;">&nbsp;생년월일</label>
		       <input  name="mem_birth" type="text" id="fp-default" class="form-control flatpickr-basic" placeholder="YYYY-MM-DD"/>
		  </div>
	</div>
		 		
     <div class="row">
          <div class="mb-1 col-md-5" style="margin-right: 80px; margin-top: 8px; padding-left: 50px;" >
  	      <label class="form-label" for="mobile-number">&nbsp;핸드폰 번호 (전화 번호)</label>
                     <!-- <input type="text" name="mem_phone" id="mobile-number" class="form-control mobile-number-mask" placeholder=" ex) 010 1234 5678" /> -->
               	<input type="tel" class="form-control m-input" name="mem_phone" id="telInput"
			 		   required pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" maxlength="13" placeholder="예) 010-1234-5678" />
          </div>
                 
          <div class="mb-1 col-md-5" style="margin-right: 65px; margin-top: 9px;">
          <label class="form-label" for="pin-code">&nbsp;이메일 주소</label>
               	<input type="text" name="mem_email" id="email" class="form-control pin-code-mask" placeholder="ex) aaaa123@bbbb.ccc" />
          </div>
	</div>
				
	<div class="row">
         <div class="col-md-5 mb-1"  style ="margin-top: 8px; margin-right: 80px; padding-left: 50px;">
         <label class="form-label" for="home-address">&nbsp;주소</label> <br/>
                 <div class="input-group" >
                    <!-- <input type="text" name="mem_addr" id="home-address" class="form-control" placeholder="" /> -->
                	    <input type="text" class="form-control" name="mem_addr" placeholder="주소검색 버튼을 누르세요." value="" aria-describedby="button-addon2"  
                	    	   id="addressResult" readonly="readonly">
                  		<button class="btn btn-outline-primary waves-effect" id="address_kakao"  name="mem_address1" type="button">주소 검색</button>
                 </div>
         </div>
            	
         <div class="col-md-5 mb-1" style="width: 41%; padding-right: 10px; margin-top: 31px; ">
                <input type="text" class="form-control" placeholder="상세 주소를 입력하세요." aria-label="Search..." name="mem_address12" 
                	   aria-describedby="basic-addon-search2" style="height:40px;" >
         </div> 	
    </div>    
                 
    <div class="row">   	
    
    	  <div class="mb-1 col-5" style="margin-right: 80px; margin-top: 8px; padding-left: 50px;">
          <label class="form-label" for="first-name">&nbsp;관심사 (택일)</label>
         	    <br/>
                <div class="form-check form-check-inline" style="padding-top: 8px; margin-right: 30px; margin-left: 5px;" >
                      <input type="radio" id="eco" class="form-check-input" value="1" name="mem_interest" checked="">
                      <label class="form-check-label" for="eco">경제</label>
           	    </div>
	             <div class="form-check form-check-inline" style="margin-right: 30px;">
	                  <input type="radio" id="tr" class="form-check-input" value="2" name="mem_interest">
	                  <label class="form-check-label" for="tr">여행</label>
	            </div>
	            <div class="form-check form-check-inline" style="margin-right: 30px;">
	                  <input type="radio" id="re" class="form-check-input" value="3" name="mem_interest">
	                  <label class="form-check-label" for="re">종교</label>
	            </div>
	            <div class="form-check form-check-inline" style="margin-right: 30px;"> 
	                  <input type="radio" id="po" class="form-check-input" value="4" name="mem_interest">
	                  <label class="form-check-label" for="po">정치</label>
	             </div>
	             <div class="form-check form-check-inline">
	                  <input type="radio" id="lo" class="form-check-input" value="5" name="mem_interest">
	                  <label class="form-check-label" for="lo">연애</label>
	             </div>
	             <br/>
	             <div class="form-check form-check-inline" style="padding-top: 3px; margin-right: 30px; margin-left: 5px;">
	                  <input type="radio" id="ps" class="form-check-input" value="6" name="mem_interest">
	                  <label class="form-check-label" for="ps">심리</label>
	             </div>
	             <div class="form-check form-check-inline" style="margin-right: 30px;">
	                  <input type="radio" id="cp" class="form-check-input" value="7" name="mem_interest">
	                  <label class="form-check-label" for="cp">캠핑</label>
	             </div>
	              <div class="form-check form-check-inline" style="margin-right: 30px;">
	                  <input type="radio" id="vo" class="form-check-input" value="8" name="mem_interest">
	                  <label class="form-check-label" for="vo">봉사</label>
	             </div>
	             <div class="form-check form-check-inline">
	                  <input type="radio" id="be" class="form-check-input" value="9" name="mem_interest">
	                  <label class="form-check-label" for="be">미용</label>
	             </div>
          </div>
    
		   <div class="mb-1 col-5" style="margin-right: 65px; margin-top: 12px; padding-right: 20px;" >
		   <label class="form-label" id="basicSelect">&nbsp;MBTI</label>
				  <div class="row input-group" style="margin-top: 4px; margin-left: 1px; height: 30px;">
			           <select class="col-3 form-select" id="basicSelect" name="mbti1">
			             	<option value="I">I</option>
			             	<option value="E">E</option>
			           </select>
			           <select class="col-3 form-select" id="basicSelect" name="mbti2">
			             	<option value="S">S</option>
			             	<option value="N">N</option>
			           </select>
			           <select class="col-3 form-select" id="basicSelect" name="mbti3">
			                 <option value="F">F</option>
			             	<option value="T">T</option>
			           </select>
			           <select class="col-3 form-select" id="basicSelect" name="mbti4">
			              	<option value="P">P</option>
			           	    <option value="J">J</option>
			           </select>
	              </div>
		    </div>
    </div>

	<div class="row">               

		 <div class="mb-1 col-md-5" style=" margin-top: 8px; margin-right: 80px; margin-bottom: 0px; padding-left: 50px;">
          <label class="form-label" for="mobile-number">&nbsp;차량 번호</label>
                <input type="text" name="mem_car" id="carnumber" class="form-control mobile-number-mask" placeholder="ex) 11 가 2222  ( 필수 입력란은 아닙니다. )"/>
         </div>
              
          <%-- <div class="mb-1 col-5"  style=" margin-top: 12px;">
      	  <label class="form-label" >회원 이미지</label>
		       	<div class="input-group" >
   		    		  <input type="text"  id="inputFileName" name="mem_img" class="form-control" placeholder="이미지 파일을 첨부해주세요." 
   		    			      aria-describedby="button-addon2" />
	      				 	 <!-- <button class="btn btn-outline-primary" id="button-add" type="button" onclick="upload_go();" >
	      							 <i data-feather='search' ></i> </button> -->
	      							 
	      				<button type="button" class="btn btn-icon btn-primary waves-effect waves-float waves-light" 
								onclick="OpenWindow('common/detailForRegist.do?from=getPicture&mem_id=${member.mem_id}','회원사진등록',500,800);"
								onclick="upload_go();">		
                                <i data-feather='search'></i> </button>			 
	      							 
    					<button class="btn btn-outline-primary" id="button-add2" type="button" onclick="picture_go()" >
    							<i data-feather='check' ></i></button> 
      				<button type="button" class="btn btn-icon btn-warning waves-effect waves-float waves-light" 
						onclick="OpenWindow('common/signupForm/getPicture.do?from=getPicture&mem_id=${loginUser.mem_id}','회원이미지등록',500,800);">
                			<i data-feather='plus'></i> </button>              
            	</div>
          </div>  --%>     
          
	  	 <div class="mb-1 col-md-5" style="margin-top: 8px; margin-bottom: 0px;">								
		 <label class="form-label" style="margin-bottom: 7px;">&nbsp;회원 이미지</label>		
		 	<div class="card card-outline card-success" style=" padding-top: 0px; ">
				<div class="input-group" >
					<!-- <input type="text" id="inputFileName" name="mem_img" class="form-control" placeholder="이미지 파일을 첨부해주세요." aria-describedby="addFileBtn" />  -->
					  
						<div class="card fileInput" style=" padding-top:7px; height: 10px; width: 425px;"> </div> 
					  	<button class="btn btn-primary" onclick="addFile_go();" type="button" id="addFileBtn" ><i data-feather='search'></i></button>
				</div>
			</div>	
		 </div>

    </div>  
              
	     <input type="hidden" name="mem_cardCode" id="cardcode" class="form-control" value=""/>
	     <input type="hidden" name="mem_rank" id="mem_rank" class="form-control" value="1"/>
	               
            </form>			
	    </div>
   </div>
	            			
   <div class="mb-1 col-md-8" style=" margin-left: 710px; margin-top: -85px;" >
         <div class="d-flex justify-content-between mt-2" style="padding-right: 215px;">
              		<button type="button" class="btn btn-outline-secondary btn-prev waves-effect" onclick="go_back();">
                     <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left align-middle me-sm-25 me-0">
                    	 <polyline points="15 18 9 12 15 6"></polyline>
                     </svg>
                     <span class="align-middle d-sm-inline-block d-none">이전  <i data-feather='home' style="color: saddlebrown;"></i></span>
               		 </button>
                   
              <button class="btn btn-warning" onclick="regist_go();">
                      <span class="align-middle d-sm-inline-block d-none">작성 완료</span>
                             <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" 
                                  stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right align-middle ms-sm-25 ms-0">
                                  <polyline points="9 18 15 12 9 6"></polyline></svg>
              </button>
         </div>
    </div>

  </div>
  </div>
  
  <!-- Right Sidebar starts -->
   <div class="modal modal-slide-in sidebar-todo-modal fade" id="new-task-modal" style="display: none;" aria-hidden="true">
          <div class="modal-dialog sidebar-lg"  style="width: 35%;">
                 <div class="modal-content p-0">
                      <form id="form-modal-todo" class="todo-modal needs-validation" novalidate="novalidate" onsubmit="return false" 
                      	   data-select2-id="form-modal-todo">
                             <div class="modal-header align-items-center mb-1" style="height: 70px;">
                              <h3 class="modal-title" style="font-weight: bold;">&nbsp;📝 관리자 추가 정보 입력 </h3>
                               		<div class="todo-item-action d-flex align-items-center justify-content-between ms-auto">
                                    		 <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" 	 
                                    		 	  stroke="currentColor"  stroke-width="3" stroke-linecap="round" stroke-linejoin="round" 
                                    		 	  class="feather feather-x cursor-pointer" data-bs-dismiss="modal">
                                         <line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                              	   </div>
                             </div>
               <div class="modal-body flex-grow-1 pb-sm-0 pb-3" data-select2-id="8">
                      <div class="action-tags" data-select2-id="7">
                            <div class="mb-1">
                                   <label class="form-label" style="font-size: 18px; margin-top: 28px;">북적북적의 식구가 되신걸 환영합니다. 😃 </label> 
                                   <br/> 
                                   <label style="margin-top: 12px; font-size: 15px;"> 안내 받은 암호코드를 입력해주세요. </label>
                             </div>     
                              <div style="margin-top: 50px;">   
                                    <label style="margin-top: 7px; margin-bottom: 10px; font-size: 18px;"> 💠 북적북적 암호코드  📧</label>
                                 	<input type="text" id="todoTitleAdd" name="todoTitleAdd" class="new-todo-item-title form-control" 
                                 	  	   placeholder="Security Code">
                                 	 <br> 	   
                                 	<button type="button" class="btn btn-info add-todo-item me-1 waves-effect waves-float waves-light" 
                        		   			style="margin-left: 540px; margin-right: 0px; " >확인</button>  	   
                           	  </div>
                             
                              <div class="mb-1" data-select2-id="6" style="margin-top: 50px;">
                                     <label for="task-tag" class="form-label d-block" style="font-size: 18px; margin-bottom: 10px;">
                                     		 💠  해당 부서 👜</label>
                                           <div class="position-relative" data-select2-id="5" style="padding-top: 4px; ">
                                             	<select class="form-select task-tag select2-hidden-accessible"  style="height: 140px;"
                                                 		id="task-tag" name="task-tag"  multiple="" data-select2-id="task-tag" tabindex="-1" aria-hidden="true" 
                                              		     aria-invalid="false">
                                               		   <option value="Team" data-select2-id="12" style="padding-top: 6px; ">도서관 본부</option>
                                              		   <option value="Low" data-select2-id="13" style="padding-top: 6px; ">행정지원침</option>
	                                                   <option value="Medium" data-select2-id="14" style="padding-top: 6px; ">사서팀</option>
	                                                   <option value="High" data-select2-id="15" style="padding-top: 6px; ">운영팀</option>
	                                                   <option value="Update" data-select2-id="16" style="padding-top: 6px; ">시설관리팀</option>
                                               </select>
                                           </div>
                             </div>
                             
                              <div class="mb-1 position-relative" style="margin-top: 50px; padding-bottom: 10px;">
                                    <label for="task-assigned" class="form-label d-block" style="font-size: 18px; margin-bottom: 10px;"> 
                                    		💠 해당 직책 🚶‍♀️ (하단에서 선택하세요.)</label>
                                           <div class="position-relative" style="padding-top: 4px; ">
                                           		<select class="select2 form-select select2-hidden-accessible" id="task-assigned" name="task-assigned" 
                                           				data-select2-id="task-assigned" tabindex="-1" aria-hidden="true">
                                               		   <option data-img="../../../app-assets/images/portrait/small/avatar-s-3.jpg" value="Phill Buffer" 
                                               		   		   selected="" data-select2-id="2"> 상급 관리자 </option>
	                                                   <option data-img="../../../app-assets/images/portrait/small/avatar-s-1.jpg" value="Chandler Bing">
	                                                                                                                                     일반 관리자 </option>
	                                                   <option data-img="../../../app-assets/images/portrait/small/avatar-s-4.jpg" value="Ross Geller">
	                                                      	       사서 </option>
	                                                   <option data-img="../../../app-assets/images/portrait/small/avatar-s-6.jpg" value="Monica Geller">
	                                                       	       행정싱장 </option>
	                                                   <option data-img="../../../app-assets/images/portrait/small/avatar-s-6.jpg" value="Monica Geller">
	                                                                                                                                     사원 </option>
	                                                   <option data-img="../../../app-assets/images/portrait/small/avatar-s-2.jpg" value="Joey Tribbiani">
	                                                       	       운영팀장  </option>
	                                                   <option data-img="../../../app-assets/images/portrait/small/avatar-s-2.jpg" value="Joey Tribbiani">
	                                                       	       관리팀장  </option>
	                                                   <option data-img="../../../app-assets/images/portrait/small/avatar-s-2.jpg" value="Joey Tribbiani">
	                                                                                                                                     운영팀장 </option>
                                                </select>
                                        </div>
                              </div>
                          
                <div class="my-1" >
                		<div style= "margin-top : 80px; margin-left: 400px;">
                        <button type="submit" class="btn btn-warning add-todo-item me-1 waves-effect waves-float waves-light" 
                        		   data-bs-dismiss="modal" onclick="add_go();" >내용 추가</button>
                        <button type="button" class="btn btn-outline-secondary add-todo-item waves-effect" data-bs-dismiss="modal">
                                                                                                취  소 </button>
                		</div>
                </div>
                      </div>
                </div>    
                      </form>
                </div>
          </div>
    </div>
  <!-- Right Sidebar ends -->
    
  <!-- END: Content-->


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
<script src="<%=request.getContextPath()%>/resources/js/phone.js"></script>    
<!-- 주소검색API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>



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
			      alert("시스템장애로 확인이 불가합니다.");
			}
		});
	}

	function regist_go(){
		
		 var ranNum = new Date().getTime() + Math.random() + "";
		      $('#cardcode').val(ranNum.split('.')[0]);
			  console.log($('#cardcode').val());
			
		 if($("input[name='mem_id']").val()==""){ 
			  alert("아이디 입력은 필수사항입니다.");
			  $("input[name='mem_id']").focus();
			  return;
			}
			
		 if($("input[name='mem_pwd']").val()==""){ 
			  alert("비밀번호 입력은 필수사항입니다.");
			  $("input[name='mem_pwd']").focus();
			  return;
			}
			
	 	 if($("input[name='mem_name']").val()==""){ 
			  alert("이름 입력은 필수사항입니다.");
			  $("input[name='mem_name']").focus();
			  return;
	   	    }
		
	  	 if($("input[name='mem_age']").val()==""){ 
			  alert("나이 입력은 필수사항입니다.");
			  $("input[name='mem_age']").focus();
			  return;
	  	    }
		
		  if($("input[name='mem_birth']").val()==""){ 
			  alert("생년원일 입력은 필수사항입니다.");
			  $("input[name='mem_birth']").focus();
			  return;
	  	    }
		
		  if($("input[name='mem_phone']").val()==""){ 
			  alert("번호 입력은 필수사항입니다.");
			  $("input[name='mem_phone']").focus();
			  return;
		    }

		  if($("input[name='mem_email']").val()==""){ 
			  alert("이메일 주소 입력은 필수사항입니다.");
			  $("input[name='mem_email']").focus();
			  return;
		   }
		
		  if($("input[name='mem_addr']").val()==""){ 
		  	  alert("주소 입력은 필수사항입니다.");
			  $("input[name='mem_addr']").focus();
			  return;
		   }
		
		/* if($("input[name='mem_interest']").val()==""){ 
			alert("관심사 선택은 필수사항입니다.");
			$("input[name='mem_interest']").focus();
			return;
		}
		
		if($("input[name='mem_mbti']").val()==""){ 
			alert("MBTI 선택은 필수사항입니다.");
			$("input[name='mem_mbti']").focus();
			return;
		} */

		/* if($("input[name='mem_img']").val()==""){ 
			alert("회원 이미지 펌부는 필수사항입니다.");
			$("input[name='mem_img']").focus();
			return;
		} */
		
			var form = $("form[role='form']");
			form.submit();
	}
</script>
	
<script>
	var check = function() {
	
	if(document.getElementById('passwordConfirm').value == 0) {
		
	    document.getElementById('cfMessage').innerHTML = ' 💁🏻  비밀번호를 입력해주세오.';
		document.getElementById('cfMessage').style.color = 'dodgerblue';
	
 	}else{
		 
	 	 	if (document.getElementById('password').value ==
	
			    document.getElementById('passwordConfirm').value) {
	
			    document.getElementById('cfMessage').style.color = 'forestgreen';
	
			    document.getElementById('cfMessage').innerHTML = ' 🗝️  비밀번호가 일치합니다.';
		    } else {
	 
			    document.getElementById('cfMessage').style.color = 'tomato';
	
			    document.getElementById('cfMessage').innerHTML = ' 🔒  비밀번호가 일치하지 않습니다.';
		 	 }
		 } 
	}
</script>
		
<script>

	window.onload = function(){
         document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
         //카카오 지도 발생
         new daum.Postcode({
             oncomplete: function(data) { //선택시 입력값 세팅
                  document.getElementById("addressResult").value = data.address; // 주소 넣기
                  $("input[name=address_detail]").focus(); //상세입력 포커싱
                   }
          }).open();
      });
   }
</script>
	
<script type="text/javascript">

    $('#telInput').keyup(function (event) {
		 event = event || window.event;
		 var _val = this.value.trim();
		 this.value = autoHypenTel(_val);
	 });
</script>		
		
<script>

	function add_go(){
		alert("입력한 정보가 추가되었습니다.");		
	}

</script>

<script>
	<%-- window.onload = function(){
    	 document.getElementById("button-add").addEventListener("click", function(){ 
    		 location.href = "<%=request.getContextPath()%>/common/picture.do";	 
    	 });
     } --%>
     
     var dataNum=0;
     
     function addFile_go(){
    	 
    	 if($('input[name="mem_img"]').length >0){
    			alert("파일추가는 1개만 가능합니다.");
    			return; }
    	 
			var div=$('<div>').addClass("inputRow").attr("data-no",dataNum);
			var input=$('<input>').attr({"type":"file","name":"mem_img"}).css("margin-left","70px");
			
			var button="<button onclick='remove_go("+dataNum+");' style='border:0;outline:0; text-align:center;' class='btn btn-dark btn-sm' type='button'>x</button>";
			
			div.append(input).append(button);
			$('.fileInput').append(div);
			
			 dataNum++; 
		}
		
		function remove_go(dataNum){
			$('div[data-no="'+dataNum+'"]').remove();
		}
</script>

<script>

  	<c:if test="${status eq 'success'}">
		  alert(" 회원가입을  완료했습니다. \n 로그인 화면으로 이동합니다.");
	 	  window.location.href = "<%=request.getContextPath()%>/common/loginForm";
	</c:if>

	<c:if test="${status eq 'fail'}">
		  alert("회원가입을 실페했습니다.");
	</c:if>
</script>
<script>
function go_back(){
	history.go(-1);
}
</script>
</body>
</html>