package bookred.admin.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import bookred.admin.dto.NewBookVO;
import bookred.book.command.BookCriteria;
import bookred.book.dto.BookStockVO;
import bookred.member.dto.LockerVO;
import bookred.member.dto.RMVO;
import bookred.member.dto.RentBackVO;

public interface NewBookService {
	
	void registNewBookAllTable(NewBookVO newbookWork) throws SQLException;
	
	void updateWishState(NewBookVO wishState) throws SQLException;
	
	Map<String, Object> getAllWishBookList(BookCriteria cri) throws SQLException;
	
	int selectFromStockTableISBNCheckCount(String isbn) throws SQLException;
	
	void registToBookStockNewBook(BookStockVO newbook) throws SQLException;
	
	void updateToBookStockOldBook(BookStockVO newbook) throws SQLException;
	
	
//	void registNewBook(NewBookVO newbook) throws SQLException;
//	void registBook(NewBookVO book) throws SQLException;
	
}
