package bookred.member.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import bookred.admin.command.Criteria;
import bookred.book.dto.WishBookVO;
import bookred.member.dto.CartVO;




public class MyWishBookDAOImpl implements MyWishBookDAO	 {

	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<WishBookVO> selectMyWishBookList(String mem_id) throws SQLException {
		return sqlSession.selectList("MyWishBook-Mapper.selectMyWishList", mem_id);
	}
	
//	@Override
//	public List<WishBookVO> selectMyWishBookListCheckCart(String mem_id) throws SQLException {
//		return sqlSession.selectList("MyWishBook-Mapper.selectCart", mem_id);
//	}



}
