package bookred.book.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import bookred.book.command.BookCriteria;
import bookred.book.dto.BookVO;

public interface BookService {
	
	void regist(BookVO book) throws SQLException;
	
	List<BookVO> getBookList() throws SQLException;
	Map<String, Object> getAllBookList(BookCriteria cri) throws SQLException;
	
	BookVO getBookByBookNo(int book_no) throws SQLException;
	
	List<BookVO> selectBookByBookIsbn(String book_isbn) throws SQLException;
	
	List<BookVO> getBookListForAI(String[] book_no_list) throws SQLException;
	
	Map<String, Object> getBookByBookTitle(BookCriteria cri) throws SQLException;
	
	int selectKdcNoCount(int num) throws SQLException;
	
	BookVO selectBookStock(String book_isbn) throws SQLException;
	
	List<BookVO> getRECMBookList() throws SQLException;
	
	List<BookVO> getRentableBookByISBN(String book_isbn) throws SQLException;
	
	List<BookVO> getBestBookList() throws SQLException;
	
	void yaya() throws SQLException;
	
	void updateAIRecordCountPlus() throws SQLException;	
	void updateAIMBTIBookCountPlus() throws SQLException;	
	void updateAIUserCustomCountPlus() throws SQLException;	
	void updateAIFaceAiCountPlus() throws SQLException;	
}
