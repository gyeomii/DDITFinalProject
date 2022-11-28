package bookred.member.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.command.Criteria;
import bookred.book.dto.WishBookVO;
import bookred.member.dto.CartVO;

public interface MyWishBookDAO {
	
	
	List<WishBookVO> selectMyWishBookList(String mem_id) throws SQLException;

//	List<WishBookVO> selectMyWishBookListCheckCart(String mem_id) throws SQLException;
	
}
