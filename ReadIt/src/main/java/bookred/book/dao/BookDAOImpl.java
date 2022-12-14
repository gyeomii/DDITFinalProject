package bookred.book.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import bookred.book.command.BookCriteria;
import bookred.book.dto.BookVO;

public class BookDAOImpl implements BookDAO {
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
//	private BookDAO bookDAO;
//	public void setBookDAO(BookDAO bookDAO) {
//		this.bookDAO = bookDAO;
//	}
	
	
	@Override
	public void insertBook(BookVO book) throws SQLException {
		//bookDAO.insertBook(book);
		sqlSession.insert("Book-Mapper.insertBook",book);

	}
	
	@Override
	public void updateKDC_CRI(BookVO book) throws SQLException {
		int kdc_no = book.getKdc_no()/100;
			
			switch(kdc_no) {
			case 1 : book.setKdc_cri("철학"); break;
			case 2 : book.setKdc_cri("종교"); break;
			case 3 : book.setKdc_cri("사회과학"); break;
			case 4 : book.setKdc_cri("자연과학"); break;
			case 5 : book.setKdc_cri("기술과학"); break;
			case 6 : book.setKdc_cri("예술"); break;
			case 7 : book.setKdc_cri("언어"); break;
			case 8 : book.setKdc_cri("문학"); break;
			case 9 : book.setKdc_cri("역사"); break;
			case 0 : book.setKdc_cri("총류"); break;
			}
	}	

	@Override
	public int selectBookSeqNext() throws SQLException {
		//return bookDAO.selectBookSeqNext();
		return sqlSession.selectOne("Book-Mapper.selectBookSeqNext");
	}

	@Override
	public List<BookVO> selectBookList() throws SQLException {
		List<BookVO> bookList = new ArrayList<BookVO>();
		bookList = sqlSession.selectList("Book-Mapper.selectBookList");
		return bookList;
	}

	@Override
	public List<BookVO> selectAllBookList(BookCriteria cri) throws SQLException {
		Map<String, Object> dataParam = new HashMap<String, Object>();

		int startRow = cri.getStartRowNum()+1;
		int endRow = startRow + cri.getPerPageNum(); // 질문
		
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());
		List<BookVO> bookList = new ArrayList<BookVO>();
		bookList = sqlSession.selectList("Book-Mapper.selectALLBookList",dataParam);
		
		
		return bookList;
	}	
	
	
	@Override
	public BookVO selectBookByBookNo(int book_no) throws SQLException {
		BookVO book = sqlSession.selectOne("Book-Mapper.selectBookByBookNo", book_no);
		return book;
	}
	
	
	@Override
	public List<BookVO> selectAllBookByBookIsbn(String book_isbn) throws SQLException {
		List<BookVO> book = sqlSession.selectList("Book-Mapper.selectAllBookByBookIsbn", book_isbn);
		return book;
	}
	@Override
	public List<BookVO> selectBookByBookIsbn(String book_isbn) throws SQLException {
		List<BookVO> book = sqlSession.selectList("Book-Mapper.selectBookByBookIsbn", book_isbn);
		return book;
	}
	

	@Override
	public List<BookVO> searchBookByBookTitle(BookCriteria cri) throws SQLException {
		Map<String, Object> dataParam = new HashMap<String, Object>();

		int startRow = cri.getStartRowNum()+1;
		int endRow = startRow + cri.getPerPageNum(); // 질문
		
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());
		List<BookVO> bookList = new ArrayList<BookVO>();
		bookList = sqlSession.selectList("Book-Mapper.searchBookByBookTitle",dataParam);
		
		return bookList;
	}

	@Override
	public int selectBookListCount(BookCriteria cri) throws SQLException {
		int count = sqlSession.selectOne("Book-Mapper.selectBookListCount", cri);
		return count;
	}
	
	@Override
	public int selectAllBookListCount(BookCriteria cri) throws SQLException {
		int count = sqlSession.selectOne("Book-Mapper.selectAllBookListCount", cri);
		return count;
	}

	@Override
	public int selectKdcNoCount(int num) throws SQLException {
		int count = sqlSession.selectOne("Book-Mapper.selectKdcNoCount", num);
		return count;
	}

	@Override
	public BookVO selectBookStock(String book_isbn) throws SQLException{
		BookVO bookStock = sqlSession.selectOne("selectBookStock", book_isbn);
		return bookStock;
	}

	@Override
	public BookVO selectKDCLOC(int kdc_no) throws SQLException {
		BookVO bookKDCLOC = sqlSession.selectOne("selectKDCLOC", kdc_no);
		return bookKDCLOC;
	}
	
	public List<Integer> selectRECMBook() throws SQLException{
		List<Integer> bookNoList = new ArrayList<Integer>();
		bookNoList = sqlSession.selectList("Book-Mapper.selectRECMBook");
		return bookNoList;
	}

	@Override
	public List<BookVO> selectRentableBookByISBN(String book_isbn) throws SQLException {
		List<BookVO> bookList = sqlSession.selectList("Book-Mapper.selectRentableBookByISBN", book_isbn);
		return bookList;
	}

	@Override
	public List<String> selectBestBookList() throws SQLException {
		List<String> isbnList = sqlSession.selectList("Book-Mapper.selectBestBookList");
		return isbnList;
	}

	@Override
	public List<BookVO> getBookList() throws SQLException {
		List<BookVO> bookList = sqlSession.selectList("Book-Mapper.getBookList");
		return bookList;
	}

	@Override
	public void updateAIRecordCountPlus() throws SQLException {
		sqlSession.update("Book-Mapper.updateAIRecordCountPlus");
	}

	@Override
	public void updateAIMBTIBookCountPlus() throws SQLException {
		sqlSession.update("Book-Mapper.updateAIMBTIBookCountPlus");
	}

	@Override
	public void updateAIUserCustomCountPlus() throws SQLException {
		sqlSession.update("Book-Mapper.updateAIUserCustomCountPlus");
	}

	@Override
	public void updateAIFaceAiCountPlus() throws SQLException {
		sqlSession.update("Book-Mapper.updateAIFaceAiCountPlus");
	}
	


}
