package bookred.member.service;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;
import java.util.Map;

import bookred.admin.command.Criteria;
import bookred.book.command.BookCriteria;
import bookred.book.dto.BookVO;
import bookred.main.dto.StatisticsVO;
import bookred.member.command.RentCriteria;
import bookred.member.dto.RentBackVO;
import bookred.member.dto.RentBookVO;

public interface RentBackService {
	
	
	Map<String, Object> getRentList(RentCriteria cri, String mem_id) throws SQLException;
	
	RentBackVO getRentByRentNo(int rent_no) throws SQLException;
	
	void RentDateExtention(RentBookVO rentBook) throws SQLException, ParseException;


	Map<String, Object> getAllReturnList(RentCriteria cri, String mem_id) throws SQLException;
	
	int getRentNotReturn(String mem_id) throws SQLException;
	
	RentBackVO getSelectedRentBookList(int book_no) throws SQLException;
	
	List<Integer> getRentList(String mem_id)throws SQLException;
	
	Map<String, Object> getAverageChart(String mem_id) throws SQLException;
	Map<String, List<Integer>> getTwoMonthChart(String mem_id) throws SQLException;

	void rentDateOverdue() throws SQLException;
	public Map<String, Object> getMainChart() throws SQLException;
	List<StatisticsVO> getBookCountForStatistics() throws SQLException;
	List<Integer> getAllRentList( )throws SQLException;
	
}
