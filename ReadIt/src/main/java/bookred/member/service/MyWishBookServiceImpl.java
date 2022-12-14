package bookred.member.service;

import java.sql.SQLException;
import java.util.List;

import bookred.book.dao.WishBookDAO;
import bookred.book.dto.WishBookVO;
import bookred.member.dao.MyWishBookDAO;
import bookred.member.dto.CartVO;

public class MyWishBookServiceImpl implements MyWishBookService {
	
	private MyWishBookDAO myWishBookDAO;
	
	public void setMyWishBookDAO(MyWishBookDAO myWishBookDAO) {
		this.myWishBookDAO = myWishBookDAO;
	}
	
	
	
//	@Override
//	public void regist(WishBookVO book) throws SQLException {
//		int wb_no = wishBookDAO.selectWishBookSeqNext();
//		System.out.println(wb_no);
//		book.setWb_no(wb_no);
//		System.out.println(book.getWb_no());
//		wishBookDAO.insertWishBook(book);
//	}


	@Override
	public List<WishBookVO> getMyWishBookList(String mem_id) throws SQLException {
		List<WishBookVO> wishbookList = myWishBookDAO.selectMyWishBookList(mem_id);
		
		return wishbookList;
	}



//	@Override
//	public List<WishBookVO> getMyWishBookListCheckCart(String mem_id) throws SQLException {
//		
//		return myWishBookDAO.selectMyWishBookListCheckCart(mem_id);
//	}

}
