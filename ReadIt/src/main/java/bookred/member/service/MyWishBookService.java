package bookred.member.service;

import java.sql.SQLException;
import java.util.List;

import bookred.book.dto.WishBookVO;
import bookred.member.dto.CartVO;

public interface MyWishBookService {
	
//	void regist(WishBookVO book) throws SQLException;
	
	List<WishBookVO> getMyWishBookList(String mem_id) throws SQLException;
	
//	List<WishBookVO> getMyWishBookListCheckCart(String mem_id) throws SQLException;
	
}
