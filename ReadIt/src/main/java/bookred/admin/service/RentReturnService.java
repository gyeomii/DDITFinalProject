package bookred.admin.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bookred.admin.dto.AdminRentVO;
import bookred.member.dto.LockerVO;
import bookred.member.dto.RMVO;
import bookred.member.dto.RentBackVO;

public interface RentReturnService {
	
	public void registRent(String mem_id, ArrayList<String> bookList) throws SQLException;
	public void registRentTwo(RMVO rmVO) throws SQLException;
	public void registReturn(int book_no, String mem_id) throws SQLException;


	public List<AdminRentVO> getLockerRentList(int rent_code) throws SQLException;
	public List<AdminRentVO> getFieldRentList(int rent_code) throws SQLException;
	public List<AdminRentVO> getDriveRentList(int rent_code) throws SQLException;
	public LockerVO getLocker(int rm_no) throws SQLException;
	public void modifyRMStatus(RMVO rm) throws SQLException;
	
	public RentBackVO getRentBookInfo(int book_no) throws SQLException;
	public List<RentBackVO> getRentBackInfoAllByMemId(String mem_id) throws SQLException;
	
	public List<RentBackVO> getReturnList() throws SQLException;
	
	public void modifyRentBackDelay(List<RentBackVO> list) throws SQLException;
	
	public void setBookNoToBKReserve(AdminRentVO vo) throws SQLException;
	
	public void PlusRentableBookCount(String isbn)throws SQLException;
	public List<AdminRentVO> getDeliveryRentList(int rent_code) throws SQLException;
	
	public int getBookNoByRM(int rm_no) throws SQLException;
}
