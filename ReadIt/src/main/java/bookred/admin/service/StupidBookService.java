package bookred.admin.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import bookred.admin.dto.StupidBookVO;

public interface StupidBookService {
	public void registStupidBook(StupidBookVO stupid) throws SQLException;
	public List<StupidBookVO> getStupidBookList() throws SQLException;
	public List<StupidBookVO> getStupidBookDoneList() throws SQLException;
	public void modifyStupidBookCorrect(List<StupidBookVO> stupidList) throws SQLException;
	public Map<String, Object> getstupidChartWeekList() throws SQLException;
}
