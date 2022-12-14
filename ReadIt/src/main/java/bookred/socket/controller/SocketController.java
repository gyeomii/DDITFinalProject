package bookred.socket.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bookred.member.dto.MemberVO;
import bookred.socket.dto.AlramVO;
import bookred.socket.service.SocketService;

@Controller
@RequestMapping("/socket")
public class SocketController {
	
	@Autowired
	SocketService socekService;
	
	@PostMapping(value = "/main",produces = "application/json;charset=utf-8" )
	@ResponseBody
	public Map<String, Object> main(HttpServletRequest req) throws Exception {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();
		System.out.println("socket컨트롤러");
		List<AlramVO> alramList = socekService.getAlramRMList(mem_id);
		
		dataMap.put("alramList", alramList);
		
		return dataMap;
	}

	
	@PostMapping(value = "/commonMain",produces = "application/json;charset=utf-8" )
	@ResponseBody
	public Map<String, Object> commonMain(HttpServletRequest request) throws Exception {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		String id = loginUser.getMem_id();
		System.out.println("컨트롤러들어옴");
		List<AlramVO> alramList = socekService.getCommonAlramRMList(id);
		System.out.println("컨트롤러들어옴2");
		
		dataMap.put("alramList", alramList);
		return dataMap;
	}

}
