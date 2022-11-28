<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="boardList" value="${boardList }" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title></title>
</head>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<body>
<div class="card-body">
<button type="button" onclick="formun()">for문실행</button>
	<table border=1>					
		<tr style="font-size:0.95em;">
			<th style="width:10%;">번 호</th>
			<th style="width:30%;">제 목</th>
			<th style="width:15%;">ISBN</th>
			<th style="width:15%;">KDC</th>
			<th style="width:15%;">KDC넣기</th>
		</tr>				
		<c:if test="${empty bookList }" >
			<tr>
				<td colspan="3">
					<strong>해당 내용이 없습니다.</strong>
				</td>
			</tr>
		</c:if>						
		<c:forEach items="${bookList }" var="book">
			<tr style='font-size:0.85em;'>
				<td>${book.book_no }</td>
				<td>${book.book_title }</td>
				<td >${book.book_isbn }</td>
				<td id="${book.book_no}"></td>
				<td><button type="button" onclick="kdc(${book.book_no},${book.book_isbn});">KDC가져오기</button></td>
			</tr>
		</c:forEach>
	</table>				
</div>
<script>
	var jsondata ={};
function formun(){	
	for(var i=1; i<=979; i++){
		var isbnnn = document.getElementById(i).innerText;
		console.log(isbnnn);
	}
}

function kdc(bookNo,isbnBook){
	var book_no = bookNo;
	var isbn = isbnBook;
	
	$.ajax({
		url:"https://www.nl.go.kr/NL/search/openApi/search.do?key=a99ad0fa444b69f00ef38ab308ea60a6c131cb9363aedba4b6d7e36d805e3beb&apiType=json&detailSearch=true&gu2=kdc&isbnOp=isbn&isbnCode="+isbn,
		type:"GET",
		data:{},	
		success:function(data){
			var root = data;
			var result = root.result;
			var kdc = result[0].classNo.split('.')[0];
			jsondata[book_no] = kdc;
			console.log(jsondata);
			document.getElementById(book_no).innerHTML = kdc;
		},
		error:function(error){
		}
	});

}
</script>
</body>
</html>