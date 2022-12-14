package bookred.book.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bookred.book.command.BookCriteria;
import bookred.book.command.BookPageMaker;
import bookred.book.dao.BookDAO;
import bookred.book.dto.BookVO;

public class BookServiceImpl implements BookService {

	private BookDAO bookDAO;

	public void setBookDAO(BookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}

	@Override
	public void regist(BookVO book) throws SQLException {

		int book_no = bookDAO.selectBookSeqNext();
		book.setBook_no(book_no);
		bookDAO.insertBook(book);

	}

	@Override
	public List<BookVO> getBookList() throws SQLException {
		List<BookVO> bookList = bookDAO.selectBookList();
		return bookList;
	}
	
	@Override
	public Map<String, Object> getAllBookList(BookCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<BookVO> bookList = bookDAO.selectAllBookList(cri);
			for(BookVO bookVO : bookList) {
				bookDAO.updateKDC_CRI(bookVO);
				int kdc_no = bookVO.getKdc_no();
				BookVO kdc = bookDAO.selectKDCLOC(kdc_no);
				bookVO.setRoom(kdc.getRoom());
				bookVO.setSector(kdc.getSector());
				bookVO.setCall_number(kdc.getCall_number());
			}
			
		// 전체 board 개수
		int totalCount = bookDAO.selectAllBookListCount(cri);
		// PageMaker 생성.
		BookPageMaker pageMaker = new BookPageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		dataMap.put("bookList", bookList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}	

	@Override
	public BookVO getBookByBookNo(int book_no) throws SQLException {
		BookVO book = bookDAO.selectBookByBookNo(book_no);
		int kdc_no = book.getKdc_no();
		
		BookVO bookKDC = bookDAO.selectKDCLOC(kdc_no);
		book.setCall_number(bookKDC.getCall_number());
		book.setRoom(bookKDC.getRoom());
		book.setSector(bookKDC.getSector());
		
		return book;
	}

	@Override
	public List<BookVO> selectBookByBookIsbn(String book_isbn) throws SQLException {
		List<BookVO> bookList = bookDAO.selectBookByBookIsbn(book_isbn);
		return bookList;
	}

	@Override
	public List<BookVO> getBookListForAI(String[] book_no_list) throws SQLException {
		List<BookVO> bookList = new ArrayList<BookVO>();
		for (String book_no : book_no_list) {
			BookVO book = bookDAO.selectBookByBookNo(Integer.parseInt(book_no));
			bookList.add(book);
		}
		return bookList;
	}

	@Override
	public Map<String, Object> getBookByBookTitle(BookCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<BookVO> bookList = bookDAO.searchBookByBookTitle(cri);
		// 전체 board 개수
		int totalCount = bookDAO.selectBookListCount(cri);
		// PageMaker 생성.
		BookPageMaker pageMaker = new BookPageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		dataMap.put("bookList", bookList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public int selectKdcNoCount(int num) throws SQLException {
		int count = bookDAO.selectKdcNoCount(num);
		System.out.println("총개수"+count);
		return count;
	}

	@Override
	public BookVO selectBookStock(String book_isbn) throws SQLException {
		BookVO bookStock = bookDAO.selectBookStock(book_isbn);
		
		return bookStock;
	}

	@Override
	public List<BookVO> getRECMBookList() throws SQLException {
		List<Integer> bookNoList = bookDAO.selectRECMBook();
		List<BookVO> bookList = new ArrayList<BookVO>();
		
		for (Integer bookNo : bookNoList) {
			BookVO book = bookDAO.selectBookByBookNo(bookNo);
			bookList.add(book);
		}
		
		return bookList;
	}

	@Override
	public List<BookVO> getRentableBookByISBN(String book_isbn) throws SQLException {
		List<BookVO> bookList = bookDAO.selectRentableBookByISBN(book_isbn);
		return bookList;
	}

	@Override
	public List<BookVO> getBestBookList() throws SQLException {
		List<String> isbnList = bookDAO.selectBestBookList();
		List<BookVO> bookList = new ArrayList<BookVO>();
		for (String isbn : isbnList) {
			List<BookVO> book = bookDAO.selectBookByBookIsbn(isbn);
			System.out.println(book.get(0).getBook_isbn());
			bookList.add(book.get(0));
		}
		return bookList;
	}

	@Override
	public void yaya() throws SQLException {
		List<BookVO> bookList = bookDAO.getBookList();
		int count = 0;
		for (BookVO bookVO : bookList) {
			int bn = bookDAO.selectBookSeqNext();
			bookVO.setBook_no(bn);
			bookVO.setState_code(1);
			bookDAO.insertBook(bookVO);
			count++;
			System.out.println(count);
		}
	}

	@Override
	public void updateAIRecordCountPlus() throws SQLException {
		bookDAO.updateAIRecordCountPlus();
	}

	@Override
	public void updateAIMBTIBookCountPlus() throws SQLException {
		bookDAO.updateAIMBTIBookCountPlus();
	}

	@Override
	public void updateAIUserCustomCountPlus() throws SQLException {
		bookDAO.updateAIUserCustomCountPlus();
	}

	@Override
	public void updateAIFaceAiCountPlus() throws SQLException {
		bookDAO.updateAIFaceAiCountPlus();
	}
	
	

	
	
}
