package bookred.admin.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import bookred.admin.dao.RentReturnDAO;
import bookred.admin.dto.AdminRentVO;
import bookred.book.dao.BookDAO;
import bookred.book.dto.BookVO;
import bookred.member.dao.PointDAO;
import bookred.member.dto.DeliveryVO;
import bookred.member.dto.LockerVO;
import bookred.member.dto.PayVO;
import bookred.member.dto.PointVO;
import bookred.member.dto.RMVO;
import bookred.member.dto.RentBackVO;

public class RentReturnServiceImpl implements RentReturnService {

	private RentReturnDAO rentReturnDAO;
	private BookDAO bookDAO;
	private PointDAO pointDAO;
	
	public void setPointDAO(PointDAO pointDAO) {
		this.pointDAO = pointDAO;
	}
	public void setRentReturnDAO(RentReturnDAO rentReturnDAO) {
		this.rentReturnDAO = rentReturnDAO;
	}

	public void setBookDAO(BookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}

	@Override
	public void registRent(String mem_id, ArrayList<String> bookList) throws SQLException {
		int rm_no = rentReturnDAO.selectRMSeqNextVal();
		
		RMVO rmVO = new RMVO();
		rmVO.setRm_no(rm_no);
		rmVO.setMem_id(mem_id);
		System.out.println("rm_no" + rm_no);
		System.out.println("mem_id" + mem_id);
		rentReturnDAO.insertRMLibrary(rmVO);
		
		//rm상태변경
		rmVO.setRent_status(5);
		rentReturnDAO.updateRMStatus(rmVO);
		
		RentBackVO rentBackVO = new RentBackVO();
		for (String book_no : bookList) {
			System.out.println("service " + book_no);
			int rent_no = rentReturnDAO.selectRentSeqNext();
			int bookNo = Integer.parseInt(book_no);

			// 도서 검색해서 isbn갑 가져오기
			BookVO book = rentReturnDAO.selectBookByBookNo(bookNo);

			// 도서 번호를 가지고 대출 상태코드 변경해주기 0번으로 (=대출 불가능)
			// where에 book_no가 있지만 book에서 이미 가지고 있음.
			book.setState_code(0);
			rentReturnDAO.updateBookStateCode(book);

			rentBackVO.setRent_no(rent_no);
			rentBackVO.setRm_no(rm_no);
			rentBackVO.setBook_no(bookNo);
			rentBackVO.setMem_id(mem_id);
			rentBackVO.setIsbn(book.getBook_isbn());

			// 대출 도서 정보 등록
			rentReturnDAO.insertRentBackLibrary(rentBackVO);
			
			AdminRentVO vo = new AdminRentVO();
			vo.setIsbn(book.getBook_isbn());
			rentReturnDAO.updateBookStockMinus(vo);
		}
	}
	
	@Override
	public void registRentTwo(RMVO rmVO) throws SQLException {
		//rm상태변경
		rmVO.setRent_status(5);
		rentReturnDAO.updateRMStatus(rmVO);
		
		RentBackVO rentBackVO = new RentBackVO();
		int rent_no = rentReturnDAO.selectRentSeqNext();
		int bookNo = rentReturnDAO.selectBookNoByRM(rmVO.getRm_no());
				
		// 도서 검색해서 isbn갑 가져오기
		BookVO book = rentReturnDAO.selectBookByBookNo(bookNo);
		
		// 도서 번호를 가지고 대출 상태코드 변경해주기 0번으로 (=대출 불가능)
		// where에 book_no가 있지만 book에서 이미 가지고 있음.
		book.setState_code(0);
		rentReturnDAO.updateBookStateCode(book);
		
		rentBackVO.setRent_no(rent_no);
		rentBackVO.setRm_no(rmVO.getRm_no());
		rentBackVO.setBook_no(bookNo);
		rentBackVO.setMem_id(rmVO.getMem_id());
		rentBackVO.setIsbn(book.getBook_isbn());
		
		// 대출 도서 정보 등록
		rentReturnDAO.insertRentBackLibrary(rentBackVO);
	}

	public LockerVO getLocker(int rm_no) throws SQLException {
		LockerVO locker = rentReturnDAO.selectLocker(rm_no);
		return locker;

	}

