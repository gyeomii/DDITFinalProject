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
    <title>Security - Vuexy - Bootstrap HTML admin template</title>
<link rel="apple-touch-icon"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600"
	rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
	

<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/wizard/bs-stepper.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/spinner/jquery.bootstrap-touchspin.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/extensions/toastr.min.css">
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
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/app-ecommerce.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-pickadate.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-wizard.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-toastr.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-number-input.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/page-knowledge-base.css">
<!-- END: Page CSS-->
<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/pickers/pickadate/pickadate.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/pickers/flatpickr/flatpickr.min.css">
<!-- END: Vendor CSS-->
<!-- BEGIN: Page CSS-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/core/menu/menu-types/horizontal-menu.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-flat-pickr.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-pickadate.css">
<style>
.mg {
	margin: 10px;
}

.btnSize {
	width: 100%;
	height: 100%;
}

.divSize {
	height: 80px;
}
#readyModal{
	    position:fixed; 
        width: 100%;
        height:100%; /* fixed ????????? ????????? ?????? ??? */
        left:0;
        top:0;
        background-color: rgba(248,248,248, 0.8);
        z-index: 200;
        display: none;  /* ?????? ????????? ??? ????????? */
}
#readyContent {
        margin: 10% auto;
        width: 60%;   /* ?????? ?????? */
        height: 50%;
        left:50%;
        top:20%;
 }
</style>
</head><!-- END: Head-->

<!-- BEGIN: Body-->

<body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">



    <!-- BEGIN: Content-->
    <div class="app-content content " style="padding-top: 0px;">
        <div class="content-wrapper container-xxl p-0">
            <div class="content-body">
                
                
                <div class="row">
                    <div class="col-12">
                        <ul class="nav nav-pills mb-2" style="padding-top: 40px; padding-bottom: 20px;">
                            <!-- account -->
	                           <li class="nav-item" style="margin-left: 5px;">
    	                            <a class="nav-link active" onclick="goPage('<%=request.getContextPath()%>/admin/facilityManage/restrictedArea.do','M930100','ifr')">
        	                            <!-- <i data-feather="play" class="font-medium-3 me-50"></i> -->
            	                        <span class="fw-bold">???? ?????????????????? ????????? ??????</span>
                	                </a>
                    	        </li>
                        	</ul>
                  	  </div>
             	 </div>
                
   	
   						<div class="card" style="min-height: 100px">
		   				 <div class="card-body"> 
		   					<div class="row justify-content-between" style="margin-left: 205px;">
			   						<div class="col-md-5 mb-1" style="margin:0 auto;">
										<label class="form-label" for="fp-default"><h3 class="fw-bolder"> ???? ?????? ??????</h3></label>
										<input type="text" id="fp-default" name="fr_day" class="form-control flatpickr-basic" value="" placeholder="YYYY-MM-DD"  
											   style="width:300px;"/>
									</div>
			   					<div class="col-md-5 mb-1" style="margin: auto; margin-left: -50px; margin-right: 180px;">
			   					  	<label class="form-label" for="fp-default"><h3 class="fw-bolder"> ?????? ?????? ???????????? ??????</h3></label>	
			   						<select  aria-controls="DataTables_Table_0" onchange="ajaxPlace()" class="form-select" id ="dayCheck" style ="width:300px;">
			   							<option value="m1">??????????????? 1???</option>
			   							<option value="m2">??????????????? 2???</option>
			   							<option value="m3">??????????????? 3???</option>
			   							<option value="m4">??????????????? 4???</option>
			   						</select>
		   						</div>
	   						</div>
	   					 </div>
         				</div>
         				
         				
	         				
	         		<div class="card">
							<div class="card-header" style="margin-top: 10px; margin-left: 20px;">
								<h2 class="fw-bolder">&nbsp;???? ?????? ??????</h2>
							</div>
							<div class="card-body" id="ajaxArea" style="min-height: 500px; margin-left: 220px; margin-top: 20px;">
									<c:forEach var="i" begin="1" end="4">
										<div class="row mg">
										
										<c:forEach var="j" begin="1" end="4">
											<div class="col-2 divSize" style="margin-right: 50px; margin-bottom: 20px;">
												<button id="seatNum${i}0${j}" type="button" onclick="openModal(${i}0${j})"
												class="btn btn-outline-primary waves-effect btnSize">${i}0${j}</button>
											</div>
										</c:forEach>
											</div>
									</c:forEach>
							</div>
            	     </div>
        </div>
    </div>
