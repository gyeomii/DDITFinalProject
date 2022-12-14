package bookred.book.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import bookred.admin.command.Criteria;
import bookred.book.dto.WishBookVO;




public class WishBookDAOImpl implements WishBookDAO	 {

	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void insertWishBook(WishBookVO book) throws SQLException {
		sqlSession.insert("WishBook-Mapper.insertWishBook",book);
	}

	@Override
	public int selectWishBookSeqNext() throws SQLException {
		return sqlSession.selectOne("WishBook-Mapper.selectWishBookSeqNext");
	}

	@Override
	public List<WishBookVO> selectWishBookList() throws SQLException {
		List<WishBookVO> bookList = new ArrayList<WishBookVO>();
		bookList = sqlSession.selectList("WishBook-Mapper.selectWishBookList");
		return bookList;
	}

	@Override
	public int selectWishBookListCount(Criteria cri) throws SQLException {
		return sqlSession.selectOne("WishBook-Mapper.selectWishBookListCount");
	}

}
