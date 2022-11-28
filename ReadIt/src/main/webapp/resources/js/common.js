// 사용자 사진 출력
function MemberPictureThumb(contextPath){
	for(var target of document.querySelectorAll('.manPicture')){
		var id = target.getAttribute('data-id');
		
		target.style.backgroundImage = "url('" + contextPath + "/member/getPicture.do?id=" + id + "')";
		target.style.backgroundPosition="center";
		target.style.backgroundRepeat = "no-repeat";
		target.style.backgroundSize = "cover";
	}
}

function OpenWindow(UrlStr ,num,w,h) {
	
        var url = 	UrlStr;
	    var windowW = w;
	    var windowH = h;
	    var winHeight = document.body.clientHeight;
	    var winWidth = document.body.clientWidth;
	    var winX = window.screenX || window.screenLeft || 0;
	    var winY = window.screenY || window.screenTop || 0;
	    var popX = winX + (winWidth - windowW)/2;
	    var popY = winY + (winHeight - windowH)/2;

		window.open(url, num, "width=" + windowW + ", height=" + windowH + ", scrollbars=no, menubar=no, top=" + popY+ ", left=" + popX);

	}
//팝업창 닫기
function CloseWindow(){
	window.opener.location.reload(true);
	window.close();
}

//function list_go(page, url){
//	if(!url) url="list.do";
//	var jobForm = $('#jobForm');
//	jobForm.find("[name='page']").val(page);
//	jobForm.find("[name='perPageNum']").val($('select[name="perPageNum"]').val());
//	jobForm.find("[name='searchType']").val($('select[name="searchType"]').val());
//	jobForm.find("[name='keyword']").val($('div.input-group>input[name="keyword"]').val());
//	jobForm.attr({
//		action : url,
//		method : 'get'
//	}).submit();
//}

var contextPath = "";

function summernote_go(target, context){
	
	contextPath = context;
	console.log(target);
	target.summernote({
		placeholder : "여기에 내용을 적으세요.",
		lang : "ko-KR",
		height : 250,
		disableResizeEditor : true,
		callbacks:{
			onImageUpload : function(files, editor, welEditable){
				for(var file of files){
					if(file.name.substring(file.name.lastIndexOf(".")+1).toUpperCase() != "JPG"){
						alert("JPG 이미지 형식만 가능합니다.");
						return;
					}
					if(file.size > 1024 * 1024 * 5){
						alert("이미지는 5MB 미만입니다.");
						return;
					}
				}
				
				for(var file of files){
					sendFile(file, this);
				}
			},
			onMediaDelete : function(target){
				deleteFile(target[0].src);
			}
	
		}
	}); //summernote api참고
}

function sendFile(file, el){
	var form_data = new FormData();
	form_data.append("file", file);
	$.ajax({
		url: contextPath + '/uploadImg.do',
		data: form_data,
		type: "POST",
		contentType: false,
		processData: false,
		success: function(img_url){
			$(el).summernote("editor.insertImage", img_url);
		},
		error: function(){
			alert(file.name + " 업로드에 실패했습니다.");
		}
	});
}

function deleteFile(src){
	var splitSrc = src.split("=");
	var fileName = splitSrc[splitSrc.length-1];
	
	var fileData = {'fileName' : fileName};
	//var fileData = {fileName : fileName};
	
	$.ajax({
		url: contextPath + '/deleteImg.do',
		data: JSON.stringify(fileData),
		type: "post",
		contentType: "application/json",
		success: function(res){
			console.log(res);
		},
		error: function(){
			alert("이미지 삭제가 불가합니다.");
		}
	});
}

//RESTful error 자리
function AjaxErrorSecurityRedirectHandler(status){
	if(status == "302"){
		alert("세션이 만료되었습니다.\n로그인 하세요");
		location.reload();
	}else if(status == "403"){
		alert("권한이 유효하지 않습니다.");
		history.go(-1);
	}else if(status == "404"){
		alert("해당 페이지를 찾을수 없습니다.");
	}else{
		alert("시스템 장애로 실행이 불가합니다.");
		history.go(-1);
	}
}

function makeData(date){
	var year = date.getFullYear();
	var month = ('0' + (date.getMonth() + 1)).slice(-2);
	var day = ('0' + date.getDate()).slice(-2);
	var dateF = year + '-' + month  + '-' + day;
	return dateF;
}

function search_go(page,url) {
	if(!url) url="${webPath}/main/myInfo/bookCart.do";
			var jobForm = $('#jobForm');
			jobForm.find("[name='page']").val(page);
			jobForm.find("[name='perPageNum']").val(
					$('select[name="perPageNum"]').val());
			jobForm.find("[name='searchType']").val(
					$('select[name="searchType"]').val());
			jobForm.find("[name='keyword']").val(
					$('div.input-group>input[name="keyword"]').val());
			jobForm.attr({
				action : url,
				method : 'get'
			}).submit();
}
