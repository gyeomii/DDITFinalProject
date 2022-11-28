package bookred.admin.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import bookred.admin.dto.LibPlanVO;
import bookred.admin.dto.TodolistVO;
import bookred.admin.service.AdminInfoService;
import bookred.admin.service.LibPlanService;
import bookred.admin.service.TodolistService;
import bookred.member.dto.MemberVO;
import bookred.member.dto.RMVO;

@Controller
@RequestMapping("/admin/mypage/getlibPlanList")
public class CalendarController {
	@Autowired
	private AdminInfoService adminService;
	
	@Autowired
	private TodolistService todolistService;
	
	@Autowired
	private LibPlanService libPlanService;
	
	
	
	@RequestMapping("/insertForm")
	public String insertForm(LibPlanVO planVO) throws Exception{
		String url = "admin/mypage/insertForm";
		
		return url;
	}
	
	
	@PostMapping(value = "/insert")
	@ResponseBody
	public void insert(HttpServletRequest req, LibPlanVO libVO) throws Exception{
		libPlanService.insert(libVO);
	}
	
	@PostMapping(value = "/update")
	@ResponseBody
	public void update(HttpServletRequest req, LibPlanVO libVO) throws Exception{
		libVO.setLp_name(libVO.getLp_name());
		
		libPlanService.update(libVO);
	}
	
	@PostMapping(value = "/deletePlan")
	@ResponseBody
	public void deletePlan(HttpServletRequest req, String lp_no) throws Exception{
		
		
		libPlanService.delete(lp_no);
	}

}
