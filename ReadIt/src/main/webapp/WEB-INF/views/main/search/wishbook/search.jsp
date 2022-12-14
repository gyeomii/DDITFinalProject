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
<link rel="apple-touch-icon" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/ico/favicon.ico">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/vendors.min.css">
<link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/wizard/bs-stepper.min.css">
<link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/css/forms/spinner/jquery.bootstrap-touchspin.css">
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
<link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/app-ecommerce.css">
<link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/pickers/form-pickadate.css">
<link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-wizard.css">
<link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/extensions/ext-component-toastr.css">
<link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/plugins/forms/form-number-input.css">
<link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/css/pages/page-knowledge-base.css">

<!-- END: Page CSS-->

<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css" href="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/assets/css/style.css">
<!-- END: Custom CSS-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

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
<body style="max-height: 780px; overflow-y: hidden; ">
<div class="ajax-loader">
  <img src="<%=request.getContextPath() %>/resources/images/?????????.gif" class="img-responsive" />
</div>
<div class="container" style="margin-top: 30px;" style="font-family: 'Noto Sans KR', sans-serif;">
	<div class="row">
		<div class="col-6">
		    <!-- Knowledge base Jumbotron -->
		    <section id="knowledge-base-search">
		        <div class="row">
		            <div class="col-12">
		                <div class="card knowledge-base-bg text-center" style=" height: 100px; background-color: white !important;  background-image: url('${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/images/banner/parallax-4.jpg')">
		                    <div class="card-body" style="padding-top: 15px;">
		                        <h2 class="text-primary">?????? ??????</h2>
		                        <div class="kb-search-input" >
		                            <div class="input-group input-group-merge" style="height:40px; width:auto">
		                                <span class="input-group-text"><i data-feather=""></i></span>
		                                <input type="text" class="form-control " id="keyword" placeholder="???????????? ???????????????" onkeyup="if(window.event.keyCode==13){aladinSearch()}"/>
		                                <button type="button" class="form-control btn-primary" onclick="aladinSearch()">??????</button>
		                            </div>
		                       </div> 
		                    </div>
		                </div>
		            </div>
		        </div>
		    </section>
		    <!--/ Knowledge base Jumbotron -->
		    <hr/>
			<div id="searchResult" style="overflow: auto;height: 530px; background-image: url('${webPath}/resources/img/????????????.png')">
				<!-- searchList Start -->
			</div>
			<hr/>
		</div>
		<div class="col-6">
			<div class="card-header">
				<h4 class="card-title">?????????????????? ??????</h4>
				<p class="card-text">
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
        	                    <input type="hidden" id="form-img" name="book_imgurl" class="form-control" placeholder="???????????????" />
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
        	                    <input type="text" id="form-isbn" name="isbn" class="form-control" placeholder="ISBN" />
            	                <p><small class="text-muted">ISBN??? ???????????? ????????????.</small></p>
                	        </div>
						</div>
						<div class="col-12">
							<div class="mb-1">
    	                        <label class="form-label" for="helperText">????????????</label>
		        	            <input type="text" id="form-pubDate" name="publishdate" class="form-control" placeholder="??????" />
            	                <p><small class="text-muted">??????????????? ???????????? ????????????.</small></p>
                	        </div>
						</div>
					</div>
					<input type="submit" value="??????" class="btn btn-primary" >
				</div>
			</form>
			<!-- form end -->
		</div>
	</div>
</div>
<%@ include file="./handlebarsSearchTemplate.jsp" %>

<script	src="${webPath}/resources/jquery/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<!-- END: Content-->
    <!-- BEGIN: Vendor JS-->
<script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/vendors.min.js"></script>
<!-- BEGIN Vendor JS-->

<!-- BEGIN: Page Vendor JS-->
<script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/ui/jquery.sticky.js"></script>
<script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/wizard/bs-stepper.min.js"></script>
<script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/forms/spinner/jquery.bootstrap-touchspin.js"></script>
<script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/vendors/js/extensions/toastr.min.js"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Theme JS-->
<script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app-menu.js"></script>
<script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/core/app.js"></script>
<!-- END: Theme JS-->

<!-- BEGIN: Page JS-->
<script src="${webPath}/resources/vuexy/html-version/Bootstrap5/vuexy-html-bootstrap5-admin-template/app-assets/js/scripts/pages/app-ecommerce-checkout.js"></script>
<!-- handlebars Template -->
<script src="${webPath}/resources/js/common.js"></script>
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
	var imgPath = target.querySelector("#imgPath").value;
	var author = target.querySelector("#author").value;
	var publisher = target.querySelector("#publisher").value;
	var isbn = target.querySelector("#isbn").value;
	var fullDate = target.querySelector("#pubDate").value;
	var pubDate = fullDate.split('-')[0];
	$('input#form-title').val(title);
	$('input#form-img').val(imgPath);
	$('input#form-author').val(author);
	$('input#form-publisher').val(publisher);
	$('input#form-isbn').val(isbn);
	$('input#form-pubDate').val(pubDate);
}
</script>


