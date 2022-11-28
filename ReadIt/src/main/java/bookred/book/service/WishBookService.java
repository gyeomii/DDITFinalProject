package bookred.book.service;

import java.sql.SQLException;
import java.util.List;

import bookred.book.dto.WishBookVO;

public interface WishBookService {
	
	void regist(WishBookVO book) throws SQLException;
	
	List<WishBookVO> getWishBookList() throws SQLException;
	
	
}
