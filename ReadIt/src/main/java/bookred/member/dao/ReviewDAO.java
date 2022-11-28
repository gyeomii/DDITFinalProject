package bookred.member.dao;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import bookred.admin.command.Criteria;
import bookred.book.command.BookCriteria;
import bookred.book.dto.BookVO;
import bookred.main.dto.EventVO;
import bookred.member.command.RentCriteria;
import bookred.member.dto.RentBookVO;
import bookred.member.dto.ReviewVO;
import bookred.member.dto.RentBackVO;

public interface ReviewDAO {
	
	int selectReviewSeqNext() throws SQLException;
	
	int selectRentListCount(String mem_id) throws SQLException;
	
	int selectDelayListCount(String mem_id) throws SQLException;
	
	List<ReviewVO> selectRecentReviewList(String mem_id) throws SQLException;
	
	List<ReviewVO> selecReviewList(RentCriteria cri,ReviewVO review) throws SQLException;

	List<ReviewVO> selectReviewListbyIsbn(RentCriteria cri,ReviewVO review) throws SQLException;

	ReviewVO selectReviewByRevNo(int rev_no) throws SQLException;
	
	List<ReviewVO> selectAllReviewByBookTitle(String book_title) throws SQLException;
	
	int selectReviewListCount(RentCriteria cri, String mem_id) throws SQLException;
	
	int selecReviewListByIsbnCount(RentCriteria cri, String book_isbn) throws SQLException;

	List<ReviewVO> selectNotReviewList(RentCriteria cri,ReviewVO review) throws SQLException;
	
	RentBookVO selectRentnoToBookinfo(int rent_no) throws SQLException;
	
	void insertReview(ReviewVO review) throws SQLException;
		
	void updateReview(ReviewVO review) throws SQLException;
		
	void deleteReview(int rev_no) throws SQLException;
	
	int selectAvgRev(String book_isbn) throws SQLException;
}
