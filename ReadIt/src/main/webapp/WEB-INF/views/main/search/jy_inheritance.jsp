<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/x-handlebars-template" id="searchBook-list-template">
	{{#each .}}
	
              <div class="checkout-items" id="bookListDiv" style="font-family: 'Noto Sans KR', sans-serif;">                              
                  <div class="card ecommerce-card">
                      <div class="item-img">
                          <a href="app-ecommerce-details.html">
                              <img src="{{book_imgURL}}" />
                          </a>
                      </div>
                      <div class="card-body">
                          <div class="item-name">
                              <h4 class="mb-0"><a href="#" class="text-body" style="margin-bottom: 25px; margin-top: 10px;">{{book_title}}</a></h4>
                            
                              <span class="item-company">저자 <a href="#" class="company-name">{{book_author}}</a></span><br>
                              <span class="item-company">출판사 <a href="#" class="company-name">{{book_publisher}}</a></span><br>
  						   	  <span class="item-company">발행연도 <a href="#" class="company-name">{{book_publishDate}}</a></span><br>
                     	      <span class="item-company">ISBN <a href="#" class="company-name">{{book_isbn}}</a></span><br>
                  	          <span class="item-company">도서 위치 <a href="#" class="company-name">3층 어린이도서 329</a></span>
                            
                              <div class="item-rating">
                                  <ul class="unstyled-list list-inline">
                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
                                      <li class="ratings-list-item"><i data-feather="star" class="filled-star"></i></li>
                                      <li class="ratings-list-item"><i data-feather="star" class="unfilled-star"></i></li>
                                  </ul>
                              </div>
                          </div>
                      </div>
                      <div class="item-options text-center">
                          <div class="item-wrapper">
                              <div class="item-cost">
                                  <h4 class="item-price">{{book_state}}</h4>
                              </div>
                          </div>
                           <button type="submit" class="btn btn-success btn-cart move-cart" name="{{book_title}}" onclick="goPage('<%=request.getContextPath()%>/main/search/bookDetail.do?book_no={{book_no}}','M020310','ifr');" >
                              <i data-feather="heart" class="align-middle me-25"></i>
                              <span class="text-truncate" >도서 상세보기</span>
                          </button>
                           <button type="button" class="btn btn-warning btn-cart move-cart" id="" >
                              <i data-feather="heart" class="align-middle me-25"></i>
                              <span class="text-truncate" id ="{{book_isbn}}" onclick="cartCheck(this.id);" >도서 장바구니 넣기</span>
                          </button>
                      </div>
                  </div>       
          </div>
	{{/each}}
</script>

<script>
/*  var searchText = $('#searchText').val();
if (!searchText) {
	alert("검색어를 입력해주세요.");
	return;
}
var data = {
	"searchText" : searchText
}

// 	console.log(searchText); // ok -->
// 	console.log(JSON.stringify(data)); -->
$.ajax({
	method : "get",
	url : "/readit/main/search/easySearchBookList?searchText=" + searchText,
	data : {},
	async : true,
	success : function(data) {
		console.log(data);
		var bookList = data;
		console.log(typeof(bookList[0]).is_rentable);

		for (var i = 0 ; i < bookList.length; i++){
			if (bookList[i].is_rentable == 1){
				bookList[i].book_state="대출가능";
			} else
				bookList[i].book_state="대출불가능";
		}
		
		
		var template = Handlebars.compile($('#searchBook-list-template').html());
		var html = template(bookList);
		$('.checkout-items').remove();
		$("#searchResult").after(html);
		
		var myIfr = parent.document.querySelector("#ifr");
 				 console.log(myIfr.contentDocument.documentElement.scrollHeight);
		 myIfr.height = myIfr.contentDocument.documentElement.scrollHeight+50;
	}
}); */
</script>








