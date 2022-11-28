<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/x-handlebars-template" id="searchBook-list-template">
{{#each .}}
<div class="checkout-items" id="bookListDiv">
	<div class="card ecommerce-card">
		<div class="card-body" onclick="toForm(this)">
			<div class="row">
				<div class="col-4">
					<a><img src="{{book_imgURL}}" style="width:150px; height:211px;"/></a>
				</div>
				<div class="col-8" >
					<div class="item-options text-center">
						<div class="item-wrapper">
							<div class="item-cost">
								검색 도서
							</div>
							<input type="hidden" id="title" value="{{book_title}}"/>
							<input type="hidden" id="author" value="{{book_author}}"/>
							<input type="hidden" id="publisher" value="{{book_publisher}}"/>
							<input type="hidden" id="isbn" value="{{book_isbn}}"/>
						</div>
					</div>
					<br/>
					<h4 class="mb-0">
						<a class="text-body"style="margin-bottom: 25px; margin-top: 10px;">{{book_title}}</a>
					</h4>
					<span class="item-company">저자 : <a class="company-name">{{book_author}}</a></span>
					<br>
					<span class="item-company">출판사 : <a class="company-name">{{book_publisher}}</a></span>
					<br>
					<span class="item-company">발행연도 : <a class="company-name">{{book_publishDate}}</a></span>
					<br>
					<span class="item-company">ISBN : <a class="company-name">{{book_isbn}}</a></span>
				</div>
			</div>
		</div>
	</div>
</div>
{{/each}}
</script>
