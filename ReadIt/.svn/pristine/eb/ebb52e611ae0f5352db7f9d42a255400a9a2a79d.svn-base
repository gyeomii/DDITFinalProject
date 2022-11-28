package bookred.admin.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bookred.admin.dao.NewBookDAO;
import bookred.admin.dto.NewBookVO;
import bookred.book.command.BookCriteria;
import bookred.book.command.BookPageMaker;
import bookred.book.dao.WishBookDAO;
import bookred.book.dto.BookStockVO;
import bookred.book.dto.WishBookVO;

public class NewBookServiceImpl implements NewBookService {
	
	private NewBookDAO newBookDAO;
	
	private WishBookDAO wishBookDAO;
	
	public void setNewBookDAO(NewBookDAO newBookDAO) {
		this.newBookDAO = newBookDAO;
	}
	
	public void setWishBookDAO(WishBookDAO wishBookDAO) {
		this.wishBookDAO = wishBookDAO;
	}

	@Override
	public void registNewBookAllTable(NewBookVO newbookWork) throws SQLException {
		newBookDAO.insertInNewBookWork(newbookWork);
		newBookDAO.insertInNewBook(newbookWork);
		newBookDAO.insertInBookMaster(newbookWork);
	}

	@Override
	public void updateWishState(NewBookVO wishState) throws SQLException {
		newBookDAO.updateWishState(wishState);
	}

	@Override
	public Map<String, Object> getAllWishBookList(BookCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<WishBookVO> wishbookList = wishBookDAO.selectWishBookList();
		System.out.println(wishbookList.get(0));
		
		BookPageMaker pageMaker = new BookPageMaker();
		pageMaker.setCri(cri);
		
		dataMap.put("wishbookList", wishbookList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public int selectFromStockTableISBNCheckCount(String isbn) throws SQLException {
		int count = newBookDAO.selectFromStockTableISBNCheckCount(isbn);
		System.out.println("bookStock테이블에 있음?" + count);
		return count;
	}

	@Override
	public void registToBookStockNewBook(BookStockVO newbook) throws SQLException {
		
		newBookDAO.insertToBookStockNewBook(newbook);
	}

	@Override
	public void updateToBookStockOldBook(BookStockVO newbook) throws SQLException {
		newBookDAO.insertToBookStockOldBook(newbook);
	}
	
	
	
	

//	@Override
//	public void registNewBook(NewBookVO newbook) throws SQLException {
//
//	}
//
//	@Override
//	public void registBook(NewBookVO book) throws SQLException {
//
//	}

}
