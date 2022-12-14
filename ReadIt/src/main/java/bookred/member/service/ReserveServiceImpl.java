package bookred.member.service;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import bookred.admin.dto.AiVO;
import bookred.book.dto.BookVO;
import bookred.common.dto.LockerMasterVO;
import bookred.member.command.RentCriteria;
import bookred.member.command.RentPageMaker;
import bookred.member.dao.CartDAO;
import bookred.member.dao.ReserveDAO;
import bookred.member.dto.BkReserveVO;
import bookred.member.dto.CartVO;
import bookred.member.dto.CouponVO;
import bookred.member.dto.DeliveryVO;
import bookred.member.dto.DriveThruVO;
import bookred.member.dto.LockerVO;
import bookred.member.dto.PayVO;
import bookred.member.dto.RMVO;


public class ReserveServiceImpl implements ReserveService {
	
	public static final Logger log = LoggerFactory.getLogger(ReserveServiceImpl.class); 

	private ReserveDAO reserveDAO;
	private CartDAO cartDAO;

	public void setReserveDAO(ReserveDAO reserveDAO) {
		this.reserveDAO = reserveDAO;
	}

	public void setCartDAO(CartDAO cartDAO) {
		this.cartDAO = cartDAO;
	}

	@Override
	public List<BookVO> getCartBookList(String[] isbnArray) throws SQLException {
		List<BookVO> bookList = new ArrayList<BookVO>();
		List<String> isbnList = new ArrayList<String>();
		for (int i = 0; i < isbnArray.length; i++) {
			String isbn = isbnArray[i];
			int count = reserveDAO.selectRentableByISBN(isbn);
			if (count > 0) {
				isbnList.add(isbn);
			}
		}
		for (String isbn : isbnList) {
			BookVO book = reserveDAO.selectBookByISBN(isbn);
			bookList.add(book);
		}
		return bookList;
	}

	@Override
	public List<LockerMasterVO> getLockerList() throws SQLException {
		List<LockerMasterVO> lockerList = reserveDAO.selectLockerList();
		return lockerList;
	}

	@Override
	public void registLockerReserve(String mem_id, int rent_code, String[] isbnList, String locker_num)
			throws SQLException {
		// rmSeq
		int rm_no = reserveDAO.selectRMSeqNextVal();

		// insert RM
		RMVO rmVO = new RMVO();
		rmVO.setRm_no(rm_no);
		rmVO.setMem_id(mem_id);
		rmVO.setRent_code(rent_code);
		rmVO.setWant_date(new Date());
		rmVO.setRm_date(new Date());
		reserveDAO.insertRM(rmVO);

		// insertBookReserve, deleteCart
		for (String book_isbn : isbnList) {
			Map<String, Object> dataParam = new HashMap<String, Object>();
			CartVO cart = cartDAO.selectCartListByIsbnAndId(book_isbn, mem_id);
			int cart_no = cart.getCart_no();
			dataParam.put("mem_id", mem_id);
			dataParam.put("isbn", book_isbn);
			dataParam.put("cart_no", cart_no);
			dataParam.put("rm_no", rm_no);
			reserveDAO.insertBookReserve(dataParam);
			reserveDAO.updateBookStock(book_isbn);
			cartDAO.deleteCartByCartNo(cart_no);
		}

		// registLocker
		LockerVO locker = new LockerVO();
		locker.setRm_no(rm_no);
		locker.setLocker_num(locker_num);
		locker.setLk_ispickup(0);
		reserveDAO.insertLocker(locker);
		reserveDAO.updateLockerMaster(0, locker.getLocker_num());
	}

