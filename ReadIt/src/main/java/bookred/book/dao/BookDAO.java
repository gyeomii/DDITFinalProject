package bookred.book.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.book.command.BookCriteria;
import bookred.book.dto.BookVO;

public interface BookDAO {

	void insertBook(BookVO book) throws SQLException;

	void updateKDC_CRI(BookVO book) throws SQLException;
	
	int selectBookSeqNext() throws SQLException;
	
	List<BookVO> selectBookList() throws SQLException;
	
	List<BookVO> selectAllBookList(BookCriteria cri) throws SQLException;
	
	BookVO selectBookByBookNo(int book_no) throws SQLException;

	List<BookVO> selectAllBookByBookIsbn(String book_title) throws SQLException;
	List<BookVO> selectBookByBookIsbn(String book_title) throws SQLException;
	
	List<BookVO> searchBookByBookTitle(BookCriteria cri) throws SQLException;
	
	public int selectBookListCount(BookCriteria cri) throws SQLException;
	
	public int selectAllBookListCount(BookCriteria cri) throws SQLException;
	
	int selectKdcNoCount(int num) throws SQLException;
	
	public BookVO selectBookStock(String book_isbn) throws SQLException;
	
	BookVO selectKDCLOC(int kdc_no) throws SQLException;
	
	public List<Integer> selectRECMBook() throws SQLException;
	
	public List<BookVO> selectRentableBookByISBN(String book_isbn) throws SQLException;
	
	public List<String> selectBestBookList() throws SQLException;
	
	public List<BookVO> getBookList() throws SQLException;
	
	void updateAIRecordCountPlus() throws SQLException;	
	
	void updateAIMBTIBookCountPlus() throws SQLException;	
	
	void updateAIUserCustomCountPlus() throws SQLException;	
	
	void updateAIFaceAiCountPlus() throws SQLException;	
}
