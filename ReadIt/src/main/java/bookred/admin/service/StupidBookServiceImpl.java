package bookred.admin.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bookred.admin.dao.StupidBookDAO;
import bookred.admin.dto.StupidBookVO;
import bookred.admin.dto.StupidCountVO;
import bookred.book.dao.BookDAO;
import bookred.book.dto.BookVO;

public class StupidBookServiceImpl implements StupidBookService {

	private StupidBookDAO stupidBookDAO;
	private BookDAO bookDAO;

	public void setStupidBookDAO(StupidBookDAO stupidBookDAO) {
		this.stupidBookDAO = stupidBookDAO;
	}

	public void setBookDAO(BookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}

	@Override
	public void registStupidBook(StupidBookVO stupid) throws SQLException {
		int kdc_no = Integer.parseInt(stupid.getSb_location());
		BookVO locInfo = bookDAO.selectKDCLOC(kdc_no);
		String location = locInfo.getRoom() + "/" + locInfo.getSector() + "/" + locInfo.getCall_number();
		stupid.setSb_location(location);
		locInfo = bookDAO.selectKDCLOC(stupid.getBook_kdc());
		String move_location = locInfo.getRoom() + "/" + locInfo.getSector() + "/" + locInfo.getCall_number();
		stupid.setMove_location(move_location);
		stupidBookDAO.insertStupidBook(stupid);
	}

	@Override
	public List<StupidBookVO> getStupidBookList() throws SQLException {
		List<StupidBookVO> stupidList = stupidBookDAO.selectStupidBookAlramList();
		return stupidList;
	}

	@Override
	public List<StupidBookVO> getStupidBookDoneList() throws SQLException {
		List<StupidBookVO> stupidList = stupidBookDAO.selectStupidBookDoneList();
		return stupidList;
	}

	@Override
	public void modifyStupidBookCorrect(List<StupidBookVO> stupidList) throws SQLException {
		stupidBookDAO.updateStupidBookCorrect(stupidList);
	}

	@Override
	public Map<String, Object> getstupidChartWeekList() throws SQLException {
		List<Integer> weekCountList = stupidBookDAO.selectstupidChartWeekList();
		List<StupidCountVO> kdcCountList = stupidBookDAO.selectStupidChartKDCList();
		Map<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("weekList", weekCountList);
		dataMap.put("kdcList", kdcCountList);
		return dataMap;
	}

}
