package bookred.admin.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import bookred.admin.command.Criteria;
import bookred.admin.dto.FacilityManagementVO;
import bookred.admin.dto.SecureVO;
import bookred.admin.service.FacilityManagementService;
import bookred.admin.service.SecureService;

@Controller
@RequestMapping("/admin/facilityManage")
public class FacilityManagementController {

	@Autowired
	FacilityManagementService facilityManagementService;
	@Autowired
	SecureService secureService;
	
	@RequestMapping("/restrictedArea")
	public String restrictedArea() throws Exception {
		String url = "admin/facility/res/restrictedArea";
		return url;
	}

	@RequestMapping("/restrictedArea/log")
	public String restrictedAreaLog() throws Exception {
		String url = "admin/facility/res/restrictedAreaLog";
		return url;
	}
	@RequestMapping(value="/restrictedArea/logAjax",produces = "application/json;charset=utf-8" )
	@ResponseBody
	public List<SecureVO> restrictedAreaLogAjax() throws Exception {
		List<SecureVO> logList = secureService.getSecureLogList();
		return logList;
	}

	@RequestMapping("/studyRoom")
	public String studyRoom() throws Exception {
		String url = "admin/facility/multi/studyRoom";
		return url;
	}

	// -------------------------------------------------------
	@RequestMapping("/multimediaRoom")
	public ModelAndView multimediaRoom(ModelAndView mnv ) throws Exception {
		String url = "admin/facility/multi/multimediaRoom";
		List<String> data = facilityManagementService.count();
		mnv.addObject("seatCount",data);
		mnv.setViewName(url);
		return mnv;
	}

	@PostMapping(value = "/ajaxPlace",produces = "application/json;charset=utf-8" )
	@ResponseBody
	public List<String> ajaxPlace(String day, String place, ModelAndView mnv) throws Exception {
		 
		FacilityManagementVO facilityManagement = new FacilityManagementVO();
		facilityManagement.setFac_code(place);
		facilityManagement.setFr_day(day);
		List<String> data = facilityManagementService.selectCount(facilityManagement);
		data.add(place);
		data.add(day);
		
		return data;
	}

	@PostMapping(value = "/profile",produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<FacilityManagementVO> profile(@RequestBody Map<String, Object> dataMap) throws Exception {

		FacilityManagementVO facilityManagement = new FacilityManagementVO();

		facilityManagement.setFr_day((String) dataMap.get("fr_day"));
		facilityManagement.setFac_code((String) dataMap.get("fac_code"));
		facilityManagement.setFr_seat((int) dataMap.get("fr_seat"));

		List<FacilityManagementVO> data = facilityManagementService.profile(facilityManagement);

		System.out.println(data);
		return data;
	}

	// ------------------------------------------------------------

	@RequestMapping("/list")
	public ModelAndView meetingRoom(ModelAndView mnv , Criteria cri) throws Exception {
		String url = "admin/facility/multi/meetingRoom";
		
		Map<String, Object> dataMap = facilityManagementService.getMeetingRoomList(cri);
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		return mnv;
	}
	
	@RequestMapping("/remove")
	public String remove(int fr_no,RedirectAttributes rttr)throws Exception{
		String url = "redirect:/admin/facilityManage/list";
		
		facilityManagementService.getRemove(fr_no);
		rttr.addFlashAttribute("from","remove");
		
		return url;
	}
	

}
