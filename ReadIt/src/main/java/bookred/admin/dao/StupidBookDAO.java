package bookred.admin.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.dto.StupidBookVO;
import bookred.admin.dto.StupidCountVO;

public interface StupidBookDAO {
	public void insertStupidBook(StupidBookVO stupid) throws SQLException;
	public List<StupidBookVO> selectStupidBookList() throws SQLException;
	public List<StupidBookVO> selectStupidBookAlramList() throws SQLException;
	public List<StupidBookVO> selectStupidBookDoneList() throws SQLException;
	public void updateStupidBookCorrect(List<StupidBookVO> stupidList) throws SQLException;
	public List<Integer> selectstupidChartWeekList() throws SQLException;
	public List<StupidCountVO> selectStupidChartKDCList() throws SQLException;
}
