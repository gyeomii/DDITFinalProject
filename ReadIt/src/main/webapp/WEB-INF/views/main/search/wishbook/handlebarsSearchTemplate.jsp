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
					<a><img src="{{link}}" style="width:150px; height:211px;"/></a>
				</div>
				<div class="col-8" >
					<div class="item-options text-center">
						<div class="item-wrapper">
							<div class="item-cost">
								알라딘 검색 도서
							</div>
							<input type="hidden" id="title" value="{{title}}"/>
							<input type="hidden" id="imgPath" value="{{link}}"/>
							<input type="hidden" id="author" value="{{author}}"/>
							<input type="hidden" id="publisher" value="{{publisher}}"/>
							<input type="hidden" id="isbn" value="{{isbn13}}"/>
							<input type="hidden" id="pubDate" value="{{pubDate}}"/>
						</div>
					</div>
					<br/>
					<h4 class="mb-0">
						<a class="text-body"style="margin-bottom: 25px; margin-top: 10px;">{{title}}</a>
					</h4>
					<span class="item-company">저자 : <a class="company-name">{{author}}</a></span>
					<br>
					<span class="item-company">출판사 : <a class="company-name">{{publisher}}</a></span>
					<br>
					<span class="item-company">발행연도 : <a class="company-name">{{pubDate}}</a></span>
					<br>
					<span class="item-company">ISBN : <a class="company-name">{{isbn13}}</a></span>
					<br>
					<span class="item-company">카테고리명 : <a class="company-name">{{categoryName}}</a></span>
				</div>
			</div>
		</div>
	</div>
</div>
{{/each}}
</script>
