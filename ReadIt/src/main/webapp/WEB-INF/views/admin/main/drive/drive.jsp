<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html class="loading"  data-textdirection="ltr">
<!-- BEGIN: Head-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>드라이브 스루</title>
    <link rel="apple-touch-icon" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/charts/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/toastr.min.css">
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
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/dashboard-ecommerce.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/charts/chart-apex.css">
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-toastr.css">
	<link rel="stylesheet" href="${webPath}/resources/css/confirm.css">
    <!-- END: Page CSS-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
    <!-- END: Custom CSS-->
	<script src="https://unpkg.com/ag-grid-community/dist/ag-grid-community.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>
<!-- END: Head-->
<style>
#searchModal{
		font-family: 'Noto Sans KR', sans-serif;
	    position:fixed; 
        width: 100%;
        height:100%; /* fixed 일때는 요따로 써도 됨 */
        left:0;
        top:0;
        background-color: rgba(248,248,248, 0.8);
        z-index: 200;
        display: none;  /* 보통 초기에 안 보이겡 */
}
#modalContent {
		font-family: 'Noto Sans KR', sans-serif;
        margin: 20% auto;
        width: 50%;   /* 부모 기준 */
        height: 50%;
        left:50%;
        top:50%;
 }
.input-file-button{
  padding: 6px 25px;
  background-color:#FF6600;
  border-radius: 4px;
  color: white;
  cursor: pointer;
}
.form-control{
  height: 30px;
}
#carNuminput{
	margin-bottom: 10px; 
	height: 65px;
	width: 148px; 
	padding: 10px; 
	font-size: 20px; 
	text-align: center;
	border: 2px solid #be98e9;
	border-radius: 7px;
	background-color: #e1ebff;
}

</style>
<!-- BEGIN: Body-->
<body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">

     <!-- confirm 모달을 쓸 페이지에 추가 start-->
     <section class="modal modal-section type-confirm" style="margin-left: 50%; padding-top: 40px;padding-bottom: 20px; margin-top: 300px;">
         <div class="enroll_box">
             <p class="menu_msg"></p>
         </div>
         <div class="enroll_btn">
             <button class="btn pink_btn btn_ok">확인</button>
             <button class="btn gray_btn modal_close" style="padding-top: 0px;">닫기</button>
         </div>
     </section>
     <!-- confirm 모달을 쓸 페이지에 추가 end-->

     <!-- alert 모달을 쓸 페이지에 추가 start-->
     <section class="modal modal-section type-alert" style="margin-left: 50%; padding-top: 40px; padding-bottom: 40px; margin-top: 300px;">
         <div class="enroll_box">
             <p class="menu_msg"></p>
         </div>
         <div class="enroll_btn">
             <button class="btn pink_btn modal_close">확인</button>
         </div>
     </section>
     <!-- alert 모달을 쓸 페이지에 추가 end-->
<!-- BEGIN modal -->
<div id="searchModal" >
	<div id="modalContent">
		<div class="card">
			<div class="card-header"><h3>예약 조회</h3></div>
			<div class="card-body">
				<div>
					<div class="row pd">
					<div id="rmlistDiv"></div>
					</div>
				</div>
			</div>
			<div class="card-footer d-flex  justify-content-end" >
				<div style="position: relative;"></div>
				<div style="float: right;">
					<button type="button"  class="btn btn-outline-primary" onclick="choiceRM();">선택</button>
					<button type="button"  class="btn btn-outline-primary" onclick="closeModal();">닫기</button>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END Modal -->

    <!-- BEGIN: Content-->
            <div class="content-body" style="padding: 20px; font-family: 'Noto Sans KR', sans-serif;">
                <!-- Dashboard Ecommerce Starts -->
                <section id="dashboard-ecommerce">
                  <div class="row match-height" style="padding-right: 15px;">
                   <!-- Revenue Report Card -->
                        <div class="col-lg-8 col-12">
                            <div class="card card-revenue-budget">
                                <div class="row mx-0">
                                    <div class="col-md-12 col-12 revenue-report-wrapper">
                                        <h4 class="card-title mb-25" style="padding-bottom: 20px;">차량 확인</h4>
                                        <div class="row" style="text-align: center;">
										   <div class="col-md-8" >
	                                           <label for="myFile">
											   <img src="${webPath}/resources/img/car2.jpg" id="preview" height="280px;">
												</label>
											</div>
											<div class="col-md-4">
											 <div class="card-body " style="padding: 0px;">
	                                            <img src="${webPath}/resources/img/aicar.jpg" height="100px;">
	                                            <input type="text" id="carNuminput" value=""> 
	                                         </div>
	                                         <div>
	                                         	<button type="button" id="checkRez" style="border: none; padding: 0px;">
	                                         <img src="${webPath}/resources/img/ch.jpg" id="" height="95px;" >
	                                         	</button>
	                                         </div>
	                                         <div>
