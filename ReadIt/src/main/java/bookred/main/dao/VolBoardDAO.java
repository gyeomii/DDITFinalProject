package bookred.main.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.command.Criteria;
import bookred.main.dto.VolApplyVO;
import bookred.main.dto.VolBoardVO;
import bookred.member.dto.MemberVO;

public interface VolBoardDAO {

	List<VolBoardVO> selectVolBoardList(Criteria cri) throws SQLException;

	int selectVolBoardListCount(Criteria cri) throws SQLException;

	VolBoardVO selectVolBoardByVbNo(int vb_no) throws SQLException;

	//void increaseViewCount(int vb_no) throws SQLException;

	int selectVolBoardSeqNext() throws SQLException;

	void insertVolBoard(VolBoardVO volBoard) throws SQLException;

	void updateVolBoard(VolBoardVO volBoard) throws SQLException;

	void deleteVolBoard(int vb_no) throws SQLException;
	
	void insertVolApply(VolApplyVO volApply) throws SQLException;

	int getVolBoardDuplicateChack(int vb_no, MemberVO loginUser);

	List<VolBoardVO> selectRecentVol() throws SQLException;
}
