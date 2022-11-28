<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title></title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<button type="button" onclick="db()">전송</button>
<button type="button" onclick="gugu()">gugu</button>
<button type="button" onclick="chk()">chk</button>
<div id="disp"></div>
<script>
		var json_data ={};
		var book= {
			book_title : "",
			book_author : "",
			book_publisher : "",
			book_publisherDate : "",
			book_isbn : "",
			book_imgURL : "",
		};
			
/*  		 $.ajax({
			type : "GET",
			url : "http://data4library.kr/api/itemSrch?authKey=a401c27240f444c3a4c4709be48eb5cd9b6d861b895a10ad9c91377ae15e6ecf&libCode=050001&type=ALL&pageNo=17&pageSize=100&format=json",
			data : {},
			success : function(data) {
				var res = data.response;
				console.log(res);
				var docs = res.docs;
				var doc = docs.doc;
				var tblStr = "<table border=1>"
 					tblStr += "<tr>"
 					tblStr += "<td>title</td>"
 					tblStr += "<td>author</td>"
 					tblStr += "<td>publisher</td>"
 					tblStr += "<td>date</td>"
 					tblStr += "<td>isbn</td>"
 					tblStr += "<td>kdc</td>"
 					tblStr += "<td>img</td>"
 					tblStr += "</tr>"
 					
 				$.each(docs, function(index, item){
					book.book_title = item.doc.bookname;
					book.book_author = item.doc.authors;
					book.book_publisher = item.doc.publisher;
					book.book_publishDate = item.doc.publication_year;
					book.book_isbn = item.doc.isbn13;
					book.book_imgURL = item.doc.bookImageURL;
					book.kdc_no = "";
 					tblStr += "<tr>"
 					tblStr += "<td>" + item.doc.bookname + "</td>"
 					tblStr += "<td>" + item.doc.authors + "</td>"
 					tblStr += "<td>" + item.doc.publisher + "</td>"
 					tblStr += "<td>" + item.doc.publication_year + "</td>"
 					tblStr += "<td>" + item.doc.isbn13 + "</td>"
 					tblStr += "<td>" + "" + "</td>"
 					tblStr += "<td><img src='" + item.doc.bookImageURL + "'></td>"
 					tblStr += "</tr>"
					json_data[index]  = book;
					book={};
				});
 					tblStr += "</table>"
 				console.log(json_data);
 				document.querySelector("#disp").innerHTML = tblStr;
			}
		});  
		
function hoho(){
		for(var i=0; i<100; i++){
				var bk = json_data[i];
				console.log(bk);
				var isbn = bk.book_isbn;
				console.log(isbn);
 				$.ajax({
					url:"https://www.nl.go.kr/NL/search/openApi/search.do?key=a99ad0fa444b69f00ef38ab308ea60a6c131cb9363aedba4b6d7e36d805e3beb&apiType=json&detailSearch=true&gu2=kdc&isbnOp=isbn&isbnCode="+isbn,
					type:"GET",
					async : false,
					data:{},	
					success:function(data){
						console.log(data)
						var result = data.result;
						var kdc = result[0].classNo.split('.')[0];
						console.log(kdc);
						bk.kdc_no = kdc;
						console.log(bk);
					},
					error:function(error){
					}
				});
			}
} */
		
var isbnArr = [
	9791197895999
	]
	
function gugu(){
for(var i=0; i<isbnArr.length; i++){
	//var bk = json_data[i];
	var isbn = isbnArr[i];
	$.ajax({
		url:"http://data4library.kr/api/srchDtlList?authKey=a401c27240f444c3a4c4709be48eb5cd9b6d861b895a10ad9c91377ae15e6ecf&format=json&isbn13="+isbn,
		type:"GET",
		async : false,
		data:{},	
		success:function(data){
			var res = data.response;
			var detail = res.detail[0];
			console.log(data);
			var bk = detail.book;
			book.book_title = bk.bookname;
			book.book_author = bk.authors;
			book.book_publisher = bk.publisher;
			book.book_publishDate = bk.publication_year;
			book.book_isbn = bk.isbn13;
			book.book_imgURL = bk.bookImageURL;
			book.kdc_no = bk.class_no.split('.')[0];
			console.log(book);
			json_data[i] = book;
			book={};
		},
		error:function(error){
		}
	});
}
	console.log(json_data);
}

function chk(){
	console.log(json_data);	
}
		
function db(){
	for(var j=0; j<100; j++){
		$.ajax({
			url:"<%=request.getContextPath()%>/db",
			type:"POST",
			data:JSON.stringify(json_data[j]),	
			contentType:'application/json',
			success:function(result){
			},
			error:function(error){
				console.log(error);
			}
		});
	}
}
	</script>
</body>
</html>