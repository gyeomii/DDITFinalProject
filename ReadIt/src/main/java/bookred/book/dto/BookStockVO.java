package bookred.book.dto;

import java.util.Date;
import java.util.List;

public class BookStockVO {

	private String book_isbn = "";
	private int book_count;
	private int book_rentable = 0;
	
	public String getBook_isbn() {
		return book_isbn;
	}
	public void setBook_isbn(String book_isbn) {
		this.book_isbn = book_isbn;
	}
	public int getBook_count() {
		return book_count;
	}
	public void setBook_count(int book_count) {
		this.book_count = book_count;
	}
	public int getBook_rentable() {
		return book_rentable;
	}
	public void setBook_rentable(int book_rentable) {
		this.book_rentable = book_rentable;
	}
	
	
	
	

}
