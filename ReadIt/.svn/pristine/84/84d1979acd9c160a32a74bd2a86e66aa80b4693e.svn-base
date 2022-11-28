package bookred.book.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.command.Criteria;
import bookred.book.dto.WishBookVO;

public interface WishBookDAO {
	
	void insertWishBook(WishBookVO book) throws SQLException;
	
	int selectWishBookSeqNext() throws SQLException;
	
	List<WishBookVO> selectWishBookList() throws SQLException;
	
	public int selectWishBookListCount(Criteria cri) throws SQLException;
}
