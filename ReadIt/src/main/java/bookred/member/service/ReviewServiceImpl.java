package bookred.member.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bookred.book.dao.BookDAO;
import bookred.book.dto.BookVO;
import bookred.member.command.RentCriteria;
import bookred.member.command.RentPageMaker;
import bookred.member.dao.ReviewDAO;
import bookred.member.dto.RentBookVO;
import bookred.member.dto.ReviewVO;

public class ReviewServiceImpl implements ReviewService {

	private ReviewDAO reviewDAO;
	private BookDAO bookDAO;
	public void setReviewDAO(ReviewDAO reviewDAO) {
		this.reviewDAO = reviewDAO;
	}
	public void setBookDAO(BookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}
	
	@Override
	public ReviewVO getReviewByRentNo(int rev_no) throws SQLException {
		ReviewVO review = reviewDAO.selectReviewByRevNo(rev_no);
		return review;
	}
	
	@Override
	public List<ReviewVO> getRecentReviewList(String mem_id)throws SQLException{
		List<ReviewVO> reviewList = reviewDAO.selectRecentReviewList(mem_id);
		for (ReviewVO reviewVO : reviewList) {
			String book_isbn = reviewVO.getBook_isbn();
			List<BookVO> bookList = bookDAO.selectBookByBookIsbn(book_isbn);			
			reviewVO.setBook_imgurl(bookList.get(0).getBook_imgURL());
			reviewVO.setBook_title(bookList.get(0).getBook_title());
		}
		return reviewList;
	}
	
	@Override
	public Map<String, Object> getReviewList(RentCriteria cri, ReviewVO review) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();	
		
		String mem_id = review.getMem_id();
		
		int rent_no = review.getRent_no();
		
		
		List<ReviewVO> reviewList = reviewDAO.selecReviewList(cri, review);
		
		List<ReviewVO> notReviewList = reviewDAO.selectNotReviewList(cri, review);
		
		RentBookVO rentBook = reviewDAO.selectRentnoToBookinfo(rent_no);
		
		int totalCount = reviewDAO.selectReviewListCount(cri,mem_id);
		RentPageMaker pageMaker = new RentPageMaker();

		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		
		
		dataMap.put("reviewList", reviewList);
		dataMap.put("rentBook", rentBook);
		dataMap.put("notReviewList", notReviewList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public  Map<String, Object> getRentnoTobookinfo(ReviewVO review) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		System.out.println("service rent_no : " +  review.getRent_no());
		int rent_no = review.getRent_no();
		RentBookVO rentBook = reviewDAO.selectRentnoToBookinfo(rent_no);
		System.out.println("service : " +  rentBook.getBook_title());
		System.out.println("service : " +  rentBook.getBook_publisher());
		int rev_no = review.getRev_no();
		
		if ( rev_no != 0) {
			ReviewVO reviewBook = reviewDAO.selectReviewByRevNo(rev_no);
			dataMap.put("reviewBook", reviewBook);
			System.out.println("reviewBookservice : " +  rev_no);
		}
		dataMap.put("rentBook", rentBook);
		
		
		return dataMap;
	}

	@Override
	public void regist(ReviewVO review) throws SQLException {
		int rev_no = reviewDAO.selectReviewSeqNext();
		System.out.println(rev_no);
		review.setRev_no(rev_no);
		reviewDAO.insertReview(review);
	}


	@Override
	public void modify(ReviewVO review) throws SQLException {
		System.out.println(review.getRev_content());
		System.out.println(review.getRev_grade());
		reviewDAO.updateReview(review);
	}

	@Override
	public void remove(int rev_no) throws SQLException {
		reviewDAO.deleteReview(rev_no);
	}

	@Override
	public int getAvgRev(String book_isbn) throws SQLException {
		int avg_rev = reviewDAO.selectAvgRev(book_isbn);
		System.out.println(avg_rev);
		return avg_rev;
	}

	@Override
	public Map<String, Object> getReviewListbyIsbn(RentCriteria cri, ReviewVO review) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		String book_isbn = review.getBook_isbn();
		
		System.out.println(book_isbn);
		List<ReviewVO> reviewList = reviewDAO.selectReviewListbyIsbn(cri, review);
		int totalCount = reviewDAO.selecReviewListByIsbnCount(cri,book_isbn);
//		System.out.println("리뷰 개수"+reviewList.get(0).getRev_content());
		RentPageMaker pageMaker = new RentPageMaker();

		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		
	
		dataMap.put("reviewList", reviewList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}
	
	@Override
	public int getRentListCount(String mem_id) throws SQLException {
		int count = reviewDAO.selectRentListCount(mem_id);
		return count;
	}
	
	@Override
	public int getDelayListCOunt(String mem_id) throws SQLException {
		int count = reviewDAO.selectDelayListCount(mem_id);
		return count;
	}
	

}
