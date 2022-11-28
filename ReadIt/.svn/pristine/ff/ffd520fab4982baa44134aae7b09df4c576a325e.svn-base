package bookred.main.service;

import java.sql.SQLException;
import java.util.Map;

import bookred.admin.command.Criteria;
import bookred.common.dto.AttachVO;
import bookred.main.dto.LostVO;

public interface LostService {

	Map<String, Object> getLostList(Criteria cri) throws SQLException;
	
	LostVO getLost(int lost_no) throws SQLException;
	
	LostVO getLostForModify(int lost_no) throws SQLException;
	
	void regist(LostVO lost) throws SQLException;
	
	void modify(LostVO lost) throws SQLException;
	
	void remove(int lost_no) throws SQLException;
	
	AttachVO getAttachByAno(int ano) throws SQLException;

	void removeAttachByAno(int ano) throws SQLException;
	
}
