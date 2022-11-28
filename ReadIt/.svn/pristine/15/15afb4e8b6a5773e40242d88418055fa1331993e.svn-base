<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>

<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>


<script type="text/javascript">
var socket = null;
$(document).ready(function(){
if(${login != null}){
connectWs();
}
})


//소켓


function connectWs(){
console.log("tttttt")
var ws = new SockJS("/alram");
socket = ws;

	ws.onopen = function() {
 console.log('open');
 
 };

	ws.onmessage = function(event) {
		console.log("onmessage"+event.data);
		let $socketAlert = $('div#socketAlert');
		$socketAlert.html(event.data)
		$socketAlert.css('display', 'block');
		
		setTimeout(function(){
			$socketAlert.css('display','none');
			
		}, 5000);
};

	ws.onclose = function() {
	    console.log('close');
 };
 
 
 

};

//소켓끝
</script>