<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="pageMaker" value="${dataMap.pageMaker }" />    
 
<form id="jobForm">	
	<input type='hidden' name="notpage" value="" />
	<input type='hidden' name="notperPageNum" value=""/>
	<input type='hidden' name="notsearchType" value="" />
	<input type='hidden' name="notkeyword" value="" />
	
</form>
 
   <!-- Pagination with Icon and Text starts -->
  <nav aria-label="Page navigation">
      <ul class="pagination justify-content-center mt-2">
          <li class="page-item first"><a class="page-link" href="javascript:list_go(1);">First</a></li>
          <li class="page-item prev"><a class="page-link" href="javascript:list_go('${pageMaker.prev ? pageMaker.startPage-1 : cri.page}');">Prev</a></li>
          <c:forEach var="pageNum" begin="${pageMaker.startPage }" end="${pageMaker.endPage }" >
          	<li class="page-item ${cri.page == pageNum?'active':''}"><a class="page-link" href="javascript:list_go('${pageNum}');">${pageNum }</a></li>
          </c:forEach>
          <li class="page-item next"><a class="page-link" href="javascript:list_go('${pageMaker.next ? pageMaker.endPage+1 :cri.page}');">Next</a></li>
          <li class="page-item last"><a class="page-link" href="javascript:list_go('${pageMaker.realEndPage}');">Last</a></li>
      </ul>
  </nav>
   <!-- Pagination with Icon and Text ends -->