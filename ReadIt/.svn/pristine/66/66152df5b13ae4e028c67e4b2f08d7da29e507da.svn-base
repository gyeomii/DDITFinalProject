package bookred.admin.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bookred.admin.dao.DrivethruDAO;
import bookred.admin.dao.RentReturnDAO;
import bookred.admin.dto.DriveThruReserveVO;
import bookred.book.dao.BookDAO;
import bookred.book.dto.BookVO;
import bookred.member.dao.MemberDAO;
import bookred.member.dto.BkReserveVO;
import bookred.member.dto.DriveThruVO;
import bookred.member.dto.MemberVO;
import bookred.member.dto.RMVO;


public class DrivethruServiceImpl implements DrivethruService {
	
	private DrivethruDAO drivethruDAO;
	public void setDrivethruDAO(DrivethruDAO drivethruDAO) {
			this.drivethruDAO = drivethruDAO;
	}
	
	private MemberDAO memberDAO;
	public void setMemberDAO(MemberDAO memberDAO) {
			this.memberDAO = memberDAO;
	}
	
	private BookDAO bookDAO;
	public void setBookDAO(BookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}
	private RentReturnDAO rentReturnDAO;
	public void setRentReturnDAO(RentReturnDAO rentReturnDAO) {
		this.rentReturnDAO = rentReturnDAO;
	}
	
	public List<RMVO> getRmNoListbycar(String dt_car_no) throws SQLException{
		List<DriveThruVO> rmNoList = drivethruDAO.selectRmNobyCar(dt_car_no);
		List<RMVO> rmList = new ArrayList<RMVO>();
			for (DriveThruVO driveThruVO : rmNoList) {
				System.out.println("RM넘버" + driveThruVO.getRm_no());
				RMVO rm = drivethruDAO.selectRmbyRmNo(driveThruVO.getRm_no());
				
				if(rm != null) {
				String mem_id = rm.getMem_id();
				System.out.println(mem_id);
				MemberVO member = memberDAO.selectMemberById(mem_id);
				String mem_name = member.getMem_name();
				rm.setMem_name(mem_name);
					rmList.add(rm);
				}
			}
		return rmList;
	}
	
	public Map<String, Object> getMemAndBookReserveInfo(RMVO rmVO) throws SQLException{
		Map<String,Object> dataMap = new HashMap<String,Object>();
		List<DriveThruReserveVO> driveBookList = new ArrayList<DriveThruReserveVO>();
		String mem_id = rmVO.getMem_id();
		int rm_no = rmVO.getRm_no();
		MemberVO member = memberDAO.selectMemberById(mem_id);
		
		List<BkReserveVO> bkList = drivethruDAO.selectBookReservebyRmNo(rm_no);
		for (BkReserveVO bkReserveVO : bkList) {
			DriveThruReserveVO driveVO = new DriveThruReserveVO();
			System.out.println(bkReserveVO.getBook_no());
			int book_no = bkReserveVO.getBook_no();
			BookVO book = bookDAO.selectBookByBookNo(book_no);
			
			driveVO.setBook_no(bkReserveVO.getBook_no());
			driveVO.setBook_title(book.getBook_title());
			driveVO.setBook_author(book.getBook_author());
			driveVO.setBook_publisher(book.getBook_publisher());
			driveVO.setRm_date(rmVO.getRm_date());
			driveVO.setWant_date(rmVO.getWant_date());
			
			driveBookList.add(driveVO);
		}
		
		
		dataMap.put("member", member);
		dataMap.put("bkList", bkList);
		dataMap.put("driveBookList", driveBookList);
		
		return dataMap;
	}

	@Override
	public void registRent(List<BkReserveVO> bkList) throws SQLException {

		// rm테이블에 rm 대출예약코드 5 대출완료로 변경
		RMVO rmVO = new RMVO();
		int rm_no = bkList.get(0).getRm_no();
		System.out.println(rm_no);
		drivethruDAO.updateDrivePickup(rm_no);
		rmVO.setRm_no(rm_no);
		rmVO.setRent_status(5);
		rentReturnDAO.updateRMStatus(rmVO);
		
		System.out.println(rmVO.getRent_status());
		for (BkReserveVO bkReserveVO : bkList) {
			// rentback insert
			drivethruDAO.insertRentBackLibraryForDrive(bkReserveVO);
			// book테이블에서 isbn 도서상태코드 0 대출불가로 변경
			BookVO book = new BookVO();
			book.setBook_no(bkReserveVO.getBook_no());
			book.setState_code(0);
			rentReturnDAO.updateBookStateCode(book);		
		}
	}
	
	
	

}