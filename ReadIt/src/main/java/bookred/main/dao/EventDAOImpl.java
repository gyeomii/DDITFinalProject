package bookred.main.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import bookred.admin.command.Criteria;
import bookred.main.dto.EventVO;

public class EventDAOImpl implements EventDAO {

	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<EventVO> selectEventList(Criteria cri) throws SQLException {

		int startRow = cri.getStartRowNum() + 1;
		int endRow = startRow + cri.getPerPageNum();

		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());

		List<EventVO> eventList = new ArrayList<EventVO>();
		eventList = sqlSession.selectList("Event-Mapper.selectEventList", dataParam);

		return eventList;
	}

	@Override
	public int selectEventListCount(Criteria cri) throws SQLException {

		int count = sqlSession.selectOne("Event-Mapper.selectEventListCount", cri);

		return count;
	}

	@Override
	public EventVO selectEventByEvNo(int ev_no) throws SQLException {
		EventVO event = sqlSession.selectOne("Event-Mapper.selectEventByEvNo", ev_no);
		return event;
	}

	@Override
	public int selectEventSeqNext() throws SQLException {
		int seq_num = sqlSession.selectOne("Event-Mapper.selectEventSeqNext");
		return seq_num;
	}

	@Override
	public void insertEvent(EventVO event) throws SQLException {
		sqlSession.insert("Event-Mapper.insertEvent", event);

	}

	@Override
	public void updateEvent(EventVO event) throws SQLException {
		sqlSession.update("Event-Mapper.updateEvent", event);

	}

	@Override
	public void deleteEvent(int ev_no) throws SQLException {
		sqlSession.update("Event-Mapper.deleteEvent", ev_no);

	}


}
