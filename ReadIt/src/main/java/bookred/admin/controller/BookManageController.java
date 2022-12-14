package bookred.admin.controller;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import bookred.admin.dto.AdminRentVO;
import bookred.admin.dto.DonationBookVO;
import bookred.admin.dto.EtcManageVO;
import bookred.admin.dto.NewBookVO;
import bookred.admin.dto.StupidBookVO;
import bookred.admin.service.EtcManageService;
import bookred.admin.service.NewBookService;
import bookred.admin.service.RentReturnService;
import bookred.admin.service.SecureService;
import bookred.admin.service.StupidBookService;
import bookred.book.command.BookCriteria;
import bookred.book.dto.BookStockVO;
import bookred.book.dto.BookVO;
import bookred.book.service.BookService;
import bookred.member.dto.MemberVO;
import bookred.member.dto.RMVO;
import bookred.member.dto.RentBackVO;
import bookred.member.service.MemberService;
import bookred.member.service.PointService;

@Controller
@RequestMapping("/admin/bookManage")
public class BookManageController {
	
	@Autowired
	private BookService bookService;
	@Autowired
	private EtcManageService etcManageService;
	@Autowired
	private RentReturnService rentReturnService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private StupidBookService stupidBookService;
	@Autowired
	private SecureService secureService;
	@Autowired
	private NewBookService newBookService;
	@Autowired
	private PointService pointService;
	@RequestMapping("/status")
	public ModelAndView Status(ModelAndView mnv) throws Exception{
		String url = "admin/book/classification/staus";
		
		Map<String, Integer> map = new HashMap<>();
		List<Integer> numList = new ArrayList<Integer>();
		
		for (int j = 1; j <= 10 ; j++) {
			int allbook = 0;
			for (int i = 0; i <= 9; i++) {
				int count = bookService.selectKdcNoCount(i);
				numList.add(i, count);
				map.put(Integer.toString(i), count);
				System.out.println(numList.get(i));
				allbook += count;
			}
			numList.add(10,allbook);
//			map.put("10", allbook);
		}
		
		mnv.addObject("numList", numList);
		mnv.setViewName(url);
		return mnv;
	}
	
	@RequestMapping("entryList")
	@ResponseBody
	public List<Map.Entry<String, Integer>> entryList() throws Exception{
		Map<String, Integer> map = new HashMap<>();
		for (int j = 1; j <= 10 ; j++) {
			int allbook = 0;
			for (int i = 0; i <= 9; i++) {
				int count = bookService.selectKdcNoCount(i);
				map.put(Integer.toString(i), count);
				allbook += count;
			}
//			map.put("10", allbook);
		}
		List<Map.Entry<String, Integer>> entryList = new LinkedList<>(map.entrySet());
		entryList.sort(new Comparator<Map.Entry<String, Integer>>() {
		    @Override
		    public int compare(Map.Entry<String, Integer> o1, Map.Entry<String, Integer> o2) {
			return o2.getValue() - o1.getValue();
		    }
		});
		for(Map.Entry<String, Integer> entry : entryList){
			System.out.println("key : " + entry.getKey() + ", value : " + entry.getValue());
		}
		return entryList;
	}	

	@RequestMapping("/big")
	public ModelAndView big(BookCriteria cri, ModelAndView mnv) throws Exception{
		String url = "admin/book/classification/big";
		System.out.println(cri.getPerPageNum());
		
		cri.setPerPageNum(10);
		Map<String,Object> dataMap = bookService.getAllBookList(cri);
		
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		
		return mnv;
	}
	
	@RequestMapping("/best")
	public String best() throws Exception{
		String url = "admin/book/recommend/best";
		
		return url;
	}	
	
	@RequestMapping("/recommend")
	public String recommend() throws Exception{
		String url = "admin/book/recommend/recommend";
		return url;
	}	
	
	@RequestMapping("/exRecommend")
	public String exRecommend() throws Exception{
		String url = "admin/book/recommend/exRecommend";
		return url;
	}	
	/* ???????????? ?????? ??? ?????? */
	@RequestMapping(value = "/rent/getMember", produces = "application/json;charset=utf-8")
	@ResponseBody
	public MemberVO getMember(String id) throws Exception{
		System.out.println(id);
		MemberVO member = memberService.getMember(id);
		return member;
	}
	