<script>
const axios = {}; // axios?????? ????????? ????????? ?????????????????? ?????? (namespace???)
//????????? get ??????
axios.get = (p_url) =>{
  	return new Promise((resolve,reject)=>{
    	var xhr = new XMLHttpRequest();
      	xhr.open("get",p_url,false);
      	xhr.responseType='json';
      	xhr.onreadystatechange = ()=>{
          	if(xhr.readyState == 4 && xhr.status == 200){
            	//??????????????????
              	resolve(xhr.response); // resolve??? ???????????? ????????? ??????
          	}
      	}
      	xhr.send();
  	})
}


var pageNum = 1;

function aladinSearch(){	
$("#searchResult").scrollTop(0);//????????? ??? ??????
console.log(keyword);

var keyword = document.getElementById('keyword').value;
var c_disp = document.getElementById("disp");
var myUrl = "http://www.aladin.co.kr/ttb/api/ItemSearch.aspx?ttbkey=ttbkimsg73881405001&MaxResults=5&start="+ pageNum +"&SearchTarget=Book&output=js&Version=20131101&Query=" + keyword

$.ajax({
	url:myUrl,
	type:"GET",
	async : true,
	data:{},
    beforeSend: function(){
    	$('.ajax-loader').css("display", "block");
    },
    complete: function(){
    	$('.ajax-loader').css("display", "none");
		//??????
    },
	success:function(result){
	   	console.log(result);
	   	var item = result.item;
	   	for(var i=0; i<item.length; i++){
	   		var isbn13 = item[i].isbn13
	   		$.ajax({
				url:"http://data4library.kr/api/srchDtlList?authKey=a401c27240f444c3a4c4709be48eb5cd9b6d861b895a10ad9c91377ae15e6ecf&format=json&isbn13="+isbn13,
				type:"GET",
				async : false,
				data:{},	
				success:function(data){
					var detail = data.response.detail;
					var book = detail[0].book
					var img = book.bookImageURL;
					item[i].link = img;
				   	console.log(item[i]);
				},
				error:function(error){
					console.log(error);
				}
			});
	   	}
	   	
		var template = Handlebars.compile($('#searchBook-list-template').html());
		var htmlCode = template(item);
		$('.checkout-items').remove();
		$('#searchResult').append(htmlCode);
		
	},
	error:function(error){
	}
});
pageNum++;

}		
</script>
<script>

//????????? ????????? ?????????
var v_tunningVal = 1;  // ???????????? ?????? ?????? ????????? ??????
    //???????????? ?????? ???????????? 
$("#searchResult").scroll(function(){
	var elem = $("#searchResult");
	var v_top = parseInt(elem[0].scrollTop);// ??????????????? ????????? ????????? ?????? ??????
 	var v_clientHeight = elem[0].clientHeight;
 	var v_docHeight = elem[0].scrollHeight;
	  
		console.log("top : " + v_top);
		console.log("client : " + v_clientHeight);
		console.log("doc : " + v_docHeight);

 	if( v_clientHeight + v_top == v_docHeight - v_tunningVal){
		var keyword = document.getElementById('keyword').value;
		var c_disp = document.getElementById("disp");
		var myUrl = "http://www.aladin.co.kr/ttb/api/ItemSearch.aspx?ttbkey=ttbkimsg73881405001&MaxResults=5&start="+ pageNum +"&SearchTarget=Book&output=js&Version=20131101&Query=" + keyword
 		
		$.ajax({
    		url:myUrl,
    		type:"GET",
    		async : true,
    		data:{},
    	    beforeSend: function(){
    	    	$('.ajax-loader').css("display", "block");
    	    },
    	    complete: function(){
    	    	$('.ajax-loader').css("display", "none");
    	    },
    		success:function(result){
    		   	console.log(result);
    		   	var item = result.item;
    		   	for(var i=0; i<item.length; i++){
    		   		var isbn13 = item[i].isbn13
    		   		$.ajax({
    					url:"http://data4library.kr/api/srchDtlList?authKey=a401c27240f444c3a4c4709be48eb5cd9b6d861b895a10ad9c91377ae15e6ecf&format=json&isbn13="+isbn13,
    					type:"GET",
    					async : false,
    					data:{},	
    					success:function(data){
    						var detail = data.response.detail;
    						var book = detail[0].book
    						var img = book.bookImageURL;
    						item[i].link = img;
    					   	console.log(item[i]);
    					},
    					error:function(error){
    						console.log(error);
    					}
    				});
    		   	}
    		   	
    			var template = Handlebars.compile($('#searchBook-list-template').html());
    			var htmlCode = template(item);
    			$('#searchResult').append(htmlCode);
    			
    		},
    		error:function(error){
    		}
    	});
    	pageNum++;
 	}
});
</script>
</body>
</html>