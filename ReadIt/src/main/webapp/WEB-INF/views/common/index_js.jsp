    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<script>

function goPage(url,mCode,from){	
	var myIfr = document.querySelector("#ifr");

	if(from == "ifr"){
		location.href = url;
		parent.parentsUrl(mCode);
		console.log(mCode);
	}else{
		$('iframe[name="ifr"]').attr({src : url});
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
	myIfr.onload = function(){
		console.log("js실행")
		setTimeout(()=>{
		myIfr.height = 1000;
		 console.log("ifr1 : " + myIfr.contentDocument.documentElement.scrollHeight);
		 myIfr.height = myIfr.contentDocument.documentElement.scrollHeight+100;
		 console.log("ifr2 : "+myIfr.height);
			parent.$('html, body').scrollTop(0,0)
		// HTML5 지원브라우저에서 사용 가능
		},100);
	}
}


goPage('<%=request.getContextPath()%>${menu.murl}','${menu.mcode}');
</script>







    
