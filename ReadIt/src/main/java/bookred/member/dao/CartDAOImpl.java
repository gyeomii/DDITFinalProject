package bookred.member.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import bookred.book.command.BookCriteria;
import bookred.book.dto.BookVO;
import bookred.member.dto.CartListVO;
import bookred.member.dto.CartVO;

public class CartDAOImpl implements CartDAO {
	
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	
	@Override
	public List<CartListVO> selectCartList(BookCriteria cri, String mem_id) throws SQLException {
		
		Map<String, Object> dataParam = new HashMap<String, Object>();
		
		int startRow = cri.getStartRowNum()+1;
		int endRow = startRow + cri.getPerPageNum(); 
		
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());
		
		dataParam.put("mem_id", mem_id);
		
		List<CartListVO> cartList = sqlSession.selectList("Cart-Mapper.selectCartList", dataParam);
		
		return cartList;
		
	}
	

	@Override
	public List<BookVO> selectBookByBookIsbn(BookCriteria cri, String book_isbn) throws SQLException {
		List<BookVO> cartIsbnList = new ArrayList<BookVO>();
		cartIsbnList = sqlSession.selectList("Book-Mapper.selectBookByBookIsbn");
		return cartIsbnList;
	}	
	
	
	@Override
	public int selectCartListCount(BookCriteria cri, String mem_id) throws SQLException {
		
		Map<String, Object> dataParam = new HashMap<String, Object>();
		
		dataParam.put("crt",cri);
		dataParam.put("mem_id",mem_id);
		
		
		int count = sqlSession.selectOne("Cart-Mapper.selectCartListCount", dataParam);
		return count;
	}


	@Override
	public void deleteCart(CartVO cart) throws SQLException {
		sqlSession.update("Cart-Mapper.deleteCart", cart);
	}
	
	@Override
	public void insertCart(CartVO cart) throws SQLException {
		sqlSession.update("Cart-Mapper.insertCart", cart);
	}


	@Override
	public List<CartVO> checkCart(CartVO cart) throws SQLException {
		List<CartVO> cartList = new ArrayList<CartVO>();
		cartList = sqlSession.selectList("Cart-Mapper.checkCart", cart);
		return cartList;
	}


	@Override
	public List<BookVO> seleteOneBookByBookIsbn(String book_isbn) throws SQLException {
		List<BookVO> bookList = new ArrayList<BookVO>();
		bookList = sqlSession.selectList("Cart-Mapper.seleteOneBookByBookIsbn", book_isbn);
		return bookList;
	}
	
	public CartVO selectCartListByIsbnAndId(String book_isbn, String mem_id)throws SQLException{
		Map<String, String> dataParam = new HashMap<String, String>();
		dataParam.put("book_isbn", book_isbn);
		dataParam.put("mem_id", mem_id);
		CartVO cart = sqlSession.selectOne("Cart-Mapper.selectCartListByIsbnAndId", dataParam);
		return cart;
	}


	@Override
	public void deleteCartByCartNo(int cart_no) throws SQLException {
		sqlSession.delete("Cart-Mapper.deleteCartByCartNo", cart_no);
	}


}
