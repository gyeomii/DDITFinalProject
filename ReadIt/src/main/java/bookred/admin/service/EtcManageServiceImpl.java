package bookred.admin.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bookred.admin.dao.EtcManageDAO;
import bookred.admin.dto.DonationBookVO;
import bookred.admin.dto.EtcManageVO;
import bookred.book.command.BookCriteria;
import bookred.book.command.BookPageMaker;

public class EtcManageServiceImpl implements EtcManageService {
	
	private EtcManageDAO etcManageDAO;
	
	public void setEtcManageDAO(EtcManageDAO etcManageDAO) {
		this.etcManageDAO = etcManageDAO;
	}

	@Override
	public Map<String, Object> getAllNoRentList(BookCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<EtcManageVO> noRentList = etcManageDAO.selectAllNoRentList(cri);
		
		BookPageMaker pageMaker = new BookPageMaker();
		pageMaker.setCri(cri);
		
		dataMap.put("noRentList", noRentList);
		dataMap.put("pageMaker", pageMaker);
		
		
		return dataMap;
	}

	@Override
	public Map<String, Object> getLossBookList(BookCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<EtcManageVO> lossBookList = etcManageDAO.selectLossBookList(cri);
		
		BookPageMaker pageMaker = new BookPageMaker();
		pageMaker.setCri(cri);
		
		dataMap.put("lossBookList", lossBookList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public void regist(EtcManageVO registNoRentBook) throws SQLException {
		System.out.println("서비스로 넘어옴?="+ registNoRentBook.getBook_isbn());
		System.out.println("서비스로 넘어옴?="+ registNoRentBook.getState_code());
		
		etcManageDAO.regist(registNoRentBook);
		
		System.out.println("서비스로 넘어오냐?" + registNoRentBook.toString());
		
	}

	@Override
	public List<DonationBookVO> getAllDonationBookList() throws SQLException {
		// TODO Auto-generated method stub
		return etcManageDAO.selectAllDonationBookList();
	}

}
