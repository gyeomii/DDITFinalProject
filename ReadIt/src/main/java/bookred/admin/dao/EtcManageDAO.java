package bookred.admin.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.dto.DonationBookVO;
import bookred.admin.dto.EtcManageVO;
import bookred.book.command.BookCriteria;

public interface EtcManageDAO {
	
	List<EtcManageVO> selectAllNoRentList(BookCriteria cri) throws SQLException;
	
	List<EtcManageVO> selectLossBookList(BookCriteria cri) throws SQLException;
	
	String selectBookByBookIsbn() throws SQLException;
	
	void regist(EtcManageVO book_isbn) throws SQLException;
	
	List<DonationBookVO> selectAllDonationBookList() throws SQLException;
	

}
