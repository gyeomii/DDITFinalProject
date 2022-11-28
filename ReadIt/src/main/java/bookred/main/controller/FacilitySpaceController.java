package bookred.main.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import bookred.main.dto.MultiOneVO;
import bookred.main.dto.StatisticsVO;
import bookred.main.service.MultiOneService;
import bookred.member.dto.MemberVO;

@Controller
@RequestMapping("/main/facilitySpace")
public class FacilitySpaceController {

	@Autowired
	private MultiOneService MultiOneService;

	@RequestMapping("/studyRoom")
	public String studyRoomList() {
		String url = "main/facility/studyRoom";

		return url;
	}

	
	
	
	//멀티 미디어실
	
	@RequestMapping("/multiRoom")
	public String multiRoomList(String WinTitle) {
		String url = "main/facility/multiRoom";

		return url;
	}

	@RequestMapping("/multiOneDetail")
	public String multiDetail1() {
		String url = "main/facility/multiOneDetail";

		return url;
	}

	@RequestMapping("/multiTwoDetail")
	public String multiTwoDetail() {
		String url = "main/facility/multiTwoDetail";

		return url;
	}

	@RequestMapping("/multiThreeDetail")
	public String multiThreeDetail() {
		String url = "main/facility/multiThreeDetail";

		return url;
	}

	@RequestMapping("/multiFourDetail")
	public String multiFourDetail() {
		String url = "main/facility/multiFourDetail";

		return url;
	}

	@PostMapping("regist")
	public String getDate(MultiOneVO multiOne, HttpServletRequest request, RedirectAttributes redirect, String aa)
			throws Exception {
	
		String url = "redirect:/main/facilitySpace/white.do";
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		multiOne.setMem_id(loginUser.getMem_id());

		String result = MultiOneService.insertMultiOne(multiOne);
		String facCode = multiOne.getFac_code();

		
//		Map<String, String> flash = new HashMap<String, String>();
//		
//		flash.put("result", result);
//		flash.put("fac_code", multiOne.getFac_code());
//		System.out.println("@@@fac_code:" + multiOne.getFac_code());
//		
//		
//		redirect.addFlashAttribute("flash", flash);
		redirect.addFlashAttribute("result", result);
		redirect.addFlashAttribute("facCode", facCode);
		
		return url;
	}

	@RequestMapping(value = "ajaxSeatData", method = RequestMethod.POST)
	@ResponseBody
	private List<String> ajaxSeatData(String seatDate, String seatTime,String fac_code) throws Exception {
		MultiOneVO multiOne = new MultiOneVO();
		multiOne.setFr_day(seatDate);
		multiOne.setFr_hour(Integer.parseInt(seatTime));
		multiOne.setFac_code(fac_code);
		
		List<String> dataList = MultiOneService.getSeatByDateAndTime(multiOne);
		return dataList;

	}
	
	@GetMapping(value ="/multiStatisticsData")
	@ResponseBody
	private ResponseEntity<List<StatisticsVO>> getMultiStatisticsData() throws Exception{
		ResponseEntity<List<StatisticsVO>> entity = null;
		
		List<StatisticsVO> data = MultiOneService.getMultiStatistics();
		
		entity = new ResponseEntity<List<StatisticsVO>>(data,HttpStatus.OK);
		return entity;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	//meetingRomm
	
	@RequestMapping("/meetingRoom")
	public String meetingRoom() {
	String url ="main/facility/meetingRoom";
	
	return url;
				
	}
	
	
	@RequestMapping("/meetingRoomOne")
	public String meetingRoomOne() {
		String url = "main/facility/meetingRoomOne";

		return url;
	}
	
	@RequestMapping("/meetingRoomTwo")
	public String meetingRoomTwo() {
		String url = "main/facility/meetingRoomTwo";

		return url;
	}

	@PostMapping("/meetingRegist")
	public String meetingRegist(MultiOneVO mutiOne, HttpServletRequest http, RedirectAttributes redirect)throws Exception{
		String url = "redirect:/main/facilitySpace/meetingRoom.do";

		HttpSession session = http.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		mutiOne.setMem_id(loginUser.getMem_id());
		
		
		
		String result = MultiOneService.regist(mutiOne);
		System.out.println(result);
		
		redirect.addFlashAttribute("result", result);
		
		return url;
	}
	
	@PostMapping(value = "/getAMeetingTime")
	@ResponseBody
	private Map<String, Object> getAMeetingTime(String day) throws Exception{
		Map<String, Object> dataMap = MultiOneService.getAMeetingTime(day);
		return dataMap;
	}
	
	@PostMapping(value = "/getBMeetingTime")
	@ResponseBody
	private Map<String, Object> getBMeetingTime(String day) throws Exception{
		Map<String, Object> dataMap = MultiOneService.getBMeetingTime(day);
		return dataMap;
	}
	
	@GetMapping(value ="/statisticsData")
	@ResponseBody
	private ResponseEntity<List<StatisticsVO>> getStatisticsData() throws Exception{
		ResponseEntity<List<StatisticsVO>> entity = null;
		
		List<StatisticsVO> data = MultiOneService.getStatistics();
		
		entity = new ResponseEntity<List<StatisticsVO>>(data,HttpStatus.OK);
		return entity;
	}
	
	
	@RequestMapping("/white")
	public String white() {
		String url = "main/facility/white";

		return url;
	}
	
}
