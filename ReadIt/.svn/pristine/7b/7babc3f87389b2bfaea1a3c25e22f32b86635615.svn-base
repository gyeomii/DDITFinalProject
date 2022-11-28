package bookred.admin.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.command.Criteria;
import bookred.admin.dto.NewBookVO;
import bookred.book.command.BookCriteria;
import bookred.book.dto.BookStockVO;
import bookred.book.dto.WishBookVO;
import bookred.member.dto.LockerVO;
import bookred.member.dto.RMVO;
import bookred.member.dto.RentBackVO;

public interface NewBookDAO {
	
	void insertInNewBookWork(NewBookVO newbookWork) throws SQLException;
	
	void insertInNewBook(NewBookVO newbook) throws SQLException;
	
	void insertInBookMaster(NewBookVO book) throws SQLException;
	
	void updateWishState(NewBookVO wishState) throws SQLException;
	
	List<WishBookVO> selectWishBookList(BookCriteria cri) throws SQLException;
	
	public int selectFromStockTableISBNCheckCount(String isbn) throws SQLException;
	
	void insertToBookStockNewBook(BookStockVO newbook) throws SQLException;
	
	void insertToBookStockOldBook(BookStockVO newbook) throws SQLException;
	
	
}