	@RequestMapping("/rent")
	public String reservation() throws Exception{
		String url = "admin/book/rentAndReturn/rent";
		
		return url;
	}
	@RequestMapping(value="/rent/lockerList", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<AdminRentVO> lockerList() throws Exception{
		int rent_code = 3;
		List<AdminRentVO> rentList =  rentReturnService.getLockerRentList(rent_code);
		return rentList;
	}
	@RequestMapping(value="/rent/fieldList", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<AdminRentVO> fieldList() throws Exception{
		int rent_code = 0;
		List<AdminRentVO> rentList =  rentReturnService.getFieldRentList(rent_code);
		return rentList;
	}
	@RequestMapping(value="/rent/driveList", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<AdminRentVO> driveList() throws Exception{
		int rent_code = 2;
		List<AdminRentVO> rentList =  rentReturnService.getDriveRentList(rent_code);
		return rentList;
	}
	@RequestMapping(value="/rent/deliveryList", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<AdminRentVO> deliveryList() throws Exception{
		int rent_code = 1;
		List<AdminRentVO> rentList =  rentReturnService.getDeliveryRentList(rent_code);
		return rentList;
	}
	
	@PostMapping(value="/rent/setStateApprove", produces="application/json;charset=utf-8")
	@ResponseBody
	public String setStateApprove(@RequestBody Map<String,List<RMVO>> dataMap) throws Exception{
		String status = "";
		List<RMVO> rmList = dataMap.get("list");
		for (RMVO rmvo : rmList) {
			rentReturnService.modifyRMStatus(rmvo);
		}
		return "????????????";
	}
	@PostMapping(value="/rent/setStateReject", produces="application/json;charset=utf-8")
	@ResponseBody
	public String setStateReject(@RequestBody Map<String,List<RMVO>> dataMap) throws Exception{
		String status = "";
		List<RMVO> rmList = dataMap.get("list");
		for (RMVO rmvo : rmList) {
			System.out.println(rmvo.getRent_code());
			rentReturnService.modifyRMStatus(rmvo);
		}
		return "????????????";
	}
	@PostMapping(value="/rent/setStateComplete", produces="application/json;charset=utf-8")
	@ResponseBody
	public String setStateComplete(@RequestBody Map<String,List<RMVO>> dataMap) throws Exception{
		String status = "";
		List<RMVO> rmList = dataMap.get("list");
		for (RMVO rmvo : rmList) {
			rentReturnService.registRentTwo(rmvo);
		}
		return "????????????";
	}
	
	@GetMapping(value="/rent/isbnSearch",  produces="application/json;charset=utf-8")
	@ResponseBody
	public List<BookVO> isbnSearch(String isbn) throws Exception{
		List<BookVO> bookList = new ArrayList<BookVO>();
		
		bookList = bookService.getRentableBookByISBN(isbn);
		
		return bookList;
	}
	
	@PostMapping(value="/rent/setBookNo", produces="application/json;charset=utf-8")
	@ResponseBody
	public String setBookNo(@RequestBody Map<String,AdminRentVO> dataMap) throws Exception{
		String status = "";
		AdminRentVO vo = dataMap.get("vo");
		rentReturnService.setBookNoToBKReserve(vo);
		return "????????????";
	}
	
	@RequestMapping("/return")
	public String return2() throws Exception{
		String url = "admin/book/rentAndReturn/return";
		
		return url;
	}	
	@RequestMapping(value="/return/list", produces="application/json;charset=utf-8")
	@ResponseBody
	public List<RentBackVO> returnList() throws Exception{
		List<RentBackVO> returnList = new ArrayList<RentBackVO>();
		
		returnList = rentReturnService.getReturnList();
		
		return returnList;
	}
	@PostMapping(value="/rent/setStateReturn", produces="application/json;charset=utf-8")
	@ResponseBody
	public String setStateReturn(@RequestBody Map<String,List<RentBackVO>> dataMap) throws Exception{
		String status = "";
		List<RentBackVO> list = dataMap.get("list");
		for (RentBackVO vo : list) {
			rentReturnService.PlusRentableBookCount(vo.getIsbn());
			  rentReturnService.registReturn(vo.getBook_no(), vo.getMem_id());
		}
		return "????????????";
	}
	@PostMapping(value="/rent/setStateDelay", produces="application/json;charset=utf-8")
	@ResponseBody
	public String setStateDelay(@RequestBody Map<String,List<RentBackVO>> dataMap) throws Exception{
		String status = "";
		List<RentBackVO> list = dataMap.get("list");
		rentReturnService.modifyRentBackDelay(list);
		return "????????????";
	}
	/* ???????????? ?????? ??? ?????? */
	
	@RequestMapping("/location")
	public String loacation() throws Exception{
		String url = "admin/book/location/location";
		
		return url;
	}	
	
	@RequestMapping("/locationCode")
	public String locationCode() throws Exception{
		String url = "admin/book/location/locationCode";
		
		return url;
	}	
	
	/* ???????????? */
	@RequestMapping("/stupid")
	public String stupidBook() throws Exception{
		String url = "admin/book/stupid/stupidBookStatus";
		
		return url;
	}		
	@RequestMapping(value="/stupid/chart", produces="application/json;charset=utf-8")
	@ResponseBody
	public Map<String, Object> stupidChart(String fullDate) throws Exception{
		Map<String, Object> dataMap = stupidBookService.getstupidChartWeekList();
		System.out.println(fullDate);
		return dataMap;
	}
	@RequestMapping("/stupidBookDone")
	public String stupidBookDone() throws Exception{
		String url = "admin/book/stupid/stupidBookDone";
		
		return url;
	}
	@RequestMapping(value="/stupidBookAdd/done", produces="application/json;charset=utf-8")
	@ResponseBody
	public List<StupidBookVO> stupidBookDoneList() throws Exception{
		List<StupidBookVO> stupidList = stupidBookService.getStupidBookDoneList();
		return stupidList;
	}
	@RequestMapping("/stupidBookAdd")
	public String stupidBookAdd() throws Exception{
		String url = "admin/book/stupid/stupidBookAdd";
		
		return url;
	}		
	@RequestMapping(value="/stupidBookAdd/List", produces="application/json;charset=utf-8")
	@ResponseBody
	public List<StupidBookVO> stupidBookList() throws Exception{
		List<StupidBookVO> stupidList = stupidBookService.getStupidBookList();
		return stupidList;
	}
	@PostMapping(value="/setCorrect", produces="application/json;charset=utf-8")
	@ResponseBody
	public String setCorrect(@RequestBody Map<String,List<StupidBookVO>> dataMap) throws Exception{
		String status = "";
		List<StupidBookVO> stupidList = dataMap.get("list");
		for (StupidBookVO stupidBookVO : stupidList) {
			System.out.println(stupidBookVO.getSb_no());
			System.out.println(stupidBookVO.getSb_isdone());
		}
		stupidBookService.modifyStupidBookCorrect(stupidList);
		return "????????????";
	}
	@RequestMapping("/stupidCam")
	public String stupidCam() throws Exception{
		String url = "admin/book/stupid/stupidCam";
		
		return url;
	}		
	@RequestMapping("/heightCheck")
	public String heightCheck() throws Exception{
		String url = "admin/book/stupid/heightCheck";
		
		return url;
	}		
	@RequestMapping("/fingerCheck")
	public String fingerCheck() throws Exception{
		String url = "admin/book/stupid/fingerCheck";
		
		return url;
	}		
	@RequestMapping("/enterSecure")
	public String enterSecure(String memId) throws Exception{
		String url = "admin/book/stupid/fingerCheck";
		System.out.println(memId);
		secureService.enterSecure(memId);
		return url;
	}		
	
	@RequestMapping("/getStupidBookNum")
	public String getStupidBookNum(String stupidNumArr, String camNum) throws Exception{
		String url = "admin/book/stupid/stupidBookAdd";
		System.out.println(camNum);
		StupidBookVO stupid = new StupidBookVO();
		int book_kdc = 0;
		String[] stupidNum = stupidNumArr.split(",");
		if(stupidNum != null) {
			for (String string : stupidNum) {
					book_kdc = Integer.parseInt(string);
					System.out.println(book_kdc);
					stupid.setBook_kdc(book_kdc);
					stupid.setSb_location(camNum);
					stupidBookService.registStupidBook(stupid);
			}
		}
		return url;
	}		
	
	/* ???????????? */
		
//	???????????? Start
	@RequestMapping("/donation")
	public ModelAndView donation(ModelAndView mnv) throws Exception{
		String url = "admin/book/etc/donation";
		
		List<DonationBookVO> dataList = etcManageService.getAllDonationBookList();
		
		mnv.addObject("dataList",dataList);
		mnv.setViewName(url);
		
		return mnv;
	}	
	
	@RequestMapping("/quickNewBook")
	public String quickNewBook() throws Exception{
		String url = "admin/book/etc/registDonation";
		
		return url;
	}
	
	@RequestMapping("/registDonationBook")
	public String registQuickNewBook(NewBookVO newbook, BookStockVO bookStockVO,
								String book_isbn ,Model model, RedirectAttributes rttr) throws Exception{
		String url = "admin/book/etc/resultPage";
//		System.out.println("nb????????? ?????????: "+ newbook.getNb_title());
		newBookService.registNewBookAllTable(newbook);
		
//		newBookService.updateWishState(newbook);
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
	
	@RequestMapping("/noRent")
	public ModelAndView noRent(BookCriteria cri, ModelAndView mnv) throws Exception{
		String url = "admin/book/etc/noRent";
		
//		cri.setPerPageNum(10);
		Map<String,Object> dataMap = etcManageService.getAllNoRentList(cri);
		
		
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}		
	
	@RequestMapping("/registNoRentBook")
	public String registForm() {
		String url = "admin/book/etc/registNoRentBook";
		
		return url;
	}
	
	@RequestMapping("/registLossBook")
	public String registLossBook() {
		String url = "admin/book/etc/registLossBook";
		
		return url;
	}
	
	@RequestMapping("/registLoss")
	public String registLoss(EtcManageVO noRentBook, Model model, RedirectAttributes rttr ) throws Exception{
		String url="redirect:/admin/bookManage/registLossBook.do";
		
		System.out.println("?????????isbn =" +noRentBook.getBook_isbn());
		System.out.println("????????????????????? =" +noRentBook.getState_code());
		
		etcManageService.regist(noRentBook);
		rttr.addFlashAttribute("from", "registLoss");
		
		return url;
	}
	
	@RequestMapping("/regist")
	public String regist(EtcManageVO noRentBook, Model model, RedirectAttributes rttr ) throws Exception{
		String url="redirect:/admin/bookManage/registNoRentBook.do";
		
		System.out.println("?????????isbn =" +noRentBook.getBook_isbn());
		System.out.println("????????????????????? =" +noRentBook.getState_code());
		
		etcManageService.regist(noRentBook);
		rttr.addFlashAttribute("from", "regist");
		
		return url;
	}
	
	@RequestMapping(value = "/searchBook", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<BookVO> searchBook(String book_isbn, Model model) throws Exception {
		List<BookVO> dataList = bookService.selectBookByBookIsbn(book_isbn);
		for (BookVO bookVO : dataList) {
			System.out.println(bookVO.getBook_isbn());
			System.out.println(bookVO.getBook_title());
			System.out.println(bookVO.getBook_publisher());
		}
		
		return dataList;
	}
	
	@RequestMapping("/lossBook")
	public ModelAndView lossBook(BookCriteria cri, ModelAndView mnv) throws Exception{
		String url = "admin/book/etc/lossBook";
		
		cri.setPerPageNum(10);
		Map<String, Object> dataMap = etcManageService.getLossBookList(cri);
		
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}		
	
	@RequestMapping("/getBook")
	public String getBook() throws Exception{
		String url = "admin/book/etc/getBook";
		
		return url;
	}		

	@RequestMapping("/registBook")
	public String registBook() throws Exception{
		String url = "admin/book/etc/registBook";
		
		return url;
	}		
	
}