	@Override
	public List<AdminRentVO> getLockerRentList(int rent_code) throws SQLException {
		List<AdminRentVO> rentList = new ArrayList<AdminRentVO>();
		List<RMVO> rmList = rentReturnDAO.selectRMList(rent_code);
		List<BookVO> bookList;
		for (RMVO rmvo : rmList) {
			int rm_no = rmvo.getRm_no();
			List<String> isbnList = rentReturnDAO.selectIsbnList(rm_no);
			LockerVO locker = rentReturnDAO.selectLocker(rm_no);
			for (String isbn : isbnList) {
				AdminRentVO adminRentVO = new AdminRentVO();

				List<BookVO> book = bookDAO.selectBookByBookIsbn(isbn);
				BookVO locInfo = bookDAO.selectKDCLOC(book.get(0).getKdc_no());
				String location = locInfo.getRoom() + "/" + locInfo.getSector() + "/" + locInfo.getCall_number();

				adminRentVO.setBook_title(book.get(0).getBook_title());
				adminRentVO.setLocation(location);
				adminRentVO.setRm_no(rm_no);
				adminRentVO.setMem_id(rmvo.getMem_id());
				adminRentVO.setRent_code(rmvo.getRent_code());
				adminRentVO.setRent_status(rmvo.getRent_status());
				adminRentVO.setWant_date(rmvo.getWant_date());
				adminRentVO.setIsbn(isbn);
				adminRentVO.setEtc("사물함 : " + locker.getLocker_num());
				rentList.add(adminRentVO);
			}
		}
		return rentList;
	}

	@Override
	public List<AdminRentVO> getFieldRentList(int rent_code) throws SQLException {
		List<AdminRentVO> rentList = new ArrayList<AdminRentVO>();
		List<RMVO> rmList = rentReturnDAO.selectRMList(rent_code);
		for (RMVO rmvo : rmList) {
			int rm_no = rmvo.getRm_no();
			List<String> isbnList = rentReturnDAO.selectIsbnList(rm_no);
			for (String isbn : isbnList) {
				AdminRentVO adminRentVO = new AdminRentVO();

				List<BookVO> book = bookDAO.selectBookByBookIsbn(isbn);
				BookVO locInfo = bookDAO.selectKDCLOC(book.get(0).getKdc_no());
				String location = locInfo.getRoom() + "/" + locInfo.getSector() + "/" + locInfo.getCall_number();

				adminRentVO.setBook_title(book.get(0).getBook_title());
				adminRentVO.setLocation(location);
				adminRentVO.setRm_no(rm_no);
				adminRentVO.setMem_id(rmvo.getMem_id());
				adminRentVO.setRent_code(rmvo.getRent_code());
				adminRentVO.setRent_status(rmvo.getRent_status());
				adminRentVO.setWant_date(rmvo.getWant_date());
				adminRentVO.setIsbn(isbn);
				adminRentVO.setEtc("");
				rentList.add(adminRentVO);
			}
		}
		return rentList;
	}

	@Override
	public List<AdminRentVO> getDriveRentList(int rent_code) throws SQLException {
		List<AdminRentVO> rentList = new ArrayList<AdminRentVO>();
		List<RMVO> rmList = rentReturnDAO.selectRMList(rent_code);
		for (RMVO rmvo : rmList) {
			int rm_no = rmvo.getRm_no();
			List<String> isbnList = rentReturnDAO.selectIsbnList(rm_no);
			String car_no = rentReturnDAO.selectCarNo(rm_no);
			for (String isbn : isbnList) {
				AdminRentVO adminRentVO = new AdminRentVO();

				List<BookVO> book = bookDAO.selectBookByBookIsbn(isbn);
				BookVO locInfo = bookDAO.selectKDCLOC(book.get(0).getKdc_no());
				String location = locInfo.getRoom() + "/" + locInfo.getSector() + "/" + locInfo.getCall_number();

				adminRentVO.setBook_title(book.get(0).getBook_title());
				adminRentVO.setLocation(location);
				adminRentVO.setRm_no(rm_no);
				adminRentVO.setMem_id(rmvo.getMem_id());
				adminRentVO.setRent_code(rmvo.getRent_code());
				adminRentVO.setRent_status(rmvo.getRent_status());
				adminRentVO.setWant_date(rmvo.getWant_date());
				adminRentVO.setIsbn(isbn);
				adminRentVO.setEtc("차번호 : " + car_no);
				rentList.add(adminRentVO);
			}
		}
		return rentList;
	}
	@Override
	public List<AdminRentVO> getDeliveryRentList(int rent_code) throws SQLException {
		List<AdminRentVO> rentList = new ArrayList<AdminRentVO>();
		List<RMVO> rmList = rentReturnDAO.selectRMList(rent_code);
		for (RMVO rmvo : rmList) {
			int rm_no = rmvo.getRm_no();
			List<String> isbnList = rentReturnDAO.selectIsbnList(rm_no);
			DeliveryVO delivery = rentReturnDAO.selectDelivery(rm_no);
			PayVO pay = rentReturnDAO.selectPay(delivery.getDv_no());
			for (String isbn : isbnList) {
				AdminRentVO adminRentVO = new AdminRentVO();
				
				List<BookVO> book = bookDAO.selectBookByBookIsbn(isbn);
				BookVO locInfo = bookDAO.selectKDCLOC(book.get(0).getKdc_no());
				String location = locInfo.getRoom() + "/" + locInfo.getSector() + "/" + locInfo.getCall_number();
				
				adminRentVO.setBook_title(book.get(0).getBook_title());
				adminRentVO.setLocation(location);
				adminRentVO.setRm_no(rm_no);
				adminRentVO.setMem_id(rmvo.getMem_id());
				adminRentVO.setRent_code(rmvo.getRent_code());
				adminRentVO.setRent_status(rmvo.getRent_status());
				adminRentVO.setWant_date(rmvo.getWant_date());
				adminRentVO.setIsbn(isbn);
				adminRentVO.setEtc("주문번호 : " + pay.getPay_order());
				rentList.add(adminRentVO);
			}
		}
		return rentList;
	}

