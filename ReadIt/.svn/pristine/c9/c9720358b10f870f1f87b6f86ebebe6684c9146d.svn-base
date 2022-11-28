<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</body>
<script>
Swal.fire({
	icon: 'warning',
	title: '권한이 없습니다',
	text: '이전페이지로 돌아갑니다'
}).then(function(){
	if (window.opener) {
		window.close();
	} else {
		history.go(-1);
	}



})


</script>