	@Override
	public void registFieldReserve(String mem_id, int rent_code, Date rm_date,  Date want_date, String[] isbnList)
			throws SQLException {
		// rmSeq
		int rm_no = reserveDAO.selectRMSeqNextVal();

		// insert RM
		RMVO rmVO = new RMVO();
		rmVO.setRm_no(rm_no);
		rmVO.setMem_id(mem_id);
		rmVO.setRent_code(rent_code);
		rmVO.setWant_date(want_date);
		rmVO.setRm_date(rm_date);
		reserveDAO.insertRM(rmVO);

		// insertBookReserve, deleteCart
		for (String book_isbn : isbnList) {
			Map<String, Object> dataParam = new HashMap<String, Object>();
			CartVO cart = cartDAO.selectCartListByIsbnAndId(book_isbn, mem_id);
			int cart_no = cart.getCart_no();
			dataParam.put("mem_id", mem_id);
			dataParam.put("isbn", book_isbn);
			dataParam.put("cart_no", cart_no);
			dataParam.put("rm_no", rm_no);
			reserveDAO.insertBookReserve(dataParam);
			reserveDAO.updateBookStock(book_isbn);
			cartDAO.deleteCartByCartNo(cart_no);
		}
	}

	@Override
	public void registDriveReserve(String mem_id, int rent_code, Date rm_date, Date want_date, String[] isbnList, String dt_car_no)
			throws SQLException {
		int rm_no = reserveDAO.selectRMSeqNextVal();

		// insert RM
		RMVO rmVO = new RMVO();
		rmVO.setRm_no(rm_no);
		rmVO.setMem_id(mem_id);
		rmVO.setRent_code(rent_code);
		rmVO.setRm_date(rm_date);
		rmVO.setWant_date(want_date);
		reserveDAO.insertRM(rmVO);
		
		System.out.println(rmVO.getRm_date());
		System.out.println(rmVO.getWant_date());

		// insertBookReserve, deleteCart
		for (String book_isbn : isbnList) {
			Map<String, Object> dataParam = new HashMap<String, Object>();
			CartVO cart = cartDAO.selectCartListByIsbnAndId(book_isbn, mem_id);
			int cart_no = cart.getCart_no();
			dataParam.put("mem_id", mem_id);
			dataParam.put("isbn", book_isbn);
			dataParam.put("cart_no", cart_no);
			dataParam.put("rm_no", rm_no);
			reserveDAO.insertBookReserve(dataParam);
			reserveDAO.updateBookStock(book_isbn);
			cartDAO.deleteCartByCartNo(cart_no);
		}

		// registLocker
		DriveThruVO drive = new DriveThruVO();
		drive.setRm_no(rm_no);
		drive.setDt_car_no(dt_car_no);
		drive.setDt_ispickup(0);
		reserveDAO.insertDriveThru(drive);

	}
	
	@Override
	public void registDeliveryReserve(String mem_id, int rent_code, Date rm_date,String tel, String addressResult, String address_detail, int isCoupon, String[] isbnList, int cp_no)throws SQLException {
		int rm_no = reserveDAO.selectRMSeqNextVal();

		// insert RM
		RMVO rmVO = new RMVO();
		rmVO.setRm_no(rm_no);
		rmVO.setMem_id(mem_id);
		rmVO.setRent_code(rent_code);
		rmVO.setRm_date(rm_date);
		rmVO.setWant_date(rm_date);
		reserveDAO.insertRM(rmVO);
		
		System.out.println(rmVO.getRm_date());
		System.out.println(rmVO.getWant_date());

		// insertBookReserve, deleteCart
		for (String book_isbn : isbnList) {
			Map<String, Object> dataParam = new HashMap<String, Object>();
			CartVO cart = cartDAO.selectCartListByIsbnAndId(book_isbn, mem_id);
			int cart_no = cart.getCart_no();
			dataParam.put("mem_id", mem_id);
			dataParam.put("isbn", book_isbn);
			dataParam.put("cart_no", cart_no);
			dataParam.put("rm_no", rm_no);
			reserveDAO.insertBookReserve(dataParam);
			reserveDAO.updateBookStock(book_isbn);
			cartDAO.deleteCartByCartNo(cart_no);
		}
		
		// ???????????????, ???????????????, ??????????????? ?????? ?????? ???????????????.
		int dv_no = reserveDAO.selectDVSeqNextVal();
		DeliveryVO delivery =  new DeliveryVO();
		delivery.setDv_no(dv_no);
		delivery.setRm_no(rm_no);
		delivery.setDv_address(addressResult + " " +address_detail);
		delivery.setDv_tell(tel);
		reserveDAO.insertDelivery(delivery);
		SimpleDateFormat formatter = new SimpleDateFormat("yyyymmdd");
		String date = formatter.format(rm_date);
		PayVO pay = new PayVO();
		CouponVO coupon = new  CouponVO();
		pay.setMem_id(mem_id);
		pay.setDv_no(dv_no);
		String pay_order = "ORD" +date + "-"+dv_no+"-"+rm_no;
		pay.setPay_order(pay_order);
		if(isCoupon == 1) {
			pay.setIs_pay_cp(1);
			pay.setPay_price(0);
			pay.setCp_no(cp_no);
			reserveDAO.insertPayWithCoupon(pay);
			coupon.setCp_no(cp_no);
			reserveDAO.updateCouponUse(coupon);
		}else if(isCoupon == 0){
			pay.setIs_pay_cp(0);
			pay.setPay_price(2500);
			reserveDAO.insertPayNoCoupon(pay);
		}
		
	}
	
	
	@Override
	public List<CouponVO> selectAvailableCoupons(String mem_id) throws SQLException {
		List<CouponVO> couponAvailableList = reserveDAO.selectAvailableCoupons(mem_id);
		System.out.println("??????????????????"+mem_id);
		return couponAvailableList;
		
	}
	