	@Override
	public void modifyRMStatus(RMVO rm) throws SQLException {
		if(rm.getRent_code() == 1) {
			DeliveryVO delivery = rentReturnDAO.selectDelivery(rm.getRm_no());
			PayVO pay = rentReturnDAO.selectPay(delivery.getDv_no());
			pay.setIs_pay_cancel(1);
			rentReturnDAO.updatePayCancel(pay);
		}
		rentReturnDAO.updateRMStatus(rm);
	}

	@Override
	public RentBackVO getRentBookInfo(int book_no) throws SQLException {
		System.out.println("serviece : " + book_no);
		RentBackVO rentBack = rentReturnDAO.selectRentBackAndBookByBookNo(book_no);
		return rentBack;
	}

	@Override
	public List<RentBackVO> getRentBackInfoAllByMemId(String mem_id) throws SQLException {
		List<RentBackVO> rentBackList = rentReturnDAO.selectRentBackList(mem_id);
		return rentBackList;
	}

	@Override
	public void registReturn(int book_no, String mem_id) throws SQLException {
		System.out.println("service " + book_no);

		BookVO book = new BookVO();

		book.setBook_no(book_no);
		book.setState_code(1);
		rentReturnDAO.updateBookStateCode(book);

		RentBackVO rentBack = new RentBackVO();

		rentBack.setBook_no(book_no);
		rentBack.setReturn_date(new Date());
		rentBack.setIs_return("Y");
		rentReturnDAO.updateBookReturnDone(rentBack);
		
		PointVO point = new PointVO();
		point.setMem_id(mem_id);
		point.setPt_isincrease(1);
		point.setPt_type("도서 반납");
		point.setPt_sum(5);
		pointDAO.insertPointByMemberID(point);
	}

	@Override
	public List<RentBackVO> getReturnList() throws SQLException {
		List<RentBackVO> returnList = rentReturnDAO.selectReturnList();
		for (RentBackVO rentBackVO : returnList) {
			int book_no = rentBackVO.getBook_no();
			BookVO book = bookDAO.selectBookByBookNo(book_no);
			rentBackVO.setBook_title(book.getBook_title());
			rentBackVO.setBook_isbn(book.getBook_isbn());
			rentBackVO.setBook_author(book.getBook_author());
			rentBackVO.setBook_imgurl(book.getBook_imgURL());
		}

		return returnList;
	}

	@Override
	public void modifyRentBackDelay(List<RentBackVO> list) throws SQLException {
		for (RentBackVO vo : list) {
			rentReturnDAO.updateRentBackDelay(vo);
		}
	}

	@Override
	public void setBookNoToBKReserve(AdminRentVO vo) throws SQLException {
		rentReturnDAO.updateBKReserve(vo);
		BookVO book = new BookVO();
		book.setBook_no(vo.getBook_no());
		book.setState_code(0);
		rentReturnDAO.updateBookStateCode(book);
		rentReturnDAO.updateBookStockMinus(vo);
		RMVO rm = new RMVO();
		rm.setRm_no(vo.getRm_no());
		rm.setRent_status(vo.getRent_status());
		rentReturnDAO.updateRMStatus(rm);
	}

	@Override
	public void PlusRentableBookCount(String isbn) throws SQLException {
		rentReturnDAO.updateBookStockPlus(isbn);
	}
	@Override
	public int getBookNoByRM(int rm_no) throws SQLException {
		int book_no = rentReturnDAO.selectBookNoByRM(rm_no);
		return book_no;
	}
}
