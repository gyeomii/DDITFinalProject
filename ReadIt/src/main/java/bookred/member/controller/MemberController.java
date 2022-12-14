package bookred.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import bookred.admin.command.Criteria;
import bookred.main.service.MultiOneService;
import bookred.main.service.VolBoardService;
import bookred.member.command.MemberModifyCommand;
import bookred.member.dto.MemberVO;
import bookred.member.dto.PointVO;
import bookred.member.dto.ReviewVO;
import bookred.member.service.MemberService;
import bookred.member.service.PointService;
import bookred.member.service.RentBackService;
import bookred.member.service.ReviewService;

@Controller
@RequestMapping("/main/myInfo")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private VolBoardService volBoardService;
	
	@Autowired
	private MultiOneService multiOneService;
	
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private RentBackService rentBackService;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private PointService pointService;
	public void SetSearchMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@RequestMapping(value = "/ckeckPwd")
	@ResponseBody
	public String ckeckPwd(HttpServletRequest req,@RequestParam(defaultValue = "값안넘어옴") String input_pwd) throws Exception {
		System.out.println(input_pwd);
		String result = "success";
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_pwd = memberVO.getMem_pwd();
		if (!passwordEncoder.matches(input_pwd,mem_pwd)){
			result="fail";
		}
		return result;

	}
	

	@RequestMapping("/mySmartLib")
	public String smart(HttpServletRequest request, Model model) throws Exception {
		String url = "/member/myInfo/mySmartLib2";
		
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO) session.getAttribute("loginUser");
		String mem_id = member.getMem_id();
		List<ReviewVO> reviewList = reviewService.getRecentReviewList(mem_id);
		int rentCount = reviewService.getRentListCount(mem_id);
		int delayCount = reviewService.getDelayListCOunt(mem_id);
		List<PointVO> pointList = pointService.getRecentPointListByMemberID(mem_id);
		Map<String, Integer> dataMap = new HashMap<String, Integer>();
		dataMap.put("rentCount", rentCount);
		dataMap.put("delayCount", delayCount);
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("pointList", pointList);
		model.addAttribute("dataMap", dataMap);
		return url;
	}
	
	@RequestMapping(value="/rentCount", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<Integer> countList(HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO) session.getAttribute("loginUser");
		String mem_id = member.getMem_id();
		List<Integer> countList = rentBackService.getRentList(mem_id);
		
		return countList;
	}
	@RequestMapping(value="/averageCount", produces = "application/json;charset=utf-8")
	@ResponseBody
	public Map<String, Object> averageCount(HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO) session.getAttribute("loginUser");
		String mem_id = member.getMem_id();
		Map<String, Object> dataMap = rentBackService.getAverageChart(mem_id);
		Map<String, List<Integer>> dataMap2 = rentBackService.getTwoMonthChart(mem_id);
		dataMap.put("thisCountList",dataMap2.get("thisCountList"));
		dataMap.put("lastCountList",dataMap2.get("lastCountList"));
		return dataMap;
	}
	@RequestMapping(value="/mainLibraryStatistics", produces = "application/json;charset=utf-8")
	@ResponseBody
	public Map<String, Object> mainStatistics() throws Exception{
		Map<String, Object> dataMap = rentBackService.getMainChart();
		return dataMap;
	}

	/*
	 * @RequestMapping(value="/thisAndLast", produces =
	 * "application/json;charset=utf-8")
	 * 
	 * @ResponseBody public Map<String, List<Integer>>
	 * thisAndLast(HttpServletRequest request) throws Exception{ HttpSession session
	 * = request.getSession(); MemberVO member = (MemberVO)
	 * session.getAttribute("loginUser"); String mem_id = member.getMem_id();
	 * Map<String, List<Integer>> dataMap =
	 * rentBackService.getTwoMonthChart(mem_id);
	 * 
	 * return dataMap; }
	 */
	@RequestMapping("/myPage")
	public String myPage(Criteria cri) throws Exception {

		String url = "/member/myInfo/myPage";
		volBoardService.getVolBoardList(cri);

		return url;
	}

	@RequestMapping(value= "/dropMember", method = RequestMethod.POST)
	@ResponseBody
	public String dropMember(HttpServletRequest req) throws Exception{
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();
		System.out.println(mem_id);
		memberService.drop(memberVO);
		session.removeAttribute("loginUser");
		return "OK";
	}
	
	@RequestMapping(value = "/myPageForm", method = RequestMethod.POST)
	public String myPageModify(MemberModifyCommand modifyReq,String input_pwd, String mem_addr, HttpServletRequest request, RedirectAttributes rttr)
			throws Exception {

		String url = "redirect:/main/myInfo/myPage.do";
//		System.out.println(modifyReq);
		
		  MemberVO member = modifyReq.toMemberVO();
		  String encodedPassword = passwordEncoder.encode(input_pwd);
		  member.setMem_pwd(encodedPassword);
		  member.setMem_addr(mem_addr);
//		  System.out.println("이메일 " + member.getMem_email());
//		  System.out.println("이름" + member.getMem_name());
//		  System.out.println("비번" + member.getMem_pwd());
//		  System.out.println("번호" + member.getMem_phone());
//		  System.out.println("주소" + member.getMem_addr());
//		  System.out.println("관삼서" + member.getMem_interest());
//		  System.out.println("mbti" + member.getMem_mbti());
//		  System.out.println("차" + member.getMem_car());
//		  System.out.println(input_pwd);
		  try { 
			  memberService.modify(member); 
		  } catch (Exception e) {
			  rttr.addFlashAttribute("status", "fail");
			  System.out.println("실패");
		  } 
		  rttr.addFlashAttribute("status", "modify");
		  System.out.println("성공");
		 
		return url;
	}

	@RequestMapping("/volunteer")
	public ModelAndView volunteer(ModelAndView mnv, HttpServletRequest http, Criteria cri) throws Exception {
		String url = "/member/myInfo/volunteer";

		
		 HttpSession session = http.getSession();
		 MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		 String id = loginUser.getMem_id();
		
		System.out.println("zzzzzzzzzzzzzzzz="+id);
		Map<String, Object> dataMap = volBoardService.getVolBoardList(cri);
		Map<String, Object> dataMapTwo = multiOneService.getFacRsvList(id);
		
	
		mnv.addObject("dataMap", dataMap);
		mnv.addObject("dataMapTwo", dataMapTwo);
		mnv.setViewName(url);
		
		return mnv;
	}
	

	
	@RequestMapping("/event") public String event() throws Exception { 
		String url = "/member/myInfo/event"; 
		
		return url; 
	}

	/*
	 * @RequestMapping("/event") public ModelAndView event(Criteria cri,
	 * ModelAndView mnv) throws Exception { String url = "/member/myInfo/event";
	 * 
	 * Map<String, Object> eDataMap = eventService.getEventList(cri);
	 * mnv.addObject("dataMap", eDataMap); mnv.setViewName(url);
	 * 
	 * return mnv; }
	 */
	
	@RequestMapping("/qna")
	public String qna() throws Exception {
		String url = "/member/myInfo/QNA";
		return url;
	}

	@RequestMapping("/bookPoint")
	public String point() throws Exception {
		String url = "/member/myInfo/bookPoint";

		return url;
	}

	@RequestMapping(value="/pointList", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<PointVO> pointList(HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO) session.getAttribute("loginUser");
		String mem_id = member.getMem_id();
		List<PointVO> pointList = pointService.getPointListByMemberID(mem_id);
		return pointList;
	}
	
	@RequestMapping("/facility")
	public String facility() throws Exception {
		String url = "/member/myInfo/facility";
		
		return url;
	}

}
