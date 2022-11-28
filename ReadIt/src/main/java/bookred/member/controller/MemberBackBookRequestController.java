package bookred.member.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import bookred.member.command.RentCriteria;
import bookred.member.dto.RentBackVO;
import bookred.member.service.RentBackService;

@Controller
@RequestMapping("/main/myBook/returnList")
public class MemberBackBookRequestController {
	
	@Autowired
	private RentBackService rentBackService;
	
	@RequestMapping(value = "/returnForm", method = RequestMethod.GET)
	public ModelAndView returnForm(String[] bookNo, HttpServletRequest request, Model model, RentCriteria cri, ModelAndView mnv) throws Exception {
		String url = "member/myBook/return/returnForm";
		
		HttpSession session = request.getSession();
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<RentBackVO> returnBookNoListInt = new ArrayList<RentBackVO>();
		
		for (String book_no : bookNo) {
			
			int book_noToInt = Integer.parseInt(book_no);
			System.out.println("int임" + book_noToInt);
			
			RentBackVO rentBackVO = rentBackService.getSelectedRentBookList(book_noToInt);
			returnBookNoListInt.add(rentBackVO);
		}
//		System.out.println(returnBookNoListInt.get(0));
//		System.out.println(returnBookNoListInt.get(1));
		
		
		mnv.addObject("returnBookList", returnBookNoListInt);
		mnv.setViewName(url);
		
		return mnv;
	}
//	채희진+김성겸 유산....
	/*
	 * @RequestMapping(value = "/returnForm", method = RequestMethod.POST, produces
	 * = "application/json;charset=utf-8") public String returnForm(@RequestBody
	 * Map<String, RentBackVO> tdArr, HttpServletRequest request, RedirectAttributes
	 * rttr) throws Exception { String url = "member/myBook/return/returnForm";
	 * //"member/myBook/return/returnForm"
	 * System.out.println(tdArr.get("0").getBook_no());
	 * 
	 * 
	 * 
	 * return url; }
	 */	
	
	
	
	
	
}

