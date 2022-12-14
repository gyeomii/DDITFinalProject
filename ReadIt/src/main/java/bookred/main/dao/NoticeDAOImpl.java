package bookred.main.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import bookred.admin.command.Criteria;
import bookred.main.dto.NoticeVO;

public class NoticeDAOImpl implements NoticeDAO {

	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<NoticeVO> selectNoticeList(Criteria cri) throws SQLException {
		
		int startRow = cri.getStartRowNum()+1;
		int endRow = startRow + cri.getPerPageNum(); // 질문
		
		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());
		
		List<NoticeVO> noticeList = new ArrayList<NoticeVO>();
		noticeList = sqlSession.selectList("Notice-Mapper.selectNoticeList", dataParam);
		return noticeList;
	}
	
	@Override
	public int selectNoticeListCount(Criteria cri) throws SQLException {
		int count = sqlSession.selectOne("Notice-Mapper.selectNoticeListCount", cri);
		return count;
	}

	@Override
	public NoticeVO selectNoticeByNotice_no(int notice_no) throws SQLException {
		NoticeVO notice = sqlSession.selectOne("Notice-Mapper.selectNoticeByNoticeNo",notice_no);
		return notice;
	}

	@Override
	public void increaseViewCount(int notice_no) throws SQLException {
		sqlSession.update("Notice-Mapper.increaseViewCount", notice_no);
	}

	@Override
	public int selectNoticeSeqNextValue() throws SQLException {
		int seq_num = sqlSession.selectOne("Notice-Mapper.selectNoticeSeqNextValue");
		return seq_num;
	}

	@Override
	public void insertNotice(NoticeVO notice) throws SQLException {
		sqlSession.insert("Notice-Mapper.insertNotice", notice);
		
	}

	@Override
	public void updateNotice(NoticeVO notice) throws SQLException {
		sqlSession.update("Notice-Mapper.updateNotice", notice);
		
	}

	@Override
	public void deleteNotice(int notice_no) throws SQLException {
		sqlSession.update("Notice-Mapper.deleteNotice", notice_no);
		
	}

	@Override
	public List<NoticeVO> selectRecentNotice() throws SQLException {
		List<NoticeVO> recentNotice = sqlSession.selectList("Notice-Mapper.selectRecentNotice");
		return recentNotice;
	}

	@Override
	public List<NoticeVO> selectRecentNoticeSeven() throws SQLException {
		List<NoticeVO> recentNotice = sqlSession.selectList("Notice-Mapper.selectRecentNoticeSeven");
		return recentNotice;
	}
	
}
