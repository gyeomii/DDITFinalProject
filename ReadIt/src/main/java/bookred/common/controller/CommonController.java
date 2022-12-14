package bookred.common.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import bookred.admin.dto.LibPlanVO;
import bookred.admin.service.LibPlanService;
import bookred.book.dto.BookVO;
import bookred.book.service.BookService;
import bookred.common.dto.MenuVO;
import bookred.common.service.MenuService;
import bookred.main.dto.NoticeVO;
import bookred.main.dto.VolBoardVO;
import bookred.main.service.NoticeService;
import bookred.main.service.VolBoardService;


@Controller	
public class CommonController {
	@Autowired
	private MenuService menuService;
	@Autowired
	private BookService bookService;
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private VolBoardService volBoardService;
	@Autowired
	private LibPlanService libPlanService;
	
	@GetMapping("/main")
	public String main(Model model) throws Exception{
		String url="/common/home";
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<BookVO> recmList = bookService.getRECMBookList();
		List<BookVO> bestList = bookService.getBestBookList();
		List<NoticeVO> recenNotice = noticeService.getRecentNotice();
		List<VolBoardVO> recentVol = volBoardService.getRecentVol();
		
		dataMap.put("recmList", recmList);
		dataMap.put("bestList", bestList);
		dataMap.put("recenNotice", recenNotice);
		dataMap.put("recentVol", recentVol);
		model.addAttribute("dataMap",dataMap);
		return url;
	}
	
	@RequestMapping("/index")
	public String index(@RequestParam(defaultValue = "M000000") String mCode, Model model)  throws Exception{
		String url="/common/indexPage";
		
		MenuVO menu = menuService.getMenuByMcode(mCode);
		
		model.addAttribute("menu",menu);
		return url;
	}
	
	
//	???????????? Controller ?????? ??????
	@RequestMapping("/subMenu")
	@ResponseBody
	public ResponseEntity<List<MenuVO>> subMenuToJSON(String mCode) {
		ResponseEntity<List<MenuVO>> entity = null;
		
		List<MenuVO> subMenu = null;
		try {
			subMenu = menuService.getSubMenuList(mCode);
			entity = new ResponseEntity<List<MenuVO>>(subMenu, HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<List<MenuVO>>(HttpStatus.INTERNAL_SERVER_ERROR);
			e.printStackTrace();
		}

		return entity;
	}
	
	@RequestMapping("/security/accessDenied")
	public void accessDenied() {}
	
//	@GetMapping("/common/loginForm")
//	public String loginForm(@RequestParam(defaultValue = "") String error, 
//							@ModelAttribute("retUrl") String retUrl, HttpServletResponse response) {
//		String url = "/common/loginForm";
//		
//		if(error != null && error.equals("-1")) {
//			response.setStatus(302);
//		}
//		
//		return url;
//	}
	
	@GetMapping("/common/loginForm")
	public String loginFormAdmin(@RequestParam(defaultValue = "") String error, 
								 @ModelAttribute("retUrl") String retUrl, HttpServletResponse response) {
		String url = "common/loginForm";
		
		if(error != null && error.equals("-1")) {
			response.setStatus(302);
			url = "common/loginForm2";
		}
		
		return url;
	}
	
	@GetMapping("/indexByAuth")
	public String loginSuccess(HttpServletRequest req, RedirectAttributes rttr) {
		String url = "/common/indexByAuth";
		
		
		return url;
	}
	
	@RequestMapping(value = "/libPlanList", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<LibPlanVO> libPlan(Model model, HttpServletRequest req) throws Exception{
		
		String url = "admin/mypage/libPlanList";
		
		List<LibPlanVO> dataList = libPlanService.getAllPlanList();
		
		
		return dataList;
	}
}
