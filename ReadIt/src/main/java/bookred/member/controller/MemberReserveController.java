package bookred.member.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import bookred.book.dto.BookVO;
import bookred.common.dto.LockerMasterVO;
import bookred.member.dto.CouponVO;
import bookred.member.dto.MemberVO;
import bookred.member.service.ReserveService;

@Controller
@RequestMapping("/main/myInfo")
public class MemberReserveController {

	@Autowired
	private ReserveService reserveService;

	@RequestMapping("/fieldReserve")
	public String fieldReserve(Model model, String mem_id, String isbn) throws Exception {
		String url = "/member/myInfo/cart/reserve/fieldReserve";
		System.out.println(isbn);
		System.out.println(mem_id);

		String[] isbnList = isbn.split(",");

		List<BookVO> bookList = reserveService.getCartBookList(isbnList);
		for (BookVO bookVO : bookList) {
			System.out.println(bookVO.getBook_isbn());
		}
		model.addAttribute("bookList", bookList);
		
		return url;
	}

	@RequestMapping("doFieldReserve")
	public String doFieldReserve(Model model, String mem_id, String isbn, String rmdate, String want_date, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/main/myInfo/bookCart.do";

		System.out.println(want_date);
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date date = formatter.parse(want_date);
		Date rm_date = formatter.parse(rmdate);
		System.out.println(date);
		String[] isbnList = isbn.split(",");
		int rent_code = 0;

		reserveService.registFieldReserve(mem_id, rent_code, rm_date, date, isbnList);
		rttr.addFlashAttribute("from", "reserve");

		return url;
	}

	@RequestMapping("/driveReserve")
	public String driveReserve(Model model, String mem_id, String isbn) throws Exception {
		String url = "/member/myInfo/cart/reserve/driveReserve";
		System.out.println(isbn);
		System.out.println(mem_id);
		String[] isbnList = isbn.split(",");

		List<BookVO> bookList = reserveService.getCartBookList(isbnList);
		for (BookVO bookVO : bookList) {
			System.out.println(bookVO.getBook_isbn());
		}
		model.addAttribute("bookList", bookList);
		return url;
	}

	@RequestMapping("doDriveReserve")
	public String doDriveReserve(Model model, String mem_id, String rmdate, String want_date, String isbn, String dt_car_no, RedirectAttributes rttr)
			throws Exception {
		String url = "redirect:/main/myInfo/bookCart.do";
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date wantdate = formatter.parse(want_date);
		Date rm_date = formatter.parse(rmdate);

		String[] isbnList = isbn.split(",");
		int rent_code = 2;

		reserveService.registDriveReserve(mem_id, rent_code, rm_date, wantdate, isbnList, dt_car_no);
		rttr.addFlashAttribute("from", "reserve");
		return url;
	}

	@RequestMapping("/lockerReserve")
	public String lockerReserve(Model model, String mem_id, String isbn) throws Exception {
		String url = "/member/myInfo/cart/reserve/lockerReserve";

		Map<String, Object> dataMap = new HashMap<String, Object>();
		System.out.println(isbn);
		System.out.println(mem_id);
		String[] isbnList = isbn.split(",");

		List<BookVO> bookList = reserveService.getCartBookList(isbnList);
		for (BookVO bookVO : bookList) {
			System.out.println(bookVO.getBook_isbn());
		}

		List<LockerMasterVO> lockerList = reserveService.getLockerList();

		dataMap.put("bookList", bookList);
		dataMap.put("lockerList", lockerList);
		model.addAttribute("dataMap", dataMap);
		return url;
	}

	@RequestMapping("doLockerReserve")
	public String doLockerReserve(Model model, String mem_id, String isbn, String locker_num, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/main/myInfo/bookCart.do";

		String[] isbnList = isbn.split(",");

		int rent_code = 3;

		reserveService.registLockerReserve(mem_id, rent_code, isbnList, locker_num);
		rttr.addFlashAttribute("from", "reserve");

		return url;
	}

	@RequestMapping("/deliveryReserve")
	public String deliveryReserve(HttpServletRequest req, Model model, String isbn) throws Exception {
		String url = "/member/myInfo/cart/reserve/deliveryReserve";
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();
		
		String[] isbnList = isbn.split(",");

		List<BookVO> bookList = reserveService.getCartBookList(isbnList);
		for (BookVO bookVO : bookList) {
			System.out.println(bookVO.getBook_isbn());
		}
		
		List<CouponVO> couponAvailableList = reserveService.selectAvailableCoupons(mem_id);
		model.addAttribute("couponAvailableList", couponAvailableList);
		model.addAttribute("bookList", bookList);
		
		return url;
	}
	
	@RequestMapping("/doDeliveryReserve")
	public String doDeliveryReserve(HttpServletRequest req,String isbn,String rm_date,String tel, String addressResult, String address_detail, int isCoupon, int cp_no, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/main/myInfo/bookCart.do";
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date rmdate = formatter.parse(rm_date);
		System.out.println(rmdate);
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();
		String[] isbnList = isbn.split(",");
		int rent_code = 1;
		
		reserveService.registDeliveryReserve(mem_id, rent_code, rmdate, tel, addressResult, address_detail, isCoupon, isbnList, cp_no);
		rttr.addFlashAttribute("from", "reserve");
		return url;
	}

}
