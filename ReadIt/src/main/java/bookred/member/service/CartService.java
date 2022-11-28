package bookred.member.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;


import bookred.book.command.BookCriteria;
import bookred.member.dto.CartVO;

public interface CartService {

	
	Map<String, Object> getCartList(BookCriteria cri, String mem_id) throws SQLException;
	 
	void deleteCart(CartVO vart) throws SQLException;

	void insertCart(CartVO vart) throws SQLException;
	
	public List<CartVO> checkCart(CartVO cart) throws SQLException;
	
}