<!-- 	                                         	<button type="button"  style="border: none; padding: 0px;"> -->
<%-- 	                                         <img src="${webPath}/resources/img/ch.jpg" id="" height="45px;" > --%>
<!-- 	                                         	</button> -->
	                                         </div>
											</div>
                                           <form action="" id="myForm" enctype="multipart/form-data" >
										        <input type="file" name="file"  id="myFile" value=""  style="display: none;">										       
										   </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/ Revenue Report Card -->
                    
                        <div class="col-lg-4 col-12">
                            <div class="row match-height">
                                <!-- Bar Chart - Orders -->
                                    <div class="card" style="height: 370px; ">
                                          <div class="mt-0">
                                        <div class="more-info" style="padding: 20px;">
                                        <h4 class="card-title mb-25" style="padding-bottom: 20px;">회원정보</h4>
                                        <label class="col-form-label" for="first-name">회원아이디</label>
                                        <input type="text" id="mem_id" class="form-control" name="contact" readonly >
                                        <label class="col-form-label" for="first-name">회원명</label>
                                        <input type="text" id="mem_name" class="form-control" name="contact" readonly >
                                        <label class="col-form-label" for="first-name">등급</label>
                                        <input type="text" id="mem_grade" class="form-control" name="contact" readonly >    
                                        <label class="col-form-label" for="first-name">전화번호</label>
                                        <input type="text" id="mem_call" class="form-control" name="contact" readonly >                                          
                                        </div>
                                    </div>
                                    </div>
                                <!--/ Bar Chart - Orders -->
                            </div>
                        </div>
                    </div>

                    <div class="row match-height">
                    <!-- Developer Meetup Card -->
                        <!--/ Developer Meetup Card -->
                        <div class="col-lg-12 col-12">
                            <div class="card card-company-table">
                            <div class="more-info" style="padding: 20px;">
                                <div class="card-body p-0">
                                 <h4 class="card-title mb-25" style="padding-bottom: 20px;">도서정보</h4>
                                <div id="book_info" class="ag-theme-alpine" style="height:250px"></div>
			                <div style="position: relative; padding-top: 15px;">
			                <div style="float: right;">
								<button type="reset" class="btn btn-primary " id="bookRent" onclick="bookRent()">대출하기</button>
								<button type="reset" class="btn btn-danger " id="" onclick="closeClick()">창 닫기</button>
			                </div>
			                </div>
                                </div>
                                </div>
                            </div>
                        </div>
					</div>
                </section>
                <!-- Dashboard Ecommerce ends -->
            </div>
    <!-- END: Content-->

    <!-- BEGIN: Vendor JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
