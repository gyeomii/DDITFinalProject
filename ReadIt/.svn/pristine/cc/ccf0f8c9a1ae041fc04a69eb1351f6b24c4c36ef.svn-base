    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js" ></script>
<script  type="text/x-handlebars-template"  id="subMenu-list-template">
	{{#each .}}
	
								<tr>
									<td><input class="form-check-input" type="radio"
										name="inlineRadioOptions" id="inlineRadio"  value="{{review.rent_no }}" >
									</td>
									<td id="book_title">{{review.book_title}}</td>
									<td>{{review.rev_content}}</td>
									<td>
													{{#if review.rev_updatedate}}
{{review.rev_updatedate}}
{{else}}
											{{review.rev_regdate }}
										{{/if}}		

									<td>${review.keyword}</td>
									<td>
										<div class="star-ratings">
											<div class="star-ratings-fill space-x-2 text-lg">
												<c:choose>
													<c:when test="${review.rev_grade eq 5}">
														<span>★</span>
														<span>★</span>
														<span>★</span>
														<span>★</span>
														<span>★</span>
													</c:when>
													<c:when test="${review.rev_grade eq 4}">
														<span>★</span>
														<span>★</span>
														<span>★</span>
														<span>★</span>
													</c:when>
													<c:when test="${review.rev_grade eq 3}">
														<span>★</span>
														<span>★</span>
														<span>★</span>
													</c:when>
													<c:when test="${review.rev_grade eq 2}">
														<span>★</span>
														<span>★</span>
													</c:when>
													<c:when test="${review.rev_grade eq 1}">
														<span>★</span>
													</c:when>
												</c:choose>
											</div>
											<div class="star-ratings-base space-x-2 text-lg">
												<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
											</div>
										</div>
									</td>

								</tr>
	{{/each}}


</script>


<script>
<%-- function subMenu_go(mCode){
	//alert(mCode);	
	if(mCode!="M000000"){	
		
		$.ajax({
			url:"<%=request.getContextPath()%>/subMenu.do?mCode="+mCode,
			method:"get",			
			success:function(data){
				printData(data,$('.subMenuList'),$('#subMenu-list-template'));
			},
			error:function(error){
				AjaxErrorSecurityRedirectHandler(error.status);	
			}
		});
		
	}else{
		$('.subMenuList').html("");	
	}
}


function printData(dataArr,target,templateObject){
	
	var template=Handlebars.compile(templateObject.html());
	
	var html = template(dataArr);
	
	target.html(html);
} --%>

// function changeSubMenu(mCode){
// 	const classLength =
// 	    document.getElementsByClassName(nav-link).classList.length;
// 	console.log("classLength",classLength);
// 	for(let i = 0; i < classLength; i++){
// 	    console.log(document.getElementsByClassName(nav-link).item(i));
// }
//     document.getElementsByClassName('nav-link').classList.length;

function changeSubMenu(mCode){
	var nav_classLength =
	    document.querySelectorAll('.nav-link').length;
	    for(let i = 0; i < nav_classLength; i++){
	    	var nav_classOne = document.querySelectorAll('.nav-link').item(i).id;
		    console.log("nav_classOne",nav_classOne);
		    console.log("mCode",mCode);
			 if (mCode == nav_classOne) {
			 	$('#'+nav_classOne).attr('class',"nav-link active")
			 } else {
				$('#'+nav_classOne).attr('class',"nav-link")
			}
	    }
}

	

function goPage(url,mCode,from){	
	if(from == "ifr"){
		//alert(url);
		location.href = url;
		parent.parentsUrl(mCode);
		setTimeout(()=>{
			parent.$('html,body').window.scrollTo(0,0);//스크롤 맨 위로
		},100);//미세한 시간차를 주어 이동후 작동하도록.
		// HTML5 지원브라우저에서 사용 가능
		
	}else{
		
		
// 		/* 버튼 클릭시 표시 바뀌는 구간 */
		var id_nav =  $('.nav-link').attr('id');
		
// 		console.log("class_nav", class_nav);
// 		console.log("id_nav", id_nav);
// 		if (mCode == id_nav) {
// 			 $('#M050503').attr('class',"nav-link active")
// 			 $('#M050504').attr('class',"nav-link")
// 		} else if(mCode == 'M050504'){
// 			 $('#M050504').attr('class',"nav-link active")
// 			 $('#M050503').attr('class',"nav-link")
// 		}
		
		/* 버튼 클릭시 표시 바뀌는 구간
		  mcode가 없으면 기초 값을 넣어줘야 한다.*/
		if(mCode == null || mCode == ""){
			mCode = 'M050503';
		}
	    changeSubMenu(mCode)
		
		//alert(url);
		$('iframe[name="ifr"]').attr("src",url);
		setTimeout(()=>{
			window.scrollTo(0,0);//스크롤 맨 위로
		},100);//미세한 시간차를 주어 이동후 작동하도록.
		// HTML5 지원브라우저에서 사용 가능
		if (typeof(history.pushState) == 'function') {
		    //현재 주소를 가져온다.
		    var renewURL = location.href;
		    //현재 주소 중 .do 뒤 부분이 있다면 날려버린다.
		    renewURL = renewURL.substring(0, renewURL.indexOf(".do")+3);
		    
		    if (mCode != 'M000000') {
		        renewURL += "?mCode="+mCode;
		    }
		    //페이지를 리로드하지 않고 페이지 주소만 변경할 때 사용
		    history.pushState(mCode, null, renewURL);
		 
		} else {
		    location.hash = mCode;
		}
	}
}



goPage('<%=request.getContextPath()%>/main/myInfo/volunteer.do','${mcode}');
//subMenu_go('${menu.mcode}'.substring(0,3)+"0000")
</script>






    