</div>
    
    
<!-- BEGIN  readdyModal -->
<div class="container">
<div id="readyModal"  >
	<div id="readyContent" style="margin-top: 80px;">
		<div class="card" >
			<div class="container" >

			<div class="card-header" style="text-align:center; margin-top: 17px; margin-bottom: 0px;"><h2>&nbsp;&nbsp;&nbsp;?????????????????????????? ????????? ??????</h2></div>
			<div class="container" style="width: 260px; margin-left: 77px;">
				<div style="margin-top: 20x;">
				    <h5 >&nbsp;&nbsp;&nbsp;???? ?????? ?????? : 9???~11???</h5>
					<div class="card-body text-white bg-info" style="display:inline-block;border: 1px solid; width:650px; margin-top: 5px; margin-left: 47px;">
						<div id="9h">
							<div style="margin-top: -3px;">?????? ??????</div>
						</div>	
					</div>
				</div>
				<br>
				<div style="margin-top: 8px;">
				   <h5>&nbsp;&nbsp;&nbsp;???? ?????? ?????? : 11???~13???</h5>
					<div class="card-body text-white bg-secondary" style="border: 1px solid; width:650px; margin-top: 10px; margin-left: 47px;">
						<div id="11h">
						 	<div style="margin-top: -3px;">?????? ??????</div>
					   </div>	
				   </div>
				</div>
				<br>
				<div style="margin-top: 8px;">
				<h5>&nbsp;&nbsp;&nbsp;???? ?????? ?????? : 13???~15???</h5>
					<div class="card-body text-white bg-primary" style="border: 1px solid; width:650px; margin-top: 10px; margin-left: 47px;">
						<div id="13h">
							<div style="margin-top: -3px;">?????? ??????</div>
						</div>	
					</div>
				</div>	
				<br>
				<div style="margin-top: 8px;">
				<h5>&nbsp;&nbsp;&nbsp;???? ?????? ?????? : 15???~17???</h5>
					<div class="card-body text-white bg-dark " style="border: 1px solid; width:650px; margin-top: 10px; margin-left: 47px;">
						<div id="15h">
							<div style="margin-top: -3px;">?????? ??????</div>
						</div>	
					</div>	
				</div>
				<div class="card-footer d-flex  justify-content-end" style="margin-top: 10px;">
					<div class="col-2">
					<button type="button"  class="btn btn-outline-primary" style="width:100px; margin-left: 420px;" onclick="closeModal();">??????</button>
				</div>
			</div>
		
		</div>
		
		</div>
		</div>
	</div>
</div>
</div>
<!-- END Modal -->    
    
    	
<script>
            	     window.onload = function(){
            	    
            	    document.getElementById('fp-default').value = new Date().toISOString().substring(0, 10);;
            	     var roomStatusList = ${seatCount};	 
            	     var index= 0;
            	     <c:forEach var="i" begin="1" end="4">
         				<c:forEach var="j" begin="1" end="4">
    	        			var button_seat_reset = document.querySelector('#seatNum'+${i}+'0'+${j});
         					if(roomStatusList[index]>0){
    	        				button_seat_reset.className = 'btn btn-outline-danger waves-effect btnSize';
         					}else{
         						button_seat_reset.className = 'btn btn-outline-primary waves-effect btnSize';
         					}
    	        			index+=1;
    					</c:forEach>
    				</c:forEach>
            	     }
</script>
    
    
<script>
		function openModal(roomNum){
			var rmodal = document.querySelector("#readyModal");
			var fr_dayone = document.querySelector("#fp-default");
			var fac_codeone = document.querySelector("#dayCheck");
			var fr_seatone = roomNum
			
			var data = 
			{
					"fr_day":fr_dayone.value,
					"fac_code":fac_codeone.value,
					"fr_seat":fr_seatone
			}
			
			
			$.ajax({
					type : "POST",
					 url : "profile.do",
		        	data : JSON.stringify(data),
		        	contentType:"application/json;charset=utf-8",
		     	 success : function(data){
		     	 			for(var i=0; i<data.length; i++){
			     	 			if(data[i].fr_hour == 9){
			     	 				var html = "";
			     	 				$('#9h').empty();
			     	 				html += `<div>ID: \${data[i].mem_id}</div>`;
			    					html += `<div>??????: \${data[i].mem_name}</div>`;
			    					html +=`<div>????????????:\${data[i].mem_phone}</div>`
			    					$('#9h').append(html);
			     	 			}else if(data[i].fr_hour == 11){
			     	 				var html = "";
			     	 				$('#11h').empty();
			     	 				html += `<div>ID: \${data[i].mem_id}</div>`;
			    					html += `<div>??????: \${data[i].mem_name}</div>`;
			    					html +=`<div>????????????:\${data[i].mem_phone}</div>`
			    					$('#11h').append(html);
			     	 			}else if(data[i].fr_hour == 13){
			     	 				var html = "";
			     	 				$('#13h').empty();
			     	 				html += `<div>ID: \${data[i].mem_id}</div>`;
			    					html += `<div>??????: \${data[i].mem_name}</div>`;
			    					html +=`<div>????????????:\${data[i].mem_phone}</div>`
			    					$('#13h').append(html);
			     	 			}else if(data[i].fr_hour == 15){
			     	 				var html = "";
			     	 				$('#15h').empty();
			     	 				html += `<div>ID: \${data[i].mem_id}</div>`;
			    					html += `<div>??????: \${data[i].mem_name}</div>`;
			    					html +=`<div>????????????:\${data[i].mem_phone}</div>`
			    					$('#15h').append(html);
			     	 			}
		     	 			}
		     	 			},
		     	   error : function(XMLHttpRequest, textStatus, errorThrown){
				     		  Swal.fire({
				                  icon: 'warning',
				                  title: '????????? ?????? ??????????????????. ',
				               })
				            }		
			});
			
			
			rmodal.style.display = "block";
		}

		function closeModal(){
			var html = "<div>?????? ??????</div>";
			$('#9h').empty();
			$('#11h').empty();
			$('#13h').empty();
			$('#15h').empty();
			$('#9h').append(html);
			$('#11h').append(html);
			$('#13h').append(html);
			$('#15h').append(html);
			var rmodal = document.querySelector("#readyModal");
			rmodal.style.display = "none";
		}
