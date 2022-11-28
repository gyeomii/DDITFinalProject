package bookred.admin.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import bookred.admin.dto.NewBookVO;
import bookred.book.command.BookCriteria;
import bookred.book.dto.BookStockVO;
import bookred.book.dto.BookVO;
import bookred.book.dto.WishBookVO;

public class NewBookDAOImpl implements NewBookDAO {
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	

	@Override
	public void insertInNewBookWork(NewBookVO newbookWork) throws SQLException {
		sqlSession.insert("NewBook-Mapper.insertInNewBookWork", newbookWork);
	}

	@Override
	public void insertInNewBook(NewBookVO newbook) throws SQLException {
		sqlSession.insert("NewBook-Mapper.insertNewBook", newbook);
		
	}

	@Override
	public void insertInBookMaster(NewBookVO book) throws SQLException {
		sqlSession.insert("NewBook-Mapper.insertBook", book);
		
	}


	@Override
	public void updateWishState(NewBookVO wishState) throws SQLException {
		sqlSession.update("NewBook-Mapper.wbStateUpdate", wishState);
		
	}


	@Override
	public List<WishBookVO> selectWishBookList(BookCriteria cri) throws SQLException {
		Map<String, Object> dataParam = new HashMap<String, Object>();
		
		int startRow = cri.getStartRowNum()+1;
		int endRow = startRow + cri.getPerPageNum(); // 질문
		
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());
		List<WishBookVO> wishBookList = new ArrayList<WishBookVO>();
		wishBookList = sqlSession.selectList("WishBook-Mapper.selectWishBookList",dataParam);
		
		
		return wishBookList;
	}

//========================================bookStock 테이블관련 
	@Override
	public int selectFromStockTableISBNCheckCount(String isbn) throws SQLException {
		int count = sqlSession.selectOne("NewBook-Mapper.checkISBNCount", isbn);
		System.out.println("다오에서의 isbn: " + isbn);
//		System.out.println("다오에 들어오는 카운트????"+count);
		return count;
	}


	@Override
	public void insertToBookStockNewBook(BookStockVO newbook) throws SQLException {
		sqlSession.insert("NewBook-Mapper.insertToBookStockNewBook", newbook);
	}


//	이건 업데이트임
	@Override
	public void insertToBookStockOldBook(BookStockVO newbook) throws SQLException {
		sqlSession.update("NewBook-Mapper.insertToBookStockOldBook", newbook);
	}

}
