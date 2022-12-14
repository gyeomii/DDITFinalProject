package bookred.member.service;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bookred.main.dto.StatisticsVO;
import bookred.member.command.RentCriteria;
import bookred.member.command.RentPageMaker;
import bookred.member.dao.RentBackDAO;
import bookred.member.dto.CountVO;
import bookred.member.dto.RMVO;
import bookred.member.dto.RentBackVO;
import bookred.member.dto.RentBookVO;

public class RentBackServiceImpl implements RentBackService {

	private RentBackDAO rentBackDAO;

	public void setRentDAO(RentBackDAO rentBackDAO) {
		this.rentBackDAO = rentBackDAO;
	}

	@Override
	public RentBackVO getRentByRentNo(int rent_no) throws SQLException {
		RentBackVO rent = rentBackDAO.selectRentByRentNo(rent_no);
		return rent;
	}

	@Override
	public Map<String, Object> getRentList(RentCriteria cri, String mem_id) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();		

		List<RentBookVO> rentList = rentBackDAO.selectLentList(cri, mem_id);
		System.out.println("검색 : ");
		
	
		
		int totalCount = rentBackDAO.selectLentListCount(cri,mem_id);
		RentPageMaker pageMaker = new RentPageMaker();

		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("rentList", rentList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public void RentDateExtention(RentBookVO rentBook) throws SQLException, ParseException {
		
		RentBookVO RentBookVO = rentBackDAO.selectReturnDatePlus7day(rentBook);
		System.out.println("due_daete: "+ RentBookVO.getDue_date() );
		
		rentBackDAO.updateRentDateExtention(RentBookVO);
		System.out.println("날짜 업데이트 완료!");
	}

	@Override
	public Map<String, Object> getAllReturnList(RentCriteria cri, String mem_id) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<RentBackVO> returnList = rentBackDAO.selectAllReturnList(cri, mem_id);
		
		int totalCount = rentBackDAO.selectAllReturnListCount(cri,mem_id);
		RentPageMaker pageMaker = new RentPageMaker();

		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("returnList", returnList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public int getRentNotReturn(String mem_id) throws SQLException {
		int count = rentBackDAO.selectRentNotReturn(mem_id);
		return count;
	}

	@Override
	public RentBackVO getSelectedRentBookList(int book_no) throws SQLException {
		
		RentBackVO selectBackListByBookNo = rentBackDAO.selectBackListByBookNo(book_no);
		
		return selectBackListByBookNo;
	}

	@Override
	public List<Integer> getRentList(String mem_id) throws SQLException {
		List<RentBackVO> rentLsit = rentBackDAO.selectRentList(mem_id);
		int c0 = 0;
		int c100 = 0;
		int c200 = 0;
		int c300 = 0;
		int c400 = 0;
		int c500 = 0;
		int c600 = 0;
		int c700 = 0;
		int c800 = 0;
		int c900 = 0;
		
		for (RentBackVO rentBackVO : rentLsit) {
			if(rentBackVO.getKdc_no() > 0 && rentBackVO.getKdc_no() < 100) {
				c0++;
			}else if(rentBackVO.getKdc_no() >= 100 && rentBackVO.getKdc_no() <200) {
				c100++;
			}else if(rentBackVO.getKdc_no() >= 200 && rentBackVO.getKdc_no() <300) {
				c200++;
			}else if(rentBackVO.getKdc_no() >= 300 && rentBackVO.getKdc_no() <400) {
				c300++;
			}else if(rentBackVO.getKdc_no() >= 400 && rentBackVO.getKdc_no() <500) {
				c400++;
			}else if(rentBackVO.getKdc_no() >= 500 && rentBackVO.getKdc_no() <600) {
				c500++;
			}else if(rentBackVO.getKdc_no() >= 600 && rentBackVO.getKdc_no() <700) {
				c600++;
			}else if(rentBackVO.getKdc_no() >= 700 && rentBackVO.getKdc_no() <800) {
				c700++;
			}else if(rentBackVO.getKdc_no() >= 800 && rentBackVO.getKdc_no() <900) {
				c800++;
			}else if(rentBackVO.getKdc_no() >= 900 && rentBackVO.getKdc_no() <1000) {
				c900++;
			}
		}
		
		List<Integer> countList = new ArrayList<Integer>();
		countList.add(c0);
		countList.add(c100);
		countList.add(c200);
		countList.add(c300);
		countList.add(c400);
		countList.add(c500);
		countList.add(c600);
		countList.add(c700);
		countList.add(c800);
		countList.add(c900);
		for (Integer integer : countList) {
			System.out.println("list" + integer);
		}
		return countList;
	}

	@Override
	public Map<String, Object> getAverageChart(String mem_id) throws SQLException {
		List<CountVO> myRent = rentBackDAO.myRentList(mem_id);
		List<CountVO> totalRent = rentBackDAO.totalRentList();
		List<CountVO> totalCount = rentBackDAO.totalMemberCount();
		List<Double> myList = new ArrayList<Double>();
		List<Double> totalList = new ArrayList<Double>();
			if(myRent.size() < 6) {
				int minus = 6 - myRent.size();
				for (int i = 0; i <minus; i++) {
					myList.add(0.0);
				}
				for (CountVO vo : myRent) {
						myList.add(vo.getCount() *1.0);
				}
			}else {
				for (CountVO vo : myRent) {
					myList.add(vo.getCount() *1.0);
				}
		}
		if(totalRent.size() < 6) {
			int minus = 6 - totalRent.size();
			for(int i=0;i<minus; i++) {
				totalList.add(0.0);
			}
			for(int j=0; j<totalRent.size(); j++) {
				Double avg = totalRent.get(j).getCount()*1.0 / totalCount.get(j).getCount() ;
				System.out.println(avg);
				totalList.add(avg);
			}
		}else {
			for(int i=0; i < totalRent.size(); i++) {
				Double avg = totalRent.get(i).getCount()*1.0 / totalCount.get(i).getCount() ;
				System.out.println(avg);
				totalList.add(avg);
			}
		}
		Map<String,Object> dataMap = new HashMap<String, Object>();
		dataMap.put("myList", myList);
		dataMap.put("totalList", totalList);
		return dataMap;
	}

	@Override
	public Map<String, Object> getMainChart() throws SQLException {
		List<CountVO> totalRent = rentBackDAO.totalRentList();
		List<CountVO> totalCount = rentBackDAO.totalMemberCount();
		List<Double> totalList = new ArrayList<Double>();
		if(totalRent.size() < 6) {
			int minus = 6 - totalRent.size();
			for(int i=0;i<minus; i++) {
				totalList.add(0.0);
			}
			for(int j=0; j<totalRent.size(); j++) {
				Double avg = totalRent.get(j).getCount()*1.0 / totalCount.get(j).getCount() ;
				System.out.println(avg);
				totalList.add(avg);
			}
		}else {
			for(int i=0; i < totalRent.size(); i++) {
				Double avg = totalRent.get(i).getCount()*1.0 / totalCount.get(i).getCount() ;
				System.out.println(avg);
				totalList.add(avg);
			}
		}
		Map<String,Object> dataMap = new HashMap<String, Object>();
		dataMap.put("totalList", totalList);
		return dataMap;
	}
	
	@Override
	public void rentDateOverdue() throws SQLException {
		List<RentBackVO> rentList = rentBackDAO.selectRentOverdueRentnoList();
		for (int i = 0; i < rentList.size(); i++) {
			int rent_no = rentList.get(i).getRent_no();
			rentBackDAO.updateIsDelayOverdue(rent_no);
		}
	}

	@Override
	public Map<String, List<Integer>> getTwoMonthChart(String mem_id) throws SQLException {
		List<RentBackVO> thisMonth = rentBackDAO.selectThisMonthRentList(mem_id);
		List<RentBackVO> lastMonth = rentBackDAO.selectLastMonthRentList(mem_id);
		
		int c0 = 0;
		int c100 = 0;
		int c200 = 0;
		int c300 = 0;
		int c400 = 0;
		int c500 = 0;
		int c600 = 0;
		int c700 = 0;
		int c800 = 0;
		int c900 = 0;
		
		for (RentBackVO rentBackVO : thisMonth) {
			if(rentBackVO.getKdc_no() > 0 && rentBackVO.getKdc_no() < 100) {
				c0++;
			}else if(rentBackVO.getKdc_no() >= 100 && rentBackVO.getKdc_no() <200) {
				c100++;
			}else if(rentBackVO.getKdc_no() >= 200 && rentBackVO.getKdc_no() <300) {
				c200++;
			}else if(rentBackVO.getKdc_no() >= 300 && rentBackVO.getKdc_no() <400) {
				c300++;
			}else if(rentBackVO.getKdc_no() >= 400 && rentBackVO.getKdc_no() <500) {
				c400++;
			}else if(rentBackVO.getKdc_no() >= 500 && rentBackVO.getKdc_no() <600) {
				c500++;
			}else if(rentBackVO.getKdc_no() >= 600 && rentBackVO.getKdc_no() <700) {
				c600++;
			}else if(rentBackVO.getKdc_no() >= 700 && rentBackVO.getKdc_no() <800) {
				c700++;
			}else if(rentBackVO.getKdc_no() >= 800 && rentBackVO.getKdc_no() <900) {
				c800++;
			}else if(rentBackVO.getKdc_no() >= 900 && rentBackVO.getKdc_no() <1000) {
				c900++;
			}
		}
		
		int l0 = 0, l100 =0 ,l200=0, l300=0, l400=0, l500=0, l600=0, l700=0, l800=0, l900 = 0;
		for (RentBackVO rentBackVO : lastMonth) {
			if(rentBackVO.getKdc_no() > 0 && rentBackVO.getKdc_no() < 100) {
				l0++;
			}else if(rentBackVO.getKdc_no() >= 100 && rentBackVO.getKdc_no() <200) {
				l100++;
			}else if(rentBackVO.getKdc_no() >= 200 && rentBackVO.getKdc_no() <300) {
				l200++;
			}else if(rentBackVO.getKdc_no() >= 300 && rentBackVO.getKdc_no() <400) {
				l300++;
			}else if(rentBackVO.getKdc_no() >= 400 && rentBackVO.getKdc_no() <500) {
				l400++;
			}else if(rentBackVO.getKdc_no() >= 500 && rentBackVO.getKdc_no() <600) {
				l500++;
			}else if(rentBackVO.getKdc_no() >= 600 && rentBackVO.getKdc_no() <700) {
				l600++;
			}else if(rentBackVO.getKdc_no() >= 700 && rentBackVO.getKdc_no() <800) {
				l700++;
			}else if(rentBackVO.getKdc_no() >= 800 && rentBackVO.getKdc_no() <900) {
				l800++;
			}else if(rentBackVO.getKdc_no() >= 900 && rentBackVO.getKdc_no() <1000) {
				l900++;
			}
		}
		
		List<Integer> thisCountList = new ArrayList<Integer>();
		thisCountList.add(c0);
		thisCountList.add(c100);
		thisCountList.add(c200);
		thisCountList.add(c300);
		thisCountList.add(c400);
		thisCountList.add(c500);
		thisCountList.add(c600);
		thisCountList.add(c700);
		thisCountList.add(c800);
		thisCountList.add(c900);
		
		List<Integer> lastCountList = new ArrayList<Integer>();
		lastCountList.add(l0);
		lastCountList.add(l100);
		lastCountList.add(l200);
		lastCountList.add(l300);
		lastCountList.add(l400);
		lastCountList.add(l500);
		lastCountList.add(l600);
		lastCountList.add(l700);
		lastCountList.add(l800);
		lastCountList.add(l900);
		
		for(int i = 0; i<lastCountList.size(); i++) {
			System.out.println("last" +  lastCountList.get(i));
			System.out.println("this" + thisCountList.get(i));
		}
		Map<String,List<Integer>> dataMap = new HashMap<String, List<Integer>>();
		dataMap.put("thisCountList", thisCountList);
		dataMap.put("lastCountList", lastCountList);
		return dataMap;
	}


	@Override
	public List<Integer> getAllRentList( ) throws SQLException {
		List<RentBackVO> rentLsit = rentBackDAO.selectAllRentList();
		int c0 = 0;
		int c100 = 0;
		int c200 = 0;
		int c300 = 0;
		int c400 = 0;
		int c500 = 0;
		int c600 = 0;
		int c700 = 0;
		int c800 = 0;
		int c900 = 0;
		
		for (RentBackVO rentBackVO : rentLsit) {
			if(rentBackVO.getKdc_no() > 0 && rentBackVO.getKdc_no() < 100) {
				c0++;
			}else if(rentBackVO.getKdc_no() >= 100 && rentBackVO.getKdc_no() <200) {
				c100++;
			}else if(rentBackVO.getKdc_no() >= 200 && rentBackVO.getKdc_no() <300) {
				c200++;
			}else if(rentBackVO.getKdc_no() >= 300 && rentBackVO.getKdc_no() <400) {
				c300++;
			}else if(rentBackVO.getKdc_no() >= 400 && rentBackVO.getKdc_no() <500) {
				c400++;
			}else if(rentBackVO.getKdc_no() >= 500 && rentBackVO.getKdc_no() <600) {
				c500++;
			}else if(rentBackVO.getKdc_no() >= 600 && rentBackVO.getKdc_no() <700) {
				c600++;
			}else if(rentBackVO.getKdc_no() >= 700 && rentBackVO.getKdc_no() <800) {
				c700++;
			}else if(rentBackVO.getKdc_no() >= 800 && rentBackVO.getKdc_no() <900) {
				c800++;
			}else if(rentBackVO.getKdc_no() >= 900 && rentBackVO.getKdc_no() <1000) {
				c900++;
			}
		}
		
		List<Integer> countList = new ArrayList<Integer>();
		countList.add(c0);
		countList.add(c100);
		countList.add(c200);
		countList.add(c300);
		countList.add(c400);
		countList.add(c500);
		countList.add(c600);
		countList.add(c700);
		countList.add(c800);
		countList.add(c900);
		for (Integer integer : countList) {
			System.out.println("list" + integer);
		}
		return countList;
	}

	@Override
	public List<StatisticsVO> getBookCountForStatistics() throws SQLException {
		List<StatisticsVO> countList = rentBackDAO.selectMainChartBookCount();
		return countList;
	}
}
	





