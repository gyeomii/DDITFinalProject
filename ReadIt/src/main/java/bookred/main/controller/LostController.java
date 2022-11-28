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
import bookred.main.command.LostModifyCommand;
import bookred.main.command.LostRegistCommand;
import bookred.main.dto.LostVO;
import bookred.main.service.LostService;
@Controller
@RequestMapping("/main/board/lost")
public class LostController {
	@Autowired
	private LostService lostService;
	@Autowired
	private AttachDAO attachDAO;
	
	@Resource(name = "fileUploadPath")
	private String fileUploadPath;
	
	@RequestMapping("/list")
	public ModelAndView LostList(Criteria cri, ModelAndView mnv)throws Exception{
		String url="main/board/lost/list";
		
		Map<String, Object> dataMap = lostService.getLostList(cri);	
		mnv.addObject("dataMap",dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}

	@RequestMapping("/registForm")
	public String registForm() {
		String url = "main/board/lost/regist";
		return url;
	}

	@RequestMapping(value = "/regist", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public String regist(LostRegistCommand lostreq , RedirectAttributes rttr) throws Exception {
		String url = "redirect:/main/board/lost/list.do";

		String savePath = this.fileUploadPath;
		List<AttachVO> attachList = MultipartFileUploadResolver.fileUpload(lostreq.getUploadFile(), savePath);
		
		LostVO lost = lostreq.toLostVO();
		
		lost.setAttachList(attachList);
		lost.setLost_title(HTMLInputFilter.htmlSpecialChars(lost.getLost_title()));
		
		lostService.regist(lost);
		
		rttr.addFlashAttribute("from","regist");

		return url;
	}
	
	@RequestMapping("/detail")
	public ModelAndView detail (int lost_no,
								@RequestParam(defaultValue = "")String from,
								HttpServletRequest request,
								ModelAndView mnv)throws SQLException{
     String url = "main/board/lost/detail";
     
     LostVO lost = null;
     
     if(!from.equals("list")) {
    	 lost = lostService.getLostForModify(lost_no);
     }else {
    	 lost = lostService.getLost(lost_no);
    	 url="redirect:/main/board/lost/detail.do?lost_no="+lost_no;
     }
     mnv.addObject("lost",lost);
     mnv.setViewName(url);
     
     return mnv;
	}
	
	@RequestMapping("/getFile")
	public String getFile(int ano, HttpServletRequest request, HttpServletResponse response, Model model)
			throws Exception {

		String url = "downloadFile";

		AttachVO attach = lostService.getAttachByAno(ano);

		model.addAttribute("savedPath", attach.getUploadPath());
		model.addAttribute("fileName", attach.getFileName());

		return url;
	}
	
	@RequestMapping("/modifyForm")
	public ModelAndView modifyForm(int lost_no, ModelAndView mnv) throws Exception {
		String url = "main/board/lost/modify";

		LostVO lost = lostService.getLostForModify(lost_no);
		mnv.addObject("lost", lost);
		mnv.setViewName(url);

		return mnv;

	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPost(LostModifyCommand modifyReq, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/main/board/lost/detail.do";


		if (modifyReq.getDeleteFile() != null && modifyReq.getDeleteFile().size() > 0) {
			for (Integer ano : modifyReq.getDeleteFile()) {
				AttachVO attach = attachDAO.selectAttachByAno(ano);
				File deleteFile = new File(attach.getUploadPath(), attach.getFileName());
				if (deleteFile.exists()) {
					deleteFile.delete(); // File 삭제
				}
				attachDAO.deleteAttach(ano); // DB 삭제
			}
		}
		// 파일 저장
		String savePath = this.fileUploadPath;
		List<AttachVO> attachList = MultipartFileUploadResolver.fileUpload(modifyReq.getUploadFile(), savePath);
		
		LostVO lost = modifyReq.toLostVO();
		
		lost.setLost_title(HTMLInputFilter.htmlSpecialChars(lost.getLost_title()));
		lost.setAttachList(attachList);
		lostService.modify(lost);
		rttr.addAttribute("lost_no", lost.getLost_no());
		rttr.addFlashAttribute("from", "modify");
		
		return url;
	}

	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(int lost_no, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/main/board/lost/detail.do";

		lostService.remove(lost_no);
		System.out.println(lost_no);
		rttr.addFlashAttribute("from", "remove");
		rttr.addAttribute("lost_no", lost_no);
		
		return url;
		
	}
}