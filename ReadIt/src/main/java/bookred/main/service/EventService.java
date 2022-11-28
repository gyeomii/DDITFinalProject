package bookred.main.service;

import java.sql.SQLException;
import java.util.Map;

import bookred.admin.command.Criteria;
import bookred.common.dto.AttachVO;
import bookred.main.dto.EventVO;

public interface EventService {

	Map<String, Object> getEventList(Criteria cri) throws SQLException;
	
	EventVO getEvent(int ev_no) throws SQLException;
	
	EventVO getEventForModify(int ev_no) throws SQLException;
	
	void regist(EventVO event) throws SQLException;
	
	void modify(EventVO event) throws SQLException;
	
	void remove(int ev_no) throws SQLException;
	
	AttachVO getAttachByAno(int ano) throws SQLException;

	void removeAttachByAno(int ano) throws SQLException;
}
