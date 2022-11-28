package bookred.book.service;

import java.sql.SQLException;
import java.util.List;

import bookred.book.dao.WishBookDAO;
import bookred.book.dto.WishBookVO;

public class WishBookServiceImpl implements WishBookService {
	
	private WishBookDAO wishBookDAO;
	
	public void setWishBookDAO(WishBookDAO wishBookDAO) {
		this.wishBookDAO = wishBookDAO;
	}
	
	@Override
	public void regist(WishBookVO book) throws SQLException {
		int wb_no = wishBookDAO.selectWishBookSeqNext();
		System.out.println(wb_no);
		book.setWb_no(wb_no);
		System.out.println(book.getWb_no());
		wishBookDAO.insertWishBook(book);
	}

	@Override
	public List<WishBookVO> getWishBookList() throws SQLException {
		List<WishBookVO> bookList = wishBookDAO.selectWishBookList();
		return bookList;
	}

}
