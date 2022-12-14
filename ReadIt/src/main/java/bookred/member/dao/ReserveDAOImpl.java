package bookred.member.dao;

import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import bookred.admin.command.Criteria;
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

public class ReserveDAOImpl implements ReserveDAO {
	private SqlSession session;

	public void setSqlSession(SqlSession session) {
		this.session = session;
	}
	@Override
	public int selectRentableByISBN(String book_isbn) throws SQLException{
		int count = session.selectOne("Reserve-Mapper.selectRentableByISBN",book_isbn);
		return count;
	}
	@Override
	public void updateBookStock(String book_isbn) throws SQLException {
		session.update("Reserve-Mapper.updateBookStock",book_isbn);
	}
	
	@Override
	public BookVO selectBookByISBN(String book_isbn) throws SQLException {
		BookVO book = session.selectOne("Reserve-Mapper.selectBookByISBN",book_isbn);
		return book;
	}
	@Override
	public List<RentBackVO> selectRentBookList(String mem_id) throws SQLException {
		List<RentBackVO> rentList = session.selectList("Reserve-Mapper.selectRentBookList",mem_id);
		return rentList;
	}
	@Override
	public List<BkReserveVO> selectReserveList(String mem_id) throws SQLException {
		List<BkReserveVO> reserveList = session.selectList("Reserve-Mapper.selectReserveList", mem_id);
		return reserveList;
	}

	@Override
	public List<LockerMasterVO> selectLockerList() throws SQLException {
		List<LockerMasterVO> lockerList = session.selectList("Reserve-Mapper.selectLockerList");
		return lockerList;
	}
	@Override
	public void insertRM(RMVO rmVO) throws SQLException {
		session.insert("Reserve-Mapper.insertRM",rmVO);
	}
	
	
	@Override
	public int selectRMSeqNextVal() throws SQLException {
		int rm_no = session.selectOne("Reserve-Mapper.selectRMSeqNextVal");
		return rm_no;
	}
	@Override
	public void insertBookReserve(Map<String, Object> dataParam) throws SQLException {
		session.insert("Reserve-Mapper.insertBookReserve",dataParam);
	}
	@Override
	public void insertLocker(LockerVO locker) throws SQLException {
		session.insert("Reserve-Mapper.insertLocker", locker);
	}
	@Override
	public void updateLockerMaster(int is_usable, String locker_num) throws SQLException {
		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("is_usable", is_usable);
		dataParam.put("locker_num", locker_num);
		session.update("Reserve-Mapper.updateLockerMaster",dataParam);
	}

	@Override
	public void insertDriveThru(DriveThruVO drive) throws SQLException {
		session.insert("Reserve-Mapper.insertDriveThru", drive);
	}
	@Override
	public List<RMVO> selectRMtakeMethodList(RMVO rmVO) throws SQLException {
		System.out.println("daomem_id " + rmVO.getMem_id());
		List<RMVO> takeList = session.selectList("Reserve-Mapper.selectRMtakeMethodList",rmVO);
		return takeList;
	}
	@Override
	public List<RMVO> selectRMTakeLibraryList(RMVO rmVO) throws SQLException {
		List<RMVO> takeList = session.selectList("Reserve-Mapper.selectRMTakeLibraryList",rmVO);
		return takeList;
	}
	@Override
	public List<RMVO> selectRMTakeLockerList(RMVO rmVO) throws SQLException {
		List<RMVO> takeList = session.selectList("Reserve-Mapper.selectRMTakeLockerList",rmVO);
		return takeList;
	}
	@Override
	public List<RMVO> selectRMTakeDeliveryList(RMVO rmVO) throws SQLException {
		List<RMVO> takeList = session.selectList("Reserve-Mapper.selectRMTakeDeliveryList",rmVO);
		return takeList;
	}
	@Override
	public List<RMVO> selectRMTakeDriveThruList(RMVO rmVO) throws SQLException {
		List<RMVO> takeList = session.selectList("Reserve-Mapper.selectRMTakeDriveThruList",rmVO);
		return takeList;
	}
	@Override
	public void updateRMRentStatusToCancel(int rm_no) throws SQLException {
		session.update("Reserve-Mapper.updateRMRentStatusToCancel",rm_no);
	}
	@Override
	public List<BkReserveVO> selectBookReserveListByRmNo(int rm_no) throws SQLException {
		List<BkReserveVO> reserveBookList = session.selectList("Reserve-Mapper.selectBookReserveByRmNo", rm_no);
		return reserveBookList;
	}
	@Override
	public List<RMVO>  selectBookReserveRMList(RMVO rmVO) throws SQLException {
		List<RMVO>  rmList = session.selectList("Reserve-Mapper.selectBookReserveRMList",rmVO);
		return rmList;
	}
	@Override
	public RMVO selectBookReserveByRMDriveThru(int rm_no) throws SQLException {
		RMVO rmVO = session.selectOne("Reserve-Mapper.selectBookReserveByRMDriveThru",rm_no);
		return rmVO;
	}
	@Override
	public RMVO selectBookReserveByRMLocker(int rm_no) throws SQLException {
		RMVO rmVO = session.selectOne("Reserve-Mapper.selectBookReserveByRMLocker",rm_no);
		return rmVO;
	}
	@Override
	public RMVO selectBookReserveByRMDelivery(int rm_no) throws SQLException {
		RMVO rmVO = session.selectOne("Reserve-Mapper.selectBookReserveByRMDelivery",rm_no);
		return rmVO;
	}
	@Override
	public RMVO selectBookReserveByRMLibrary(int rm_no) throws SQLException {
		RMVO rmVO = session.selectOne("Reserve-Mapper.selectBookReserveByRMLibrary",rm_no);
		return rmVO;
	}
	@Override
	public List<RMVO> selectBookReservePastList(RentCriteria cri, RMVO rmVO) throws SQLException {
		int startRow = cri.getStartRowNum() + 1;
		int endRow = startRow + cri.getPerPageNum();
		
		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());
		dataParam.put("mem_id", rmVO.getMem_id());
		
