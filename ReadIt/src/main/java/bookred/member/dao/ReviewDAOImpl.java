package bookred.member.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import bookred.member.command.RentCriteria;
import bookred.member.dto.RentBookVO;
import bookred.member.dto.ReviewVO;

public class ReviewDAOImpl implements ReviewDAO {

	private SqlSession session;

	public void setSqlSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<ReviewVO> selecReviewList(RentCriteria cri, ReviewVO review) throws SQLException {
		int startRow = cri.getStartRowNum() + 1;
		int endRow = startRow + cri.getPerPageNum();

		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());
		dataParam.put("mem_id", review.getMem_id());
		dataParam.put("is_return", review.getIs_return());
		
		System.out.println(cri.getSearchType());
		System.out.println(cri.getKeyword());

		List<ReviewVO> reviewList = new ArrayList<ReviewVO>();
		reviewList = session.selectList("Review-Mapper.selecReviewList", dataParam);

		return reviewList;
	}

	@Override
	public int selectReviewListCount(RentCriteria cri, String mem_id) throws SQLException {
		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("cri", cri);
		dataParam.put("mem_id", mem_id);
		System.out.println("selectReviewListCount : " + mem_id);

		int count = session.selectOne("Review-Mapper.selectReviewListCount", dataParam);
		return count;
	}

	@Override
	public ReviewVO selectReviewByRevNo(int rev_no) throws SQLException {
		ReviewVO rent = session.selectOne("Review-Mapper.selectReviewByRevNo", rev_no);
		return rent;
	}

	@Override
	public int selectReviewSeqNext() throws SQLException {
		return session.selectOne("Review-Mapper.selectReviewSeqNext");
	}

	@Override
	public List<ReviewVO> selectAllReviewByBookTitle(String book_title) throws SQLException {
		List<ReviewVO> rent = session.selectList("Review-Mapper.selectAllRentByBookTitle", book_title);
		return rent;
	}

	@Override
	public List<ReviewVO> selectNotReviewList(RentCriteria cri, ReviewVO review) throws SQLException {
		int startRow = cri.getStartRowNum() + 1;
		int endRow = startRow + cri.getPerPageNum();

		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());
		dataParam.put("mem_id", review.getMem_id());

		List<ReviewVO> notReviewList = new ArrayList<ReviewVO>();
		notReviewList = session.selectList("Review-Mapper.selectNotReviewList", dataParam);

		return notReviewList;
	}


	@Override
	public RentBookVO selectRentnoToBookinfo(int rent_no) throws SQLException {
		System.out.println("dao s" + rent_no);
		RentBookVO rent = session.selectOne("Review-Mapper.selectRentnoToBookinfo", rent_no);
		System.out.println("dao e" + rent_no);
		return rent;
	}

	@Override
	public void insertReview(ReviewVO review) throws SQLException {
		System.out.println("?????? ??????");
		System.out.println(review.getRent_no());
		System.out.println(review.getBook_isbn());
		session.insert("Review-Mapper.insertReview", review);
		
	}

	@Override
	public void updateReview(ReviewVO review) throws SQLException {
		System.out.println("???????????? ??????");
	
		session.update("Review-Mapper.updateReview", review);
		System.out.println(review.getRev_content());
		System.out.println(review.getRev_no());
	}
	

	@Override
	public void deleteReview(int rev_no) throws SQLException {
		session.update("Review-Mapper.deleteReview", rev_no);
		
	}

	@Override
	public int selectAvgRev(String book_isbn) throws SQLException {
		System.out.println(book_isbn);
		int avg_rev = 0;
		
		try {
			avg_rev = session.selectOne("Review-Mapper.selectAvgRev", book_isbn);
		} catch (NullPointerException e) {
			avg_rev = 0;
		}
		
		
		System.out.println(avg_rev);
		return avg_rev;
	}

	@Override
	public List<ReviewVO> selectReviewListbyIsbn(RentCriteria cri, ReviewVO review) throws SQLException {
		int startRow = cri.getStartRowNum() + 1;
		int endRow = startRow + cri.getPerPageNum();

		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());
		
		dataParam.put("book_isbn", review.getBook_isbn());

		List<ReviewVO> reviewList = new ArrayList<ReviewVO>();
		reviewList = session.selectList("Review-Mapper.selecReviewListByIsbn", dataParam);

		return reviewList;
		
	}

	@Override
	public int selecReviewListByIsbnCount(RentCriteria cri, String book_isbn) throws SQLException {
		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("cri", cri);
		dataParam.put("book_isbn", book_isbn);

		int count = session.selectOne("Review-Mapper.selecReviewListByIsbnCount", dataParam);
		return count;
		
		
	}

	@Override
	public List<ReviewVO> selectRecentReviewList(String mem_id) throws SQLException {
		List<ReviewVO> reviewList = session.selectList("Review-Mapper.selectRecentReviewList", mem_id);
		return reviewList;
	}

	@Override
	public int selectRentListCount(String mem_id) throws SQLException {
		int count = session.selectOne("Review-Mapper.selectRentListCount", mem_id);
		return count;
	}

	@Override
	public int selectDelayListCount(String mem_id) throws SQLException {
		int count = session.selectOne("Review-Mapper.selectDelayListCount", mem_id);
		return count;
	}


}
