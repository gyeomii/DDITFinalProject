package bookred.member.dao;

import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Map;

import bookred.admin.dto.AiVO;
import bookred.book.dto.BookVO;
import bookred.common.dto.LockerMasterVO;
import bookred.member.command.RentCriteria;
import bookred.member.dto.BkReserveVO;
import bookred.member.dto.CouponVO;
import bookred.member.dto.DeliveryVO;
import bookred.member.dto.DriveThruVO;
import bookred.member.dto.LockerVO;
import bookred.member.dto.PayVO;
import bookred.member.dto.RMVO;
import bookred.member.dto.RentBackVO;

public interface ReserveDAO {
	public int selectRentableByISBN(String book_isbn) throws SQLException;
	public void updateBookStock(String book_isbn)throws SQLException;
	
	public BookVO selectBookByISBN(String book_isbn) throws SQLException;
	public List<RentBackVO> selectRentBookList(String mem_id) throws SQLException;
	public List<BkReserveVO> selectReserveList(String mem_id) throws SQLException;
	public List<LockerMasterVO> selectLockerList()throws SQLException;
	public void insertRM(RMVO rmVO)throws SQLException;
	public void insertBookReserve(Map<String, Object> dataParam)throws SQLException;
	
	public void insertLocker(LockerVO locker)throws SQLException;
	public void updateLockerMaster(int is_usable, String locker_num) throws SQLException;
	public int selectRMSeqNextVal()throws SQLException;
	
	public void insertDriveThru(DriveThruVO drive)throws SQLException;
	
	public int selectDVSeqNextVal() throws SQLException;
	public void insertDelivery(DeliveryVO delivery) throws SQLException;
	public void insertPayWithCoupon(PayVO pay) throws SQLException;
	public void insertPayNoCoupon(PayVO pay) throws SQLException;
	public void updateCouponUse(CouponVO coupon) throws SQLException;
	
	public List<CouponVO> selectAvailableCoupons(String mem_id)throws SQLException;
	
	public List<RMVO> selectRMtakeMethodList(RMVO rmVO) throws SQLException;
	public List<RMVO> selectRMTakeLibraryList(RMVO rmVO)throws SQLException;
	public List<RMVO> selectRMTakeLockerList(RMVO rmVO)throws SQLException;
	public List<RMVO> selectRMTakeDeliveryList(RMVO rmVO)throws SQLException;
	public List<RMVO> selectRMTakeDriveThruList(RMVO rmVO)throws SQLException;
	
	public void updateRMRentStatusToCancel(int rm_no) throws SQLException;
	public List<BkReserveVO> selectBookReserveListByRmNo(int rm_no) throws SQLException;
	
	public List<RMVO> selectBookReserveRMList(RMVO rmVO) throws SQLException;
	public List<RMVO> selectBookReservePastList(RentCriteria cri, RMVO rmVO) throws SQLException;
	public int selectBookReservePastListCount(RentCriteria cri,RMVO rmVO) throws SQLException;
	
	public RMVO selectBookReserveByRMDriveThru(int rm_no) throws SQLException;
	public RMVO selectBookReserveByRMLocker(int rm_no) throws SQLException;
	public RMVO selectBookReserveByRMDelivery(int rm_no) throws SQLException;
	public RMVO selectBookReserveByRMLibrary(int rm_no) throws SQLException;
	
	public List<RMVO> selectReserveOverdueList() throws SQLException;
	public void updateReserveOverdueToCancel(int rm_no) throws SQLException;
	
	public List<Map<String, Object>> selectLastWeekRentCountLib( ) throws SQLException;
	public List<Map<String, Object>> selectLastWeekRentCountShip( ) throws SQLException;
	public List<Map<String, Object>> selectLastWeekRentCountDrive( ) throws SQLException;
	public List<Map<String, Object>> selectLastWeekRentCountLocker( ) throws SQLException;
	
	public int selectTwoWeekReserveBookCount() throws SQLException;
	public int selectTwoWeekRentBookCount() throws SQLException;
	public int selectTwoWeekReturnBookCount() throws SQLException;
	public int selectAllOverdueBookCount() throws SQLException;

	public List<AiVO> selectAiUseListCount() throws SQLException;
	
}
