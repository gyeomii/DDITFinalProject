package bookred.member.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bookred.book.command.BookCriteria;
import bookred.book.command.BookPageMaker;
import bookred.book.dao.BookDAO;
import bookred.book.dto.BookVO;
import bookred.member.dao.CartDAO;
import bookred.member.dao.ReserveDAO;
import bookred.member.dao.ReviewDAO;
import bookred.member.dto.BkReserveVO;
import bookred.member.dto.CartListVO;
import bookred.member.dto.CartVO;
import bookred.member.dto.RentBackVO;

public class CartServiceImpl implements CartService {

	private CartDAO cartDAO;
	private BookDAO bookDAO;
	private ReserveDAO reserveDAO;
	private ReviewDAO reviewDAO;

	public void setCartDAO(CartDAO cartDAO) {
		this.cartDAO = cartDAO;
	}
	public void setBookDAO(BookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}
	public void setReserveDAO(ReserveDAO reserveDAO) {
		this.reserveDAO = reserveDAO;
	}
	public void setReviewDAO(ReviewDAO reviewDAO) {
		this.reviewDAO = reviewDAO;
	}
	
	
	@Override
	public  Map<String, Object> getCartList(BookCriteria cri, String mem_id) throws SQLException {
		
		Map<String,Object> dataMap = new HashMap<String,Object>();
		List<CartListVO> cartList = cartDAO.selectCartList(cri, mem_id);
		
		//cart에서 북정보 읽어오기. 중복제거. isbn으로 검색해서 한권만.
		List<BookVO> bookList = new ArrayList<BookVO>();
		
		for (CartListVO cartListVO : cartList) {
			String isbn = cartListVO.getBook_isbn();
			
			//카트에 담겨있는 isbn으로 도서 1권 가져오기.
			BookVO book = cartDAO.seleteOneBookByBookIsbn(isbn).get(0);
			
			//isbn별 도서권수와 대출가능도서 정보 set해주기.
			int count = bookDAO.selectBookStock(isbn).getBook_count();
			System.out.println("수량안되냐");
			int rentable = bookDAO.selectBookStock(isbn).getBook_rentable();
			book.setBook_count(count);
			book.setBook_rentable(rentable);
			System.out.println("도서수량"+book.getBook_count());

			//도서위치 set해주기
			int kdc_no = book.getKdc_no();
			BookVO kdc =  bookDAO.selectKDCLOC(kdc_no);
			book.setRoom(kdc.getRoom());
			book.setSector(kdc.getSector());
			book.setCall_number(kdc.getCall_number());
			
			System.out.println(book.getRoom());
			
			int avg_rev = reviewDAO.selectAvgRev(isbn);
			book.setAvg_rev(avg_rev);
			//sameBookList : 같은 isbn인 모든 책. 지금 안씀.
//			List<BookVO> allbook = bookDAO.selectAllBookByBookIsbn(isbn);
//			book.setSameBookList(allbook);
			bookList.add(book);
		}
		
		BookPageMaker pageMaker = new BookPageMaker();
		pageMaker.setCri(cri);

		int totalCount = cartDAO.selectCartListCount(cri,mem_id);
		pageMaker.setTotalCount(totalCount);
		List<RentBackVO> rentList = reserveDAO.selectRentBookList(mem_id);
		List<BkReserveVO> reserveList = reserveDAO.selectReserveList(mem_id);
		for (BkReserveVO bkReserveVO : reserveList) {
			System.out.println(bkReserveVO.getIsbn());
		}

		dataMap.put("rentList", rentList);
		dataMap.put("reserveList", reserveList);
		dataMap.put("cartList", cartList);
		dataMap.put("bookList", bookList);
		dataMap.put("pageMaker", pageMaker);
		dataMap.put("mem_id", mem_id); 
		
		return dataMap;
		
	}

	@Override
	public void deleteCart(CartVO cart) throws SQLException {
		
		cartDAO.deleteCart(cart);
	}

	@Override
	public void insertCart(CartVO cart) throws SQLException {
		
		cartDAO.insertCart(cart);
	}

	@Override
	public List<CartVO> checkCart(CartVO cart) throws SQLException {
		List<CartVO> cartList = new ArrayList<CartVO>();
		cartList = cartDAO.checkCart(cart);
		return cartList;
	}	
	
	
}
