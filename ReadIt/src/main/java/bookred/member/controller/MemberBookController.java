package bookred.member.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.josephoconnell.html.HTMLInputFilter;

import bookred.admin.command.Criteria;
import bookred.book.dto.BookVO;
import bookred.book.dto.WishBookVO;
import bookred.main.dto.EventVO;
import bookred.member.command.RentCriteria;
import bookred.member.dto.CartVO;
import bookred.member.dto.MemberVO;
import bookred.member.dto.RentBackVO;
import bookred.member.dto.RentBookVO;
import bookred.member.dto.ReviewVO;
import bookred.member.service.MyWishBookService;
import bookred.member.service.RentBackService;
import bookred.member.service.ReserveService;
import bookred.member.service.ReviewService;

@Controller
@RequestMapping("/main/myBook")
public class MemberBookController {
	
	@Autowired
	private RentBackService rentBackService;
	
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private ReserveService reserveService;
	
	@Autowired
	private MyWishBookService myWishBookService;
	
	
//	@RequestMapping("/myBookPage")
//	public String myBook()throws Exception{
//		String url="/member/myBook/myBookPage";
//		return url;
//	}
//	
	@RequestMapping(value="/rentList.do", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView bookRentList(RentCriteria cri, ModelAndView mnv, 
			HttpServletRequest req)throws Exception{
		String url="/member/myBook/booking/rentList";
		
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();
//		String mem_id = "aa";
		
		Map<String, Object> dataMap = rentBackService.getRentList(cri, mem_id);
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		return mnv;
		
	}
	
	@RequestMapping("/returnList")
	public ModelAndView returnList(RentCriteria cri, ModelAndView mnv, HttpServletRequest req)throws Exception{
		String url="/member/myBook/return/returnList";
		
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();
//		String mem_id="aa";
		
		Map<String, Object> dataMap = rentBackService.getAllReturnList(cri, mem_id);
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		
		return mnv;
	}
	
	@RequestMapping(value= "/reviewList", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView reviewList(RentCriteria cri, ModelAndView mnv, ReviewVO review, 
			HttpServletRequest req)throws Exception{
		String url="/member/myBook/review/reviewList";
		HttpSession session = req.getSession();
		
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();
		System.out.println("mem_id " + mem_id);
		System.out.println("rent_no" + review.getRent_no());
//		String mem_id = "aa";
		review.setMem_id(mem_id);
		review.setIs_return("Y");
		
		Map<String, Object> dataMap = reviewService.getReviewList(cri, review);
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	@RequestMapping(value = "/notReviewList",  method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView notReviewList(RentCriteria cri, ModelAndView mnv, ReviewVO review,
			HttpServletRequest req)throws Exception{
		String url="/member/myBook/review/notReviewList";
		
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();
		System.out.println("rent_no" + review.getRent_no());

//		String mem_id = "aa";
		review.setMem_id(mem_id);
		review.setIs_return("Y");
		
		Map<String, Object> dataMap = reviewService.getReviewList(cri, review);
		
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	@RequestMapping(value = "/reviewBookInfo", method = RequestMethod.POST,  produces = "application/json;charset=utf-8")
	@ResponseBody
	public  Map<String, Object> reviewBookInfo( ReviewVO review,  ModelAndView mnv)throws Exception{
		
		Map<String, Object> dataMap = reviewService.getRentnoTobookinfo(review);
		
		System.out.println(dataMap.get("rentBook").toString());
		
		return dataMap;
	}
	
	@RequestMapping(value ="/reviewRegist", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public String reviewRegist(ReviewVO review, HttpServletRequest request) throws Exception {
		String url = "redirect:/main/myBook/reviewList.do";
		
		System.out.println("????????? ?????????");
		reviewService.regist(review);
		// output
		
		return url;
	}
	
	
	@RequestMapping(value = "/reviewModify", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public String reviewModify(ReviewVO review, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/main/myBook/reviewList.do";

		System.out.println("data ?????????");
		reviewService.modify(review);
		
		rttr.addFlashAttribute("from", "modify");
		
		return url;
	}
	
	@RequestMapping(value = "/reviewRemove", method = RequestMethod.GET)
	public String reviewRemove(int rev_no, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/main/myBook/reviewList.do";

		reviewService.remove(rev_no);

		rttr.addFlashAttribute("from", "remove");
		rttr.addAttribute("rev_no", rev_no);
		System.out.println("remove data ?????? ??????");

		return url;
	}
	
	@RequestMapping("/waitingList")
	public  ModelAndView waitingList( HttpServletRequest req, ModelAndView mnv, RentCriteria cri )throws Exception{
		String url="/member/myBook/waiting/waitingList";
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();
		System.out.println("mem_id : " + mem_id);
		 Map<String, Object> dataMap = reserveService.getAllBookReserveList(cri, mem_id);
		
		 mnv.addObject("dataMap", dataMap);
		 mnv.setViewName(url);
		 
		return mnv;
	}
	@RequestMapping(value = "/waitingListCancel", method = RequestMethod.POST)
	public String waitingListCancel(int rm_no, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/main/myBook/waitingList.do";

		System.out.println("?????? ???????????? ?????????");
		System.out.println("rm_no : " + rm_no);
		reserveService.updateRMRentStatusToCancel(rm_no);
		System.out.println("?????? ?????? ??????");

		return url;
	}
	@RequestMapping(value = "/waitingBookList", method = RequestMethod.GET)
	public ModelAndView waitingBookList(String rm_no, String rm_status, HttpServletRequest request, Model model , ModelAndView mnv) throws Exception {
		String url = "member/myBook/waiting/waitingBookList";
		
		
		List<BookVO> bookListByRmISBN = new ArrayList<BookVO>();
		System.out.println(rm_no);
		int rm_noInt = Integer.parseInt(rm_no);
		System.out.println("int???" + rm_noInt);
		
		bookListByRmISBN = reserveService.getBookReserveListToBookInfo(rm_noInt);

		mnv.addObject("bookList", bookListByRmISBN);
		mnv.addObject("rm_no", rm_noInt);
		mnv.addObject("rm_status", rm_status);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping("/myWishBook")
	public ModelAndView myWishBook(HttpServletRequest req, ModelAndView mnv, RentCriteria cri)throws Exception{
		String url="/member/myBook/myWishBook/myWishBook";

		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();
		
		List<WishBookVO> dataList = myWishBookService.getMyWishBookList(mem_id);
		
		
		mnv.addObject("dataList", dataList);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping("/returnExtension")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> rentExtension( RentBookVO rentBook, RentCriteria cri , ModelAndView mnv, HttpServletRequest req)throws Exception{
		ResponseEntity<Map<String, Object>> entity = null;
		
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();
//		String mem_id = "aa";
		
		rentBackService.RentDateExtention(rentBook);
		
		Map<String, Object> dataMap = rentBackService.getRentList(cri, mem_id);
		entity = new ResponseEntity<Map<String, Object>>(dataMap, HttpStatus.OK);
		
		return entity;
	}
	
	
	
	
	
	
}

