<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="author" content="ZXing for JS">

  <title>도서 대출 바코드 스캔</title>
</head>

<body>
   <h1 class="title">도서 바코드 스캔</h1>

<div id="qr-reader" style="width: 600px"></div>

<input type="text" id="isbn" value="">

  <!-- include the library -->
<script src="https://unpkg.com/html5-qrcode@2.0.9/dist/html5-qrcode.min.js"></script>

<script>
var isbn = document.querySelector('#isbn');
function onScanSuccess(decodedText, decodedResult) {
    console.log(`Code scanned = ${decodedText}`, decodedResult);
    console.log(" decodedText", decodedText)
    isbn.value = decodedText
}
var html5QrcodeScanner = new Html5QrcodeScanner(
	"qr-reader", { fps: 10, qrbox: 250 });
html5QrcodeScanner.render(onScanSuccess);

</script>

</body>

</html>