	// ????????? ??????????????? ????????? ????????? ???????????? ?????????
	@Override
	public Map<String, Object> getAllRMList(String mem_id) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		System.out.println("servicemem_id " + mem_id);
		RMVO rmVO = new RMVO();
		rmVO.setMem_id(mem_id);
		
		rmVO.setRent_code(0);
		List<RMVO> takeLibraryList = reserveDAO.selectRMTakeLibraryList(rmVO);
		
		rmVO.setRent_code(1);
		List<RMVO> takeDeliveryList = reserveDAO.selectRMTakeDeliveryList(rmVO);
		
		rmVO.setRent_code(2);
		List<RMVO> takeDriveThruList = reserveDAO.selectRMTakeDriveThruList(rmVO);
		
		rmVO.setRent_code(3);
		List<RMVO> takeLockerList = reserveDAO.selectRMTakeLockerList(rmVO);
		


		dataMap.put("takeLibraryList", takeLibraryList);
		dataMap.put("takeDeliveryList", takeDeliveryList);
		dataMap.put("takeDriveThruList", takeDriveThruList);
		dataMap.put("takeLockerList", takeLockerList);

		return dataMap;
	}
	
	// rm_no??? ???????????? ?????? ??????????????? ????????? ???????????? ??????.
	@Override
	public Map<String, Object> getAllBookReserveList(RentCriteria cri,String mem_id) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<RMVO> reserveList = new ArrayList<RMVO>();
		List<RMVO> reservePastList = new ArrayList<RMVO>();
		
		System.out.println("servicemem_id " + mem_id);
		RMVO rmVO = new RMVO();
		rmVO.setMem_id(mem_id);
		
		List<RMVO> RMList = reserveDAO.selectBookReserveRMList(rmVO);
		List<RMVO> RMPastList =  reserveDAO.selectBookReservePastList(cri, rmVO);
		
		int totalCount = reserveDAO.selectBookReservePastListCount(cri, rmVO);
		System.out.println("totalCount" + totalCount);
		RentPageMaker pageMaker = new RentPageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		
		
		for (int i = 0 ; i < RMList.size() ; i++) {
			int rm_no = RMList.get(i).getRm_no();
			RMVO rm = new RMVO();
			
			rm  = reserveDAO.selectBookReserveByRMDriveThru(rm_no);
			System.out.println(rm);
			if (rm  != null) {
				reserveList.add(rm);
			}
			rm = reserveDAO.selectBookReserveByRMLocker(rm_no);
			if (rm  != null) {
				reserveList.add(rm);
			}
			rm = reserveDAO.selectBookReserveByRMDelivery(rm_no);
			if (rm  != null) {
				reserveList.add(rm);
			}
			rm = reserveDAO.selectBookReserveByRMLibrary(rm_no);
			if (rm  != null) {
				reserveList.add(rm);
			}
			rm  = null;
		}
		System.out.println("size:"+RMPastList.size());
		for (int i = 0 ; i < RMPastList.size() ; i++) {
			int rm_no = RMPastList.get(i).getRm_no();
			System.out.println("rm_no" + rm_no);
			RMVO rmPVO =null;
			System.out.println(rmPVO);
			rmPVO  = reserveDAO.selectBookReserveByRMDriveThru(rm_no);
			if (rmPVO  != null) {
				reservePastList.add(rmPVO);
				System.out.println("divethru");
			}
			rmPVO = reserveDAO.selectBookReserveByRMLocker(rm_no);
			if (rmPVO  != null) {
				reservePastList.add(rmPVO);
				System.out.println("locker");
			}
			rmPVO = reserveDAO.selectBookReserveByRMDelivery(rm_no);
			if (rmPVO  != null) {
				reservePastList.add(rmPVO);
				System.out.println("delivery");
			}
			rmPVO = reserveDAO.selectBookReserveByRMLibrary(rm_no);
			if (rmPVO  != null) {
				reservePastList.add(rmPVO);
				System.out.println("Library");
			}
			System.out.println("null ??????" + rmPVO);
			rmPVO  = null;
		}
		System.out.println(reserveList.size());
		dataMap.put("reserveList", reserveList);
		dataMap.put("reservePastList", reservePastList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public void updateRMRentStatusToCancel(int rm_no) throws SQLException {
		reserveDAO.updateRMRentStatusToCancel(rm_no);
	}

	@Override
	public List<BookVO> getBookReserveListToBookInfo(int rm_no) throws SQLException {
		List<BkReserveVO> bkReserveList = new ArrayList<BkReserveVO>();
		List<BookVO> bookList = new ArrayList<BookVO>();
				
		bkReserveList = reserveDAO.selectBookReserveListByRmNo(rm_no);
		
		for (BkReserveVO bk : bkReserveList) {
			
			String book_isbn = bk.getIsbn();
			System.out.println("ISBN : "  + book_isbn);
			BookVO book = reserveDAO.selectBookByISBN(book_isbn);
			bookList.add(book);
		}
		
		return bookList;
	}

	@Override
	public void updateResveListToCancel() throws SQLException {
		List<RMVO> rmList = reserveDAO.selectReserveOverdueList();
		
		for (int i = 0; i < rmList.size(); i++) {
			int rm_no = rmList.get(i).getRm_no();
			reserveDAO.updateReserveOverdueToCancel(rm_no);
		}
	}
	
	@Override
	public 	Map<String, Object>  getAdminMainChartLastWeekList() throws SQLException, ParseException{
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<Map<String, Object>> libList = reserveDAO.selectLastWeekRentCountLib();
		List<Map<String, Object>> shipList = reserveDAO.selectLastWeekRentCountShip();
		List<Map<String, Object>> driveList = reserveDAO.selectLastWeekRentCountDrive();
		List<Map<String, Object>> lockerList = reserveDAO.selectLastWeekRentCountLocker();
		log.info("libList : " + libList);
		
		
		dataMap.put("libList", libList);
		dataMap.put("shipList", shipList);
		dataMap.put("driveList", driveList);
		dataMap.put("lockerList", lockerList);
		return dataMap;
	}

	@Override
	public Map<String, Object> getAdminMainChartAllRentList() throws SQLException, ParseException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		int reserveCount = reserveDAO.selectTwoWeekReserveBookCount();
		int rentCount = reserveDAO.selectTwoWeekRentBookCount();
		int returnCount = reserveDAO.selectTwoWeekReturnBookCount();
		int overdueCount = reserveDAO.selectAllOverdueBookCount();
		
		dataMap.put("reserveCount", reserveCount);
		dataMap.put("rentCount", rentCount);
		dataMap.put("returnCount", returnCount);
		dataMap.put("overdueCount", overdueCount);
		return dataMap;
	}

	@Override
	public Map<String, Object> getAdminMainChartAlList() throws SQLException, ParseException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<AiVO> aiList = reserveDAO.selectAiUseListCount();
		
		dataMap.put("aiList", aiList);	
		return dataMap;
	}




	

}
