package bookred.main.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.command.Criteria;
import bookred.main.dto.EventVO;

public interface EventDAO {

	List<EventVO> selectEventList(Criteria cri) throws SQLException;
	
	int selectEventListCount(Criteria cri) throws SQLException;
	
	EventVO selectEventByEvNo(int ev_no) throws SQLException;
	
	
	int selectEventSeqNext() throws SQLException;
	
	void insertEvent(EventVO event) throws SQLException;
	
	void updateEvent(EventVO event) throws SQLException;
	
	void deleteEvent(int ev_no) throws SQLException;
}