		System.out.println("startRow" + startRow  );
		System.out.println("endRow " +endRow );
		System.out.println("keyword" + cri.getKeyword());
		
		List<RMVO>  rmList = session.selectList("Reserve-Mapper.selectBookReservePastList",dataParam);
		return rmList;
	}
	@Override
	public int selectBookReservePastListCount(RentCriteria cri, RMVO rmVO) throws SQLException {
		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("cri", cri);
		dataParam.put("mem_id", rmVO.getMem_id());
		System.out.println("count: " + rmVO);

		int count = session.selectOne("Reserve-Mapper.selectBookReservePastListCount", dataParam);
		return count;
	}
	@Override
	public List<CouponVO> selectAvailableCoupons(String mem_id) throws SQLException {
		List<CouponVO> couponAvailableList = session.selectList("Reserve-Mapper.selectAvailableCoupons", mem_id);
		return couponAvailableList;
	}
	@Override
	public int selectDVSeqNextVal() throws SQLException {
		int dv_no = session.selectOne("Reserve-Mapper.selectDVSeqNextVal");
		return dv_no;
	}
	@Override
	public void insertDelivery(DeliveryVO delivery) throws SQLException {
		session.insert("Reserve-Mapper.insertDelivery", delivery);
	}
	@Override
	public void insertPayWithCoupon(PayVO pay) throws SQLException {
		session.insert("Reserve-Mapper.insertPayWithCoupon", pay);
	}
	@Override
	public void insertPayNoCoupon(PayVO pay) throws SQLException {
		session.insert("Reserve-Mapper.insertPayNoCoupon", pay);
	}
	@Override
	public void updateCouponUse(CouponVO coupon) throws SQLException {
		session.update("Reserve-Mapper.updateCouponUse", coupon);
	}
	@Override
	public List<RMVO> selectReserveOverdueList() throws SQLException {
		List<RMVO> rmList =session.selectList("Reserve-Mapper.selectReserveOverdueList");
		return rmList;
	}
	@Override
	public void updateReserveOverdueToCancel(int rm_no) throws SQLException {
		session.update("Reserve-Mapper.updateReserveOverdueToCancel", rm_no);
	}
	
	@Override
	public List<Map<String, Object>> selectLastWeekRentCountLib( ) throws SQLException {
		List<Map<String, Object>> countList = session.selectList("Reserve-Mapper.selectLastWeekRentCountLib");
		return countList;
	}
	@Override
	public 	List<Map<String, Object>>selectLastWeekRentCountShip( ) throws SQLException {
		List<Map<String, Object>> countList = session.selectList("Reserve-Mapper.selectLastWeekRentCountShip");
		return countList;
	}
	@Override
	public 	List<Map<String, Object>> selectLastWeekRentCountDrive( ) throws SQLException {
		List<Map<String, Object>>countList = session.selectList("Reserve-Mapper.selectLastWeekRentCountDrive");
		return countList;
	}
	@Override
	public	List<Map<String, Object>> selectLastWeekRentCountLocker( ) throws SQLException {
		List<Map<String, Object>> countList = session.selectList("Reserve-Mapper.selectLastWeekRentCountLocker");
		return countList;
	}
	@Override
	public int selectTwoWeekReserveBookCount() throws SQLException {
		int count = session.selectOne("Reserve-Mapper.selectTwoWeekReserveBookCount");
		System.out.println("?????? : " + count);
		return count;
	}
	@Override
	public int selectTwoWeekRentBookCount() throws SQLException {
		int count = session.selectOne("Reserve-Mapper.selectTwoWeekRentBookCount");
		return count;
	}
	@Override
	public int selectTwoWeekReturnBookCount() throws SQLException {
		int count = session.selectOne("Reserve-Mapper.selectTwoWeekReturnBookCount");
		return count;
	}
	@Override
	public int selectAllOverdueBookCount() throws SQLException {
		int count = session.selectOne("Reserve-Mapper.selectAllOverdueBookCount");
		return count;
	}
	@Override
	public List<AiVO> selectAiUseListCount() throws SQLException {
		List<AiVO> aiList = session.selectList("Reserve-Mapper.selectAiUseListCount");
		System.out.println("?????? : " +aiList);
		return aiList;
	}

}
