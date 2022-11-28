package bookred.main.service;

import java.sql.SQLException;
import java.util.Map;

import bookred.admin.command.Criteria;
import bookred.common.dto.AttachVO;
import bookred.main.dto.OftenQnaVO;

public interface OftenQnaService {

	Map<String, Object> getOftenQnaList(Criteria cri) throws SQLException;

	OftenQnaVO getOftenQna(int oq_no) throws SQLException;
	
	OftenQnaVO getOftenQnaForModify(int oq_no) throws SQLException;
	
	void regist(OftenQnaVO oftenQna) throws SQLException;
	
	void modify(OftenQnaVO oftenQna) throws SQLException;
	
	void remove(int oq_no) throws SQLException;
	
	AttachVO getAttachByAno(int ano) throws SQLException;
	
	void removeAttachByAno(int ano) throws SQLException;
	
}
