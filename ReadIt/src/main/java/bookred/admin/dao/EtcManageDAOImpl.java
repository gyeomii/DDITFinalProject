package bookred.admin.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import bookred.admin.dto.DonationBookVO;
import bookred.admin.dto.EtcManageVO;
import bookred.book.command.BookCriteria;

public class EtcManageDAOImpl implements EtcManageDAO {
	
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<EtcManageVO> selectAllNoRentList(BookCriteria cri) throws SQLException {
		Map<String, Object> dataParam = new HashMap<String, Object>();
		
		int startRow = cri.getStartRowNum()+1;
		int endRow = startRow + cri.getPerPageNum();
		
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());
		
		List<EtcManageVO> noRentBookList = new ArrayList<EtcManageVO>();
		noRentBookList = sqlSession.selectList("EtcManager-Mapper.selectAllNoRentList", dataParam);
		
		
		return noRentBookList;
	}

	@Override
	public List<EtcManageVO> selectLossBookList(BookCriteria cri) throws SQLException {
		
		Map<String, Object> dataParam = new HashMap<String, Object>();
		
		int startRow = cri.getStartRowNum()+1;
		int endRow = startRow + cri.getPerPageNum();
		
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());
		
		List<EtcManageVO> lossBookList = new ArrayList<EtcManageVO>();
		lossBookList = sqlSession.selectList("EtcManager-Mapper.selectLossBookList", dataParam);
		
		return lossBookList;
	}

	@Override
	public String selectBookByBookIsbn() throws SQLException {
		
		return sqlSession.selectOne("Book-Mapper.selectBookByBookIsbn", sqlSession);
	}

	@Override
	public void regist(EtcManageVO book_isbn) throws SQLException {
		sqlSession.update("EtcManager-Mapper.registNoRentBook", book_isbn );
		
	}

	@Override
	public List<DonationBookVO> selectAllDonationBookList() throws SQLException {
		
		return sqlSession.selectList("EtcManager-Mapper.selectDonationBookList");
	}

}
