package bookred.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import bookred.admin.command.Criteria;
import bookred.admin.dto.NewBookVO;
import bookred.admin.service.NewBookService;
import bookred.admin.service.RentReturnService;
import bookred.book.command.BookCriteria;
import bookred.book.dto.BookStockVO;
import bookred.book.dto.BookVO;
import bookred.book.service.BookService;
import bookred.book.service.WishBookService;
import bookred.common.dto.MenuVO;
import bookred.common.service.MenuService;
import bookred.main.dto.NoticeVO;
import bookred.main.service.NoticeService;
import bookred.member.dto.MemberVO;
import bookred.member.dto.RentBackVO;
import bookred.member.service.MemberService;
import bookred.member.service.RentBackService;
import bookred.member.service.ReserveService;
import oracle.net.aso.h;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private MenuService menuService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private RentBackService rentBackService;
	@Autowired
	private BookService bookService;
	@Autowired
	private RentReturnService rentReturnService;
	@Autowired
	private NewBookService newBookService;
	@Autowired
	private WishBookService wishBookService;
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private ReserveService reserveService;
	

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

	@RequestMapping("/main")
	public String main(Model model) throws Exception {
		String url = "admin/common/main";
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<NoticeVO> recenNotice = noticeService.getRecentNoticeSeven();
		
		dataMap.put("recenNotice", recenNotice);
		model.addAttribute("dataMap",dataMap);
		
		return url;
	}
	
	@RequestMapping(value="/main/lastWeekChart", produces="application/json;charset=utf-8")
	@ResponseBody
	public  Map<String, Object>  lastWeekChart() throws Exception {
		Map<String, Object>  dataMap = reserveService.getAdminMainChartLastWeekList();
			return dataMap;
	}
	
	@RequestMapping(value="/main/rentAjax", produces="application/json;charset=utf-8")
	@ResponseBody
	public  Map<String, Object>  rentAjax() throws Exception {
		Map<String, Object>  dataMap = reserveService.getAdminMainChartAllRentList();
			return dataMap;
	}
	@RequestMapping(value="/main/aiAjax", produces="application/json;charset=utf-8")
	@ResponseBody
	public  Map<String, Object>  aiAjax() throws Exception {
		Map<String, Object>  dataMap = reserveService.getAdminMainChartAlList();
			return dataMap;
	}
	
	@RequestMapping(value="/main/rentAllAjax", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<Integer> rentAllAjax( ) throws Exception{
		List<Integer> countList = rentBackService.getAllRentList();
		return countList;
	}
	
	@RequestMapping("/calender")
	public String calender() throws Exception {
		String url = "admin/mypage/calendar";
		return url;
	}

	@RequestMapping("/index")
	public String index(@RequestParam(defaultValue = "M900000") String mCode, Model model) throws Exception {
		String url = "/admin/common/index";
		MenuVO menu = menuService.getMenuByMcode(mCode);

		model.addAttribute("menu", menu);

		return url;
	}
	
	
	@RequestMapping("/driveThrough")
	public String driveThrough() throws Exception {
		String url = "admin/main/drive/drive";
		return url;
	}
	
	@RequestMapping("/quickNewBook")
	public String quickNewBook() throws Exception{
		String url = "admin/main/getBookManage/quickNewBook";
		
		return url;
	}
	
	@RequestMapping("/registQuickNewBook")
	public String registQuickNewBook(NewBookVO newbook, BookStockVO bookStockVO,
								String book_isbn ,Model model, RedirectAttributes rttr) throws Exception{
		String url = "admin/main/getBookManage/resultPage";
//		System.out.println("nb????????? ?????????: "+ newbook.getNb_title());
		newBookService.registNewBookAllTable(newbook);
		
		newBookService.updateWishState(newbook);
//		System.out.println("wishState ???????????? ??????: " + newbook.getWb_no());
		
		System.out.println("isbn??? ?????????????" + book_isbn);
		System.out.println("???????????????????????????????" + newbook.getDonator_id());
		System.out.println("?????????????????????????" + newbook.getDonator_name());
		
		int bookstockCount = newBookService.selectFromStockTableISBNCheckCount(book_isbn);
		System.out.println("service?????????? "+newBookService.selectFromStockTableISBNCheckCount(book_isbn));
		
		if(bookstockCount == 0) {
			newBookService.registToBookStockNewBook(bookStockVO);
		} else if (bookstockCount == 1) {
			newBookService.updateToBookStockOldBook(bookStockVO);
		}
		
		rttr.addFlashAttribute("from", "registQuickNewBook");
		
		return url;
	}
	
	@RequestMapping("/getWishBookList")
	public ModelAndView getWishBookList(BookCriteria cri,ModelAndView mnv) throws Exception {
		String url = "admin/main/getBookManage/wishbookList";
		
		Map<String, Object> dataMap = newBookService.getAllWishBookList(cri);
		mnv.addObject("dataMap", dataMap);
//		System.out.println(dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping(value="/memInfo",produces = "application/json;charset=utf-8", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> memInfoForNewBook(Model model, String mem_id) throws Exception{
		String url = "admin/main/rentAndReturn/rent";
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		MemberVO member =  memberService.getMember(mem_id);
		
//		 null ?????? ????????? ???????????? 
//		?????? ????????? ???????????? ???????????? ????????? ???????????? ???????????? exception ??????.
		member.getMem_id();
		
		int count = rentBackService.getRentNotReturn(mem_id);
		
		dataMap.put("member", member);
		dataMap.put("count", count);
		return dataMap;
	
	}
	
	@RequestMapping("/quickRentAndReturn/rent")
	public String quickRentAndReturn() throws Exception{
		String url = "admin/main/rentAndReturn/rent";
		
		return url;
	}
	
	@RequestMapping("/quickRentAndReturn/barcodeScan.do")
	public String barcodeScan() throws Exception{
		String url = "admin/main/rentAndReturn/barcodeScan";
		
		return url;
	}
	
	@RequestMapping(value="/quickRentAndReturn/memInfo",produces = "application/json;charset=utf-8", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> memInfo(Model model, String mem_id) throws Exception{
		String url = "admin/main/rentAndReturn/rent";
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		MemberVO member =  memberService.getMember(mem_id);
		
//		 null ?????? ????????? ???????????? 
//		?????? ????????? ???????????? ???????????? ????????? ???????????? ???????????? exception ??????.
		member.getMem_id();
		
		int count = rentBackService.getRentNotReturn(mem_id);
		
		dataMap.put("member", member);
		dataMap.put("count", count);
		return dataMap;
	
	}
	
	@RequestMapping(value="/quickRentAndReturn/memNameInfo",produces = "application/json;charset=utf-8", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> memNameInfo(Model model, String mem_name) throws Exception{
		String url = "admin/main/rentAndReturn/rent";
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<MemberVO> memberList =  memberService.getMemberName(mem_name);
		
//		 null ?????? ????????? ???????????? 
//		?????? ????????? ???????????? ???????????? ????????? ???????????? ???????????? exception ??????.
		for (MemberVO member : memberList) {
			
			String mem_id = member.getMem_id();
			System.out.println("?????? : "  + mem_id);
			int count = rentBackService.getRentNotReturn(mem_id);
			member.setRentBookCount(count);
		}
		
		dataMap.put("memberList", memberList);
		return dataMap;
		
	}
	
	@RequestMapping(value="/quickRentAndReturn/bookInfo",produces = "application/json;charset=utf-8", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> bookInfo(int book_no) throws Exception{
		String url = "admin/main/rentAndReturn/rent";
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		BookVO book = bookService.getBookByBookNo(book_no);
		BookVO book_rentable = bookService.selectBookStock(book.getBook_isbn());
		dataMap.put("book", book);
		dataMap.put("book_rentable", book_rentable);
		
		return dataMap;
	}
	
	@RequestMapping(value="/quickRentAndReturn/rentBook",produces = "application/json;charset=utf-8", method = RequestMethod.POST)
	public String rentBookLibrary(@RequestBody Map<String, ArrayList<String>> dataMap) throws Exception{
		String url = "admin/main/rentAndReturn/rent";
		System.out.println("dataMap ?????????");
		String mem_id =  dataMap.get("memList").get(0);
		
		ArrayList<String> bookList =  dataMap.get("bookList");
		System.out.println(bookList);
		
		rentReturnService.registRent(mem_id, bookList);
		
		System.out.println("????????????");
		
		return url;
	}

	@RequestMapping("/quickRentAndReturn/return")
	public String quickReturn() throws Exception{
		String url = "admin/main/rentAndReturn/return";
		
		return url;
	}
	
	@RequestMapping(value="/quickRentAndReturn/bookReturnInfo",produces = "application/json;charset=utf-8", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> bookReturnInfo(int book_no) throws Exception{
		String url = "admin/main/rentAndReturn/return";
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		BookVO book = bookService.getBookByBookNo(book_no);
		BookVO book_rentable = bookService.selectBookStock(book.getBook_isbn());
		dataMap.put("book", book);
		dataMap.put("book_rentable", book_rentable);
		
		return dataMap;
	}
	
	@RequestMapping(value="/quickRentAndReturn/bookReturnInfoRegist",produces = "application/json;charset=utf-8", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> bookReturnInfoRegist(int book_no) throws Exception{
		String url = "admin/main/rentAndReturn/return";
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		System.out.println("???????????? :" + book_no);
		// ???????????? and ???????????? ????????? ????????????
		RentBackVO rentBackVO = rentReturnService.getRentBookInfo(book_no);
		
		List<RentBackVO> rentBack = new ArrayList<RentBackVO>();
		rentBack.add(rentBackVO);
		
		
		//?????? ?????? ????????????
		String mem_id = rentBackVO.getMem_id();
		MemberVO member =  memberService.getMember(mem_id);
		int count = rentBackService.getRentNotReturn(mem_id);
		
		
		List<RentBackVO> rentBackList = rentReturnService.getRentBackInfoAllByMemId(mem_id);
		/*
		 * System.out.println(rentBackList.get(0).getBook_title());
		 * System.out.println(rentBackList.get(1).getBook_title());
		 */
		
		dataMap.put("rentBack", rentBack);
		dataMap.put("member", member);
		dataMap.put("count", count);
		dataMap.put("rentBackList", rentBackList);
		
		return dataMap;
	}

	
	@RequestMapping(value="/quickRentAndReturn/returnBook",produces = "application/json;charset=utf-8", method = RequestMethod.POST)
	public String returnBookLibrary(@RequestBody Map<String, ArrayList<String>> dataMap) throws Exception{
		String url = "admin/main/rentAndReturn/return";
		
		int book_no =  Integer.parseInt(dataMap.get("bookList").get(0));
		String mem_id = dataMap.get("memId").get(0);
		rentReturnService.registReturn(book_no, mem_id);
		
		System.out.println("?????? ??????");
		
		return url;
	}
	
	

}
