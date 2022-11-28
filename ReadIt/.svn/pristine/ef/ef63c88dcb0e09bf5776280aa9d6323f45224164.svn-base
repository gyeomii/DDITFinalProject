package bookred.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.script.ScriptEngine;
import javax.script.ScriptException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.init.ScriptUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import bookred.admin.command.Criteria;
import bookred.admin.dto.AdminInfoVO;
import bookred.admin.dto.SelectAdminVO;
import bookred.admin.service.AdminInfoService;
import bookred.book.command.BookCriteria;
import bookred.member.dto.CouponVO;
import bookred.member.dto.MemberVO;
import bookred.member.service.MemberService;

@Controller
@RequestMapping("/admin/userManage")
public class UserManageController {
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private AdminInfoService adminInfoService;
	

	@RequestMapping("/adminList")
	public ModelAndView adminList(Criteria cri, ModelAndView mnv) throws Exception{
		String url = "admin/userManage/adminList";
		
		Map<String, Object> dataMap = memberService.getAdminList(cri);
		dataMap.put("notApproveList", adminInfoService.getAdminListNotJoin());
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping("/adminApprove")
	public ModelAndView adminApprove(ModelAndView mnv, Criteria cri) throws Exception{
		String url = "admin/userManage/adminApprove";
		
		// 정보 뿌려주기용
		Map<String, Object> dataMap = memberService.getAdminList(cri);
		dataMap.put("notApproveList", adminInfoService.getAdminListNotJoin());
		mnv.addObject("dataMap", dataMap);
		
		List<MemberVO> dataList = new ArrayList<MemberVO>();
		dataList = adminInfoService.getAdminListNotJoin();
//		System.out.println(dataList.getClass());
		
		mnv.addObject("dataList",dataList);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@PostMapping(value = "/approve")
	@ResponseBody
	public void approve(HttpServletRequest req, AdminInfoVO adminVO) throws Exception{
		adminInfoService.insertToAdminInfoForApprovedAdmin(adminVO);
		adminInfoService.updateAdminForApprove(adminVO.getMem_id());
		
		System.out.println(adminVO.getDp_no());
		System.out.println(adminVO.getAd_position());
		System.out.println(adminVO.getMem_id());
		
	}
	
	@PostMapping(value = "/notApprove")
	@ResponseBody
	public void notApprove(HttpServletRequest req, String mem_id) throws Exception{
		adminInfoService.updateAdminForCancle(mem_id);
		
	}
	
	@RequestMapping("/adminFinger")
	public ModelAndView adminFinger(Criteria cri, ModelAndView mnv) throws Exception{
		String url = "admin/userManage/adminFinger";
		
		Map<String, Object> dataMap = memberService.getAdminList(cri);
		dataMap.put("notApproveList", adminInfoService.getAdminListNotJoin());
		
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		
		return mnv;
	}
	
	@RequestMapping("adminFinger/detailForRegist")
	public ModelAndView detailForRegist(String mem_id, @RequestParam(defaultValue = "") String from, 
			HttpServletRequest request, ModelAndView mnv) throws SQLException{
		String url = "admin/userManage/fingerRegist";
		
		SelectAdminVO admin = null;
		
		if (!from.equals("adminFinger")) {
			admin = adminInfoService.getAdminForModify(mem_id);
		} else {
			admin = adminInfoService.getAdmin(mem_id);
			url = "redirect:/admin/userManage/adminFinger/detailForRegist?mem_id=" + mem_id;
		}
		mnv.addObject("admin", admin);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	public static void init(HttpServletResponse response) {
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("utf-8");
	}
	
	public static void fingerRegistScript(HttpServletResponse response) throws IOException {
		init(response);
		PrintWriter out = response.getWriter();
		out.println("<body>");		
		out.println("</body>");		
		out.println("<script src='https://cdn.jsdelivr.net/npm/sweetalert2@10'></script>");
		out.println("<script>");
		out.println("Swal.fire({");
		out.println("icon: 'success',");
		out.println("title: '등록되었습니다.',");
		out.println("}).then(function(){window.opener.location.reload();");
		out.println("window.close();");
		out.println("})");
		out.println("</script>");
		out.flush();
	}
	
	
	@RequestMapping("/registForm")
	@ResponseBody
	public void registForm(AdminInfoVO vo, HttpServletResponse response) throws SQLException, ScriptException, IOException {
		try {
			if(!vo.getImgFile().getOriginalFilename().equals("")) {
				vo.setImg(vo.getImgFile().getBytes());
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		adminInfoService.registImg(vo);
		
		UserManageController.fingerRegistScript(response);
		
//		return UserManageController.fingerRegistScript(response);;
//		return "success";
	}
	
//	@RequestMapping("adminFinger/regist")
//	public 
	
	@Resource(name = "fileUploadPath")
	private String fileUploadPath;
	
	@RequestMapping(value = "/fingerModifyForRegist", method = RequestMethod.POST)
	public String fingerModifyForRegist(SelectAdminVO finger, HttpServletRequest request,
				RedirectAttributes rttr) throws Exception{
		String url = "redirect:/admin/userManage/fingerRegist";
		String savePath = this.fileUploadPath;
		
//		List<AdminInfoVO> file = FileUploadResolver.fileUpload(finger.getFingerprint(), savePath)
		finger.setFingerprint(savePath);
		System.out.println(savePath.toString());
		
		rttr.addAttribute("fimename", savePath);
		rttr.addFlashAttribute("from", "fingerModifyForRegist");
		
		return url;
	}
	
	
	@RequestMapping("/list")
	public ModelAndView memberList(BookCriteria cri, ModelAndView mnv) throws Exception{
		String url = "admin/userManage/memberList";
		
		Map<String, Object> dataMap = memberService.getMemberList(cri);
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url); 
		
		return mnv;
	}
	
	@RequestMapping("/memDetail")
	public ModelAndView memDetail(String mem_id , ModelAndView mnv) throws SQLException{
		String url = "admin/userManage/memberDetail";
		
		Map<String, Object> dataMap = memberService.getMemberDetail(mem_id);
		System.out.println("디테일");
		
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		return mnv;
	}
	
	@RequestMapping("memModifyForm")
	public ModelAndView memModifyForm(String mem_id, ModelAndView mnv) throws SQLException{
		String url = "admin/userManage/memberModify";
		
		Map<String, Object> dataMap = memberService.getMemberDetail(mem_id);
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		return mnv;
	}
	
	@RequestMapping("/memModify")
	public ModelAndView memModify(MemberVO member, ModelAndView mnv,RedirectAttributes rttr) throws SQLException{
		String url="redirect:/admin/userManage/memDetail.do";
		try {
			memberService.modifyByAdmin(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		rttr.addAttribute("mem_id", member.getMem_id());
		rttr.addFlashAttribute("from", "modify");
		mnv.setViewName(url);
		return mnv;
	}
	
	@RequestMapping("/memRemove")
	public ModelAndView memRemove(MemberVO member, ModelAndView mnv,RedirectAttributes rttr) throws SQLException{
		String url="redirect:/admin/userManage/memDetail.do";
		try {
			memberService.drop(member);;
		} catch (Exception e) {
			e.printStackTrace();
		}
		rttr.addAttribute("mem_id", member.getMem_id());
		mnv.setViewName(url);
		rttr.addFlashAttribute("from", "remove");
		return mnv;
	}
	
	
	@RequestMapping("/addCoupon")
	@ResponseBody
	public String addCoupon(String mem_id, String issueday, String expireday) throws SQLException, Exception{
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date cp_issueday = formatter.parse(issueday);
		Date cp_expireday = formatter.parse(expireday);
		
		CouponVO coupon = new CouponVO();
		coupon.setMem_id(mem_id);
		coupon.setCp_issueday(cp_issueday);
		coupon.setCp_expireday(cp_expireday);
		
		adminInfoService.insertCoupon(coupon);
		
		return  "success";
	}
	
}
