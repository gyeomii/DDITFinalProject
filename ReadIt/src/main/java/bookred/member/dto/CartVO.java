package bookred.member.dto;

public class CartVO {
	
	private int cart_no;
	private String mem_id;
	private String book_isbn;
	
	public int getCart_no() {
		return cart_no;
	}
	public void setCart_no(int cart_no) {
		this.cart_no = cart_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getBook_isbn() {
		return book_isbn;
	}
	public void setBook_isbn(String book_isbn) {
		this.book_isbn = book_isbn;
	}
	
	@Override
	public String toString() {
		return "CartVO [cart_no=" + cart_no + ", mem_id=" + mem_id + ", book_isbn=" + book_isbn + "]";
	}
}
	
	