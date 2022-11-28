<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
	<c:choose>  
		<c:when test="${loginUser.authority eq 'ROLE_ADMIN'}">
			<script>
					location.href="admin/index.do";
// 					alert("관리자 페이지 진입");
			</script>
		</c:when> 
		<c:otherwise>
			<script>
					location.href="index.do";
			</script>
		</c:otherwise>
	</c:choose>