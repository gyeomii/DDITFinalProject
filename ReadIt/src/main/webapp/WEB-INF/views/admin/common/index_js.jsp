
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script type="text/x-handlebars-template" id="subMenu-list-template">
	{{#each .}}
		<li class="nav-item subMenu" >
    		<a href="javascript:goPage('<%=request.getContextPath()%>{{murl}}','{{mcode}}');" class="nav-link">
        		<i class="{{micon}}"></i>
          		 <p>{{mname}}</p>
      		</a>
		</li>
	{{/each}}
</script>

<script type="text/x-handlebars-voltemplate" id="uchk-list-voltemplate">
{{#each .}}

							<div class="list-item d-flex align-items-start">
                                    <div class="me-1">
								<a href="javascript:goPage('${webPath}/main/myInfo/myPage.do','M050200');" class="">
                                        <div class="avatar bg-light-success">
                                            <span class="avatar-content" > 
												<img class="round" style="width:25px; heigth: 25px;"id="info_mem_img" src="/readit/resources/images/{{alramImg}}" alt="avatar">
											</span>
                                        </div>
                                    </div>
                                    <div class="list-item-body flex-grow-1">
                                        <p class="media-heading"><span class="fw-bolder">{{prefix}}</span>&nbsp; </p><small class="notification-text"> {{alarmContent}}&nbsp; {{cdate}}</small>
                                    </div>

								</a>
                            </div>

{{/each}}
</script>

<script type="text/x-handlebars-template" id="uchk-list-template">
{{#each .}}

							<div class="list-item d-flex align-items-start">
                                    <div class="me-1">
								<a href="javascript:goPage('<%=request.getContextPath()%>{{murl}}','{{mcode}}');" class="">
                                        <div class="avatar bg-light-success">
                                            <span class="avatar-content" > 
												<img class="round" style="width:25px; heigth: 25px;"id="info_mem_img" src="/readit/resources/images/{{alramImg}}" alt="avatar">
											</span>
                                        </div>
                                    </div>
                                    <div class="list-item-body flex-grow-1">
                                        <p class="media-heading"><span class="fw-bolder">{{prefix}}</span>&nbsp; </p><small class="notification-text"> {{alarmContent}}&nbsp; {{cdate}}</small>
                                    </div>
								</a>
                            </div>

{{/each}}
</script>



<script>
<%--
function subMenu_go(mCode){
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
}
--%>
function printData(dataArr,target,templateObject){
	var template=Handlebars.compile(templateObject.html());
	var html = template(dataArr);	
	target.html(html);
}


function goPage(url,mCode,from){	
	if(from == "ifr"){
		location.href = url;
		parent.parentsUrl(mCode);
		setTimeout(()=>{
			parent.$('html, body').scrollTop(0,0)
		},100);//미세한 시간차를 주어 이동후 작동하도록.
		// HTML5 지원브라우저에서 사용 가능
	}else{
		$('iframe[name="ifr"]').attr({src : url});
		setTimeout(()=>{
			window.scrollTo(0,0);//스크롤 맨 위로
			parent.$('html, body').scrollTop(0,0);
		},100);//미세한 시간차를 주어 이동후 작동하도록.
		// HTML5 지원브라우저에서 사용 가능
		if (typeof(history.pushState) == 'function') {
		    //현재 주소를 가져온다.
		    var renewURL = location.href;
		    //현재 주소 중 .do 뒤 부분이 있다면 날려버린다.
		    renewURL = renewURL.substring(0, renewURL.indexOf(".do")+3);
		    
		    if (mCode != 'M900000') {
		        renewURL += "?mCode="+mCode;
		    }
		    //페이지를 리로드하지 않고 페이지 주소만 변경할 때 사용
		    history.pushState(mCode, null, renewURL);
		 
		} else {
		    location.hash = mCode;
		}
	}
}


goPage('<%=request.getContextPath()%>${menu.murl}','${menu.mcode}');
//subMenu_go('${menu.mcode}'.substring(0,3)+"0000");
</script>









