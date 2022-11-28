package bookred.main.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.command.Criteria;
import bookred.main.dto.OftenQnaVO;

public interface OftenQnaDAO {

	List<OftenQnaVO> selectOftenQnaList(Criteria cri) throws SQLException;

	int selectOftenQnaListCount(Criteria cri) throws SQLException;

	OftenQnaVO selectOftenQnaByOq_No(int oq_no) throws SQLException;

	void increaseViewCount(int oq_no) throws SQLException;

	int selectOftenQnaSeqNextValue() throws SQLException;

	void insertOftenQna(OftenQnaVO oftenQna) throws SQLException;

	void updateOftenQna(OftenQnaVO oftenQna) throws SQLException;

	void deleteOftenQna(int oq_no) throws SQLException;
}