</script>    


	
<script>
		function ajaxPlace() {
			
			var date_seat = document.querySelector('#fp-default'); 		
			var dayCheck = document.querySelector("#dayCheck");
			var area = $("#ajaxArea");
			
			var html ="";
			var subHtml ="";
			
			if(!date_seat.value){
				 Swal.fire({
	                 icon: 'info',
	                 title: '????????? ??????????????????. ',
	              })
		    	return;
		    }
			
			var data = {
			    		"day": date_seat.value,
			    		"place": dayCheck.value
			    }
			
			  $.ajax({
			    	type : "POST", 
		            url : "ajaxPlace.do",
		            data : data,
		            success : function(res){
		            	var length = res.length;
// 		            	alert(res[length-1])
// 		            	alert(res[length-2])
		            	
		            	if(res[length-2]==="m1"||res[length-2]==="m2"){
		            		html +=`<div class="card-header">`
		            		html +=`<h4 class="card-title">(\${res[length-1]})??????????????????(\${res[length-2]})???</h4>`
		            		html +=`</div>`
							for(var i =1; i<=4; i++){
					   			html +=`<div class="row mg">`
								for(var j=1; j<=4; j++){
				    				html +=`<div class="col-3 divSize">`
				    				if(res[(i-1)*4+(j-1)]==='0'){
				    					html +=`<button  id="seatNum\${i}0\${j}" type="button" onclick="openModal(\${i}0\${j})" class="btn btn-outline-primary waves-effect btnSize" >\${i}0\${j}</button>`
				    				}else{
				    					html +=`<button  id="seatNum\${i}0\${j}" type="button" onclick="openModal(\${i}0\${j})" class="btn btn-outline-danger waves-effect btnSize" >\${i}0\${j}</button>`	
				    				}
				    				html +=`</div>`
				    		   }
				    		html +=`</div>`
				    		}
							area.empty();
							area.append(html) 
		            	}else if(res[length-1]==="m3"||res[length-1]==="m4"){
		            				subHtml +=`<div class="card-header">`
		            				subHtml +=`<h4 class="card-title">???????????????(\${res[length-1]})???</h4>`
		            				subHtml +=`</div>`
		            		for(var i =1; i<=2; i++){
			    			    subHtml+=`<div class="container row" style="float: none; margin:100 auto;" >`
				    			for(var j=1; j<=2; j++){
					    				subHtml+=`<div class="col-md-3" style="float: none; margin:0 auto;">`
					    				if(res[(i-1)*2+(j-1)]==='0'){
					    					subHtml+=`<button  id="seatNum\${i}0\${j}"  type="button" onclick="openModal(\${i}0\${j})" class="btn btn-outline-primary waves-effect btnSize" style="width: 250px; height: 200px">\${i}0\${j}</button>`
					    				}else{
					    					subHtml+=`<button  id="seatNum\${i}0\${j}"  type="button" onclick="openModal(\${i}0\${j})" class="btn btn-outline-danger waves-effect btnSize" style="width: 250px; height: 200px">\${i}0\${j}</button>`	
					    				}
					    				subHtml+=`</div>`
				    				}
			    				subHtml+=`</div>`
			    				subHtml+=`<br>`
			    			}
							area.empty();
							area.append(subHtml)  
						}
					     
		            },
		            error : function(XMLHttpRequest, textStatus, errorThrown){
		            	  Swal.fire({
			                  icon: 'warning',
			                  title: '????????? ?????? ??????????????????. ',
			               })
		            	
		            }
			    }); 
    	}
</script>
  
	    	
   
    
    
    
    
    <!-- END: Content-->

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <!-- BEGIN: Vendor JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
	<!-- BEGIN Vendor JS-->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
	
	<!-- BEGIN: Page Vendor JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/wizard/bs-stepper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/spinner/jquery.bootstrap-touchspin.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/toastr.min.js"></script>
	<!-- END: Page Vendor JS-->
	<!-- BEGIN: Theme JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
	<!-- END: Theme JS-->
	<!-- BEGIN: Page Vendor JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/picker.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/pickadate/legacy.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
	<!-- END: Page Vendor JS-->
	<!-- BEGIN: Page JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/forms/pickers/form-pickers.js"></script>
	<!-- END: Page JS-->
	<!-- BEGIN: Page JS-->
	<script
		src="<%=request.getContextPath()%>/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-ecommerce-checkout.js"></script>
	<!-- handlebars Template -->
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
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
</body>
<!-- END: Body-->

</html>