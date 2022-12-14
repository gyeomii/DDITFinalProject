package bookred.member.service;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;
import java.util.Map;

import bookred.admin.command.Criteria;
import bookred.book.command.BookCriteria;
import bookred.book.dto.BookVO;
import bookred.main.dto.EventVO;
import bookred.member.command.RentCriteria;
import bookred.member.dto.RentBackVO;
import bookred.member.dto.RentBookVO;
import bookred.member.dto.ReviewVO;

public interface ReviewService {

	ReviewVO getReviewByRentNo(int rent_no) throws SQLException;

	int getRentListCount(String mem_id) throws SQLException;
	
	int getDelayListCOunt(String mem_id) throws SQLException;
	
	Map<String, Object> getReviewList(RentCriteria cri, ReviewVO review) throws SQLException;
	
	Map<String, Object> getReviewListbyIsbn(RentCriteria cri, ReviewVO review) throws SQLException;

	Map<String, Object> getRentnoTobookinfo(ReviewVO review) throws SQLException;

	void regist(ReviewVO review) throws SQLException;

	void modify(ReviewVO review) throws SQLException;

	void remove(int rev_no) throws SQLException;
	
	int getAvgRev(String book_isbn) throws SQLException;

	List<ReviewVO> getRecentReviewList(String mem_id) throws SQLException;

	
	
}
