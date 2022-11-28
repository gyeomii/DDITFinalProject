package bookred.socket.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bookred.admin.dto.StupidBookVO;
import bookred.admin.dto.TodolistVO;
import bookred.book.dto.WishBookVO;
import bookred.common.dto.MenuVO;
import bookred.member.dto.MemberVO;
import bookred.member.dto.RMVO;
import bookred.socket.dao.SocketDAO;
import bookred.socket.dto.AlramVO;

public class SocketServiceImpl implements SocketService{
	
	private SocketDAO socketDAO;
	public void setSocketDAO(SocketDAO socketDAO) {
		this.socketDAO = socketDAO;
	}
	

	@Override
	public List<AlramVO> getAlramRMList(String mem_id) throws SQLException {
		List<AlramVO> alramList = new ArrayList<AlramVO>(); 
		List<RMVO> rmList = socketDAO.selectRMStatusZero();
		List<WishBookVO> wishBookList = socketDAO.selectWishBookListWisthStateZeroCount();
		List<MemberVO> memberList = socketDAO.selectMemberBeforeApproval();
		List<TodolistVO> todoList = socketDAO.selectTodoListCountTodayEnd(mem_id);
		List<StupidBookVO> stupidList = socketDAO.selectStupidBookAlramList();
		String mCode = null;
		List<MenuVO> menuList;
		
		if (todoList.size() >= 1) {
			for (TodolistVO todo : todoList) {
				AlramVO alramTO = new AlramVO();
				// mcode 값 줘서 url 불러오는 코드
				mCode = "M950200";
				menuList = socketDAO.selectSubMenu(mCode);
				System.out.println("mCode"+mCode);
				System.out.println("menuList"+menuList);
				menuList.get(0).getMurl();
				
				// 알림창 화면에 보여줄 코드
				alramTO.setPrefix("오늘까지 ["+todo.getTodo_name()+"] 업무를 완료해야 합니다.");
				alramTO.setAlarmContent("업무 등록일 :");
				alramTO.setCdate(todo.getTodo_regdate());
				alramTO.setAlramImg("time.png");
				alramTO.setMurl(menuList.get(0).getMurl());
				alramTO.setMcode(mCode);
				
				alramList.add(alramTO);
			}
		}
		if (stupidList.size() >= 1) {
			mCode = "M920500";
			menuList = socketDAO.selectSubMenu(mCode);
			menuList.get(0).getMurl();
			
			AlramVO alramST = new AlramVO();
			alramST.setPrefix("현재  엉뚱도서가 "+stupidList.size()+"개 있습니다.");
			alramST.setAlarmContent("등록일 :");
			alramST.setAlramImg("책박이.PNG");
			alramST.setMurl(menuList.get(0).getMurl());
			alramST.setMcode(mCode);
			
			alramList.add(alramST);
			
		}
		if (rmList.size()>= 1) {
			mCode = "M920300";
			menuList = socketDAO.selectSubMenu(mCode);
			menuList.get(0).getMurl();
			
			AlramVO alramRM = new AlramVO();
			alramRM.setPrefix("신청된 대출 예약이 "+ rmList.size()+"개 있습니다.");
			alramRM.setAlarmContent("빠른 처리가 요망됩니다.");
			alramRM.setAlramImg("book.png");
			alramRM.setMurl(menuList.get(0).getMurl());
			alramRM.setMcode(mCode);
			
			alramList.add(alramRM);
		}
		
		if (wishBookList.size() >= 1) {
			mCode = "M050300";
			menuList = socketDAO.selectSubMenu(mCode);
			menuList.get(0).getMurl();
			
			AlramVO alramWB = new AlramVO();
			alramWB.setPrefix("신청된 비치 희망도서가  "+ wishBookList.size()+"개 있습니다.");
			alramWB.setAlarmContent("빠른 처리가 요망됩니다.");
			alramWB.setAlramImg("checkA.png");
			alramWB.setMurl(menuList.get(0).getMurl());
			alramWB.setMcode(mCode);
			
			alramList.add(alramWB);
		}
		
		if (memberList.size() >= 1) {
			mCode = "M910102";
			menuList = socketDAO.selectSubMenu(mCode);
			menuList.get(0).getMurl();
			
			for (MemberVO member : memberList) {
				AlramVO alramMB = new AlramVO();
				String gender;
				if (member.getMem_gender() =="M") {
					gender = "남";
				} else {
					gender = "여";
				}
				alramMB.setAlramImg("approve.png");
				alramMB.setPrefix("["+ member.getMem_name()+"("+gender+")]님이 관리자 회원 가입 요청하였습니다.");
				alramMB.setAlarmContent("ID : "+member.getMem_id() + "");
				alramMB.setMurl(menuList.get(0).getMurl());
				alramMB.setMcode(mCode);
				
				alramList.add(alramMB);
			}
			
		}
		return alramList;
	}


	@Override
	public List<AlramVO> getCommonAlramRMList(String memId) throws SQLException {
		System.out.println("서비스들어옴");
		List<AlramVO> alramList = new ArrayList<AlramVO>(); 
		int data = socketDAO.selectVolList(memId);
		if (data>=1) {
				AlramVO alramMB = new AlramVO();
				alramMB.setAlramImg("approve.png");
				alramMB.setPrefix("승인된 봉사신청 목록이 있습니다.");
				
				alramList.add(alramMB);
		}
		
		return alramList;
	}

}
