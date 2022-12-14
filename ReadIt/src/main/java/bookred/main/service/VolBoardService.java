package bookred.main.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import bookred.admin.command.Criteria;
import bookred.common.dto.AttachVO;
import bookred.main.dto.VolApplyVO;
import bookred.main.dto.VolBoardVO;
import bookred.member.dto.MemberVO;

public interface VolBoardService {
	Map<String, Object> getVolBoardList(Criteria cri) throws SQLException;

	VolBoardVO getVolBoard(int vb_no) throws SQLException;
	
	VolBoardVO getVolBoardFotModify(int vb_no) throws SQLException;
	
	void regist(VolBoardVO volBoard) throws SQLException;
	
	void modify(VolBoardVO volBoard) throws SQLException;
	
	void remove(int vb_no) throws SQLException;
	
	AttachVO getAttachByAno(int ano) throws SQLException;

	void removeAttachByAno(int ano) throws SQLException;
	
	void registVolApply(VolApplyVO volApply) throws SQLException;

	int getVolBoardDuplicateChack(int vb_no, MemberVO loginUser);
	
	List<VolBoardVO> getRecentVol() throws SQLException;
}
