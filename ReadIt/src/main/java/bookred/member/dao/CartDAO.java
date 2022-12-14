package bookred.member.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.book.command.BookCriteria;
import bookred.book.dto.BookVO;
import bookred.member.dto.CartListVO;
import bookred.member.dto.CartVO;

public interface CartDAO {
	

	List<CartListVO> selectCartList(BookCriteria cri, String mem_id) throws SQLException;

	List<BookVO> selectBookByBookIsbn(BookCriteria cri, String book_isbn) throws SQLException;

	List<BookVO> seleteOneBookByBookIsbn(String book_isbn) throws SQLException;
	
	public int selectCartListCount(BookCriteria cri, String mem_id) throws SQLException;
	
	void deleteCart(CartVO cart) throws SQLException;
	
	public void deleteCartByCartNo(int cart_no) throws SQLException;
	
	void insertCart(CartVO cart) throws SQLException;
	
	public List<CartVO> checkCart(CartVO cart) throws SQLException;

	public CartVO selectCartListByIsbnAndId(String book_isbn, String mem_id)throws SQLException;
}
