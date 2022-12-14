package bookred.main.controller;

import java.io.File;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.josephoconnell.html.HTMLInputFilter;

import bookred.admin.command.Criteria;
import bookred.common.command.MultipartFileUploadResolver;
import bookred.common.dao.AttachDAO;
import bookred.common.dto.AttachVO;
import bookred.main.command.OftenQnaModifyCommand;
import bookred.main.command.OftenQnaRegistCommand;
import bookred.main.dto.OftenQnaVO;
import bookred.main.service.OftenQnaService;

@Controller
@RequestMapping("/main/board/faq")
public class OftenQnaController {

	@Autowired
	private OftenQnaService oftenQnaService;
	@Autowired
	private AttachDAO attachDao;
	
	/*
	 * @RequestMapping("/list") public ModelAndView oftenQnaList(Criteria cri,
	 * ModelAndView mnv) throws Exception { String url = "main/board/faq/list";
	 * 
	 * Map<String, Object> dataMap = oftenQnaService.getOftenQnaList(cri);
	 * mnv.addObject("dataMap", dataMap); mnv.setViewName(url); return mnv; }
	 */
	
	
	@RequestMapping("/faqList")
	public ModelAndView faqList(Criteria cri,ModelAndView mnv)throws Exception{
		String url ="main/board/faq/faqList";
		
		Map<String, Object> dataMap = oftenQnaService.getOftenQnaList(cri);
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		return mnv;
		
	}
	

	@RequestMapping("/registForm")
	public String registForm() {
		String url = "main/board/faq/regist";
		return url;
	}

	@Resource(name = "fileUploadPath")
	private String fileUploadPath;
	
	
	@RequestMapping(value = "/regist", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public String regist(OftenQnaRegistCommand registReq, RedirectAttributes rttr, HttpServletRequest request) 
			throws Exception {
		String url = "redirect:/main/board/faq/faqList.do";

		String savePath = this.fileUploadPath;
		List<AttachVO> attachList = MultipartFileUploadResolver.fileUpload(registReq.getUploadFile(), savePath);
		
		OftenQnaVO oftenQna = registReq.toOftenQnaVO();

		oftenQna.setAttachList(attachList);
		oftenQna.setOq_title(HTMLInputFilter.htmlSpecialChars(oftenQna.getOq_title()));

		oftenQnaService.regist(oftenQna);

		rttr.addFlashAttribute("from", "regist");

		return url;
	}
	
	@RequestMapping("detail")
	public ModelAndView detail(int oq_no,
							@RequestParam(defaultValue = "") String from,
							HttpServletRequest request,
							ModelAndView mnv) throws SQLException {

		String url = "main/board/faq/detail";
		
		OftenQnaVO oftenQna = null;
		
		if(!from.equals("list")) {
			oftenQna = oftenQnaService.getOftenQnaForModify(oq_no);
		}else {
			oftenQna = oftenQnaService.getOftenQna(oq_no);
			url = "redirect:/main/board/faq/detail.do?oq_no="+oq_no;
		}
		mnv.addObject("oftenQna",oftenQna);
		mnv.setViewName(url);
		
		return mnv;
	}

	@RequestMapping("/getFile")
	public String getFile(int ano, HttpServletRequest request, HttpServletResponse response, Model model)
			throws Exception{
		String url = "downloadFile";
	
		AttachVO attach = oftenQnaService.getAttachByAno(ano);
		
		model.addAttribute("savedPath", attach.getUploadPath());
		model.addAttribute("fileName", attach.getFileName());
		
		return url;
	}
	
	
	@RequestMapping("/modifyForm")
	public ModelAndView modifyForm(int oq_no, ModelAndView mnv) throws Exception {
		String url = "main/board/faq/modify";

		OftenQnaVO oftenQna = oftenQnaService.getOftenQnaForModify(oq_no);  
		mnv.addObject("oftenQna", oftenQna);
		mnv.setViewName(url);

		return mnv;

	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPost(OftenQnaModifyCommand modifyReq, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/main/board/faq/detail.do";

		if (modifyReq.getDeleteFile() != null && modifyReq.getDeleteFile().size() >0) {
			for (Integer ano : modifyReq.getDeleteFile()) {
				AttachVO attach = attachDao.selectAttachByAno(ano);
				File deleteFile = new File(attach.getUploadPath(), attach.getFileName());
				if (deleteFile.exists()) {
					deleteFile.delete();
				}
				attachDao.deleteAttach(ano);
			}
		}
		
		String savePath = this.fileUploadPath;
		List<AttachVO> attachList = MultipartFileUploadResolver.fileUpload(modifyReq.getUploadFile(), savePath);
		
		OftenQnaVO oftenQna = modifyReq.toOftenQnaVO();
		
		oftenQna.setOq_title(HTMLInputFilter.htmlSpecialChars(oftenQna.getOq_title()));
		oftenQna.setAttachList(attachList);
		oftenQnaService.modify(oftenQna);
		rttr.addAttribute("oq_no",oftenQna.getOq_no());
		rttr.addFlashAttribute("from", "modify");

		return url;
	}
		

	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(int oq_no, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/main/board/faq/detail.do";

		oftenQnaService.remove(oq_no);
		rttr.addFlashAttribute("from", "remove");
		rttr.addAttribute("oq_no", oq_no);

		return url;
	}

}
