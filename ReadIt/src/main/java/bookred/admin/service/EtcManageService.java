package bookred.admin.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import bookred.admin.dto.DonationBookVO;
import bookred.admin.dto.EtcManageVO;
import bookred.book.command.BookCriteria;

public interface EtcManageService {
	
	Map<String, Object> getAllNoRentList(BookCriteria cri) throws SQLException;
	
	Map<String, Object> getLossBookList(BookCriteria cri) throws SQLException;
	
	void regist(EtcManageVO registNoRentBook) throws SQLException;

	List<DonationBookVO> getAllDonationBookList() throws SQLException;
}
