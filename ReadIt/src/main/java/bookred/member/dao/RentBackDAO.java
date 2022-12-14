package bookred.member.dao;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

import bookred.main.dto.StatisticsVO;
import bookred.member.command.RentCriteria;
import bookred.member.dto.CountVO;
import bookred.member.dto.RentBackVO;
import bookred.member.dto.RentBookVO;

public interface RentBackDAO {
	
	int selectRentSeqNext() throws SQLException;
	
	List<RentBookVO> selectLentList(RentCriteria cri,String mem_id) throws SQLException;

	RentBackVO selectRentByRentNo(int rent_no) throws SQLException;
	
	List<RentBackVO> selectAllRentByBookTitle(String book_title) throws SQLException;

	int selectLentListCount(RentCriteria cri, String mem_id) throws SQLException;
	
	void updateRentDateExtention(RentBookVO rent) throws SQLException, ParseException;

	RentBookVO selectReturnDatePlus7day(RentBookVO rent) throws SQLException;
	
	int selectRentNotReturn(String mem_id) throws SQLException;
	
	
//	------------------------------------------------------------
	
	List<RentBackVO> selectAllReturnList(RentCriteria cri, String mem_id) throws SQLException;
	
	int selectAllReturnListCount(RentCriteria cri, String mem_id) throws SQLException;
	
	RentBackVO selectBackListByBookNo(int book_no) throws SQLException;
	
	List<RentBackVO> selectRentList(String mem_id) throws SQLException;
	
	List<CountVO> myRentList(String mem_id) throws SQLException;
	
	List<CountVO> totalRentList()throws SQLException;
	
	List<CountVO> totalMemberCount() throws SQLException;
	
	List<RentBackVO> selectThisMonthRentList(String mem_id) throws SQLException;
	List<RentBackVO> selectLastMonthRentList(String mem_id) throws SQLException;

	List<RentBackVO> selectRentOverdueRentnoList() throws SQLException;

	void updateIsDelayOverdue(int rent_no) throws SQLException;
	
	List<RentBackVO>  selectAllRentList() throws SQLException;
	
	List<StatisticsVO> selectMainChartBookCount() throws SQLException;

}
