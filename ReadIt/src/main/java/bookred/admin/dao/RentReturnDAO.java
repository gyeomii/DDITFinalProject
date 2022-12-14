package bookred.admin.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.dto.AdminRentVO;
import bookred.book.dto.BookVO;
import bookred.member.command.RentCriteria;
import bookred.member.dto.DeliveryVO;
import bookred.member.dto.LockerVO;
import bookred.member.dto.PayVO;
import bookred.member.dto.RMVO;
import bookred.member.dto.RentBackVO;

public interface RentReturnDAO {
	public List<RMVO> selectRMList(int rent_code)throws SQLException;
	public List<String> selectIsbnList(int rm_no)throws SQLException;
	public LockerVO selectLocker(int rm_no)throws SQLException;
	public String selectCarNo(int rm_no) throws SQLException;
	public DeliveryVO selectDelivery(int rm_no) throws SQLException;
	
	public void insertRMLibrary(RMVO rmVO)  throws SQLException;
	
	public void insertRentBackLibrary(RentBackVO rentBackVO)  throws SQLException;
	
	public int selectRMSeqNextVal() throws SQLException;
	
	public int selectRentSeqNext() throws SQLException;
	
	public void updateRMStatus(RMVO rm) throws SQLException;
	
	public void updateBookStateCode(BookVO book) throws SQLException;
	
	public BookVO selectBookByBookNo(int book_no) throws SQLException; 
	
	public RentBackVO selectRentBackAndBookByBookNo( int book_no) throws SQLException;
	
	public List<RentBackVO> selectRentBackList(String mem_id) throws SQLException;
	
	public void updateBookReturnDone(RentBackVO rentBack) throws SQLException;
	
	public List<RentBackVO> selectReturnList() throws SQLException;
	
	public void updateRentBackDelay(RentBackVO vo) throws SQLException;
	
	public void updateBKReserve(AdminRentVO vo)throws SQLException;
	
	public void updateBookStockMinus(AdminRentVO vo)throws SQLException;
	public void updateBookStockPlus(String isbn)throws SQLException;
	
	public PayVO selectPay(int dv_no) throws SQLException;
	public void updatePayCancel(PayVO pay) throws SQLException;
	public int selectBookNoByRM(int rm_no) throws SQLException;
}