<%--     <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/toastr.min.js"></script> --%>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/dashboard-ecommerce.js"></script>
    <!-- END: Page JS-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="${webPath}/resources/js/confirm.js"></script>
    <%@ include file="../../../common/index_js.jsp"%>

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
    const cfile = document.querySelector("#myFile");
    const cmyForm = document.querySelector("#myForm");
    cfile.onchange = function(){
    	console.log(cfile.files);
    	let oneFile = cfile.files[0];
    	let fileReader = new FileReader();
    	fileReader.readAsDataURL(oneFile);
    	fileReader.onload = function(){
//     		console.log(fileReader.result);
            let carImg = document.getElementById("preview");
    		carImg.height = 280;
    		carImg.src = fileReader.result;
    		goAI();
    	}
    }
    </script>
    
    <script>
    function goAI(){
    	let formData = new FormData(cmyForm);
    	$.ajax({
    	type : 'post',
    	url : 'http://127.0.0.1:5000',
    	data : formData,
    	contentType: false,
        processData:false,
    	success : function(res){
    		document.getElementById("carNuminput").value = res;
    		},
   		error:function(error){
   			action_popup.alert("AI연결오류/ 차량번호를 직접 입력하세요");
   		    }	
    	});
    }
    </script>
    
    <script>
    var checkRez = document.querySelector("#checkRez");
    var rmList = [];
    
    checkRez.addEventListener("click",memInfo );
    
    function memInfo(){
    	var dt_car_no = document.getElementById("carNuminput").value;
    	$.ajax({
        	type : 'get',
        	url : "${webPath}/admin/driveThrough/checkCar.do",
        	data : {dt_car_no:dt_car_no},
        	success : function(data){
        				console.log(data);
        				rmList = data;      	
	         			if(data.length > 1) {
	         				//rmList 중 1 선택. 
	         				  var v_table = "<table style='width: 100%;'>";
	         				  v_table += "<tr>";
	                          v_table += "<td>" + "선택" + "</td>";
	                          v_table += "<td>" + "회원아이디" + "</td>";
	                          v_table += "<td>" + "회원이름" + "</td>";
	                          v_table += "<td>" + "예약일"  + "</td>";
	                          v_table += "<td>" + "신청일"  + "</td>";
	                          v_table += "</tr>";
							for (var i = 0; i < data.length; i++) {
								var mem_id = data[i].mem_id;
								var mem_name = data[i].mem_name;
								var want_date = moment(data[i].want_date).format('YYYY-MM-DD');
								var rm_date = moment(data[i].rm_date).format('YYYY-MM-DD');
								v_table += "<tr>";
			                    v_table += "<td>" + "<input type='radio' name = 'number' class='form-check-input' value = '"+i+"'></td>";
			                    v_table += "<td>" + mem_id + "</td>";
			                    v_table += "<td>" + mem_name  + "</td>";
			                    v_table += "<td>" + want_date + "</td>";
			                    v_table += "<td>" + rm_date  + "</td>";
			                    v_table += "</tr>";
							}	         				
							 v_table += "</table>";
							 document.querySelector("#rmlistDiv").innerHTML += v_table;
	         			     searchRM();
	         			     return false;
	         			} else if (data.length == 0) {
	         				action_popup.alert("차량번호로 조회된 예약내역이 없습니다");
	         				return false;
						} 
	         			getMEMandBookinfo(rmList[0]);
        			},
        	error:function(error){
        		action_popup.alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
    		    }
        	});
    }
    
    </script>
    <script>
	function searchRM(){
		var smodal = document.querySelector("#searchModal");
		smodal.style.display = "block";
	}
	function choiceRM(){
		var smodal = document.querySelector("#searchModal");
		var checkVal = $('input[name=number]:checked').val();
		getMEMandBookinfo(rmList[checkVal]);
		console.log(rmList[checkVal]);
		document.querySelector("#rmlistDiv").innerHTML = "";
		smodal.style.display = "none";
	}
	function closeModal(){
		var smodal = document.querySelector("#searchModal");
		document.querySelector("#rmlistDiv").innerHTML = "";
		smodal.style.display = "none";
	}
	</script>
    
    <script>
	var bkList;
	function getMEMandBookinfo(rmList){
	   $.ajax({
        	type : 'post',
        	url : "${webPath}/admin/driveThrough/memAndRezBookList.do",
        	data : JSON.stringify(rmList),
        	contentType : "application/json;charset=utf-8",
        	dataType: "JSON",
        	success : function(dataMap){
//         		console.log(dataMap);
        		bkList = dataMap.bkList;
				var memberInfo = dataMap.member;
				var mem_gradeName;
// 				console.log(memberInfo);
				document.getElementById("mem_id").value = memberInfo.mem_id;
				document.getElementById("mem_name").value = memberInfo.mem_name;
				document.getElementById("mem_call").value = memberInfo.mem_phone;
				if(memberInfo.mem_rank == 1){mem_gradeName="알"} 				
				if(memberInfo.mem_rank == 2){mem_gradeName="책벌레"} 				
				if(memberInfo.mem_rank == 3){mem_gradeName="책책박사"} 				
				document.getElementById("mem_grade").value = mem_gradeName;
				
				var driveBookList = dataMap.driveBookList;
// 				console.log(driveBookList);
				
				for(var i= 0; i<driveBookList.length; i++){
					console.log(dataMap.driveBookList[0].rm_date);
					driveBookList[i].want_date = moment(driveBookList[i].want_date).format('YYYY-MM-DD');
					driveBookList[i].rm_date = moment(driveBookList[i].rm_date).format('YYYY-MM-DD');
				}
				console.log(driveBookList[0].rm_date);
				
				book_gridOptions.api.setRowData(dataMap.driveBookList);
        		},
        		
	   		error:function(error){
	   			action_popup.alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		    	}
	        });
	   }
	   
	function bookRent(){
		console.log(bkList);
		$.ajax({
			type : 'post',
        	url : "${webPath}/admin/driveThrough/driveRent.do",
        	data : JSON.stringify(bkList),
        	contentType : "application/json;charset=utf-8",
        	success : function(res){
        		
        		Swal.fire({
        			icon: 'success',
        			title: '드라이브스루 대출 완료.',
        			text: '대출이 완료 되었습니다.'
        		}).then(function(){
        			window.location.reload();
        		})
        		
//         		action_popup.alert("대출이 완료 되었습니다");
//         		window.location.reload();
        		
        	},
        	error:function(error){
	   			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		    	}
		});
	}
   
    </script>
    <script>
    const book_columnDefs = [
    	  {headerName:"도서번호",field: "book_no", width:100, cellClass: 'alignCenter'},
    	  {headerName:"도서명",field: "book_title", width:350},
    	  {headerName:"저자",field: "book_author", width:150},
    	  {headerName:"출판사",field: "book_publisher", width:150, cellClass: 'alignCenter'},
//     	  {headerName:"신청일",field: "rm_date", width:150, cellClass: 'alignCenter'},
    	  {headerName:"방문일",field: "want_date",width:150, cellClass: 'alignCenter'},
    	];
    const book_rowData = [
  		  { book_no: "", book_title: "", book_author: "",book_publisher:"", rm_date:"", want_date:""}
  		];
  	
	const book_gridOptions = {
	  	 columnDefs: book_columnDefs,
	  	 rowData: book_rowData,
	  	 defaultColDef: {  // 모든 컬럼에 공통으로 주는 옵션 설정
	  	   sortable:true,
	  	   filter:false,
	  	   resizable:false,
	  	   editable:false,
	  	 },
	  	 pagination:false,
	  	 paginationPageSize:2,  //위 AutoPageSize랑 배타적
	  };
	
	  document.addEventListener('DOMContentLoaded', () => {
	      const book_gridDiv = document.querySelector('#book_info');
	      new agGrid.Grid(book_gridDiv, book_gridOptions);
	  });
    </script>
    <script>

    </script>
    <script>
	function closeClick(){
		window.close();
	}
</script>


</body>
<!-- END: Body-->

</html>