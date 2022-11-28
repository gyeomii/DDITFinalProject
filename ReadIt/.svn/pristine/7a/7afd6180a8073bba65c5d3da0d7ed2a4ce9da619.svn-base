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
    <button onclick="requestPay()">결제하기</button> <!-- 결제하기 버튼 생성 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
var IMP = window.IMP; 
IMP.init("imp22033531"); 

function requestPay() {
    IMP.request_pay({
        pg : 'kakaopay.TC0ONETIME',
        pay_method : 'card',
        merchant_uid: "57008833-33004", 
        name : '당근 10kg',
        amount : 1004,
        buyer_email : 'Iamport@chai.finance',
        buyer_name : '아임포트 기술지원팀',
        buyer_tel : '010-1234-5678',
        buyer_addr : '서울특별시 강남구 삼성동',
        buyer_postcode : '123-456'
    }, function (rsp) { // callback
        if (rsp.success) {
            console.log(rsp);
        } else {
            console.log(rsp);
        }
    });
}
</script>
</body>
</html>