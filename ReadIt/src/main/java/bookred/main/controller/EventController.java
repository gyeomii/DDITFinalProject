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
import bookred.main.command.EventModifyCommand;
import bookred.main.command.EventRegistCommand;
import bookred.main.dto.EventVO;
import bookred.main.service.EventService;

@Controller
@RequestMapping("/main/board/event")
public class EventController {
	@Autowired
	private EventService eventService;
	
	@Resource(name = "fileUploadPath")
	private String fileUploadPath;
	
	@Autowired
	private AttachDAO attachDAO;
	
	@RequestMapping("/list")
	public String EventList(Criteria cri, Model model)throws Exception{
		String url="main/board/event/list";
		
		Map<String, Object> dataMap = eventService.getEventList(cri);	
		model.addAttribute("dataMap",dataMap);
		
		return url;
	}
	@RequestMapping("/registForm")
	public String registForm() {
		String url = "main/board/event/regist";
		return url;
	}

	@RequestMapping(value ="/regist", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public String regist(RedirectAttributes rttr, EventRegistCommand registReq, HttpServletRequest request) throws Exception {
		String url = "redirect:/main/board/event/list.do";


		String savePath = this.fileUploadPath;
		List<AttachVO> attachList = MultipartFileUploadResolver.fileUpload(registReq.getUploadFile(), savePath);

		EventVO event = registReq.toEventVO();

		event.setAttachList(attachList);
		event.setEv_title(HTMLInputFilter.htmlSpecialChars(event.getEv_title()));

		eventService.regist(event);
		// output
		rttr.addFlashAttribute("from", "regist");
		return url;
	}

	@RequestMapping("/detail")
	public ModelAndView detail (int ev_no,
								@RequestParam(defaultValue = "")String from,
								HttpServletRequest request,
								ModelAndView mnv)throws SQLException{
     String url = "main/board/event/detail";
     
     EventVO event = null;
     
     if(!from.equals("list")) {
    	 event = eventService.getEventForModify(ev_no);
     }else {
    	 event = eventService.getEvent(ev_no);
    	 url="redirect:/main/board/event/detail.do?ev_no="+ev_no;
     }
     mnv.addObject("event",event);
     mnv.setViewName(url);
     
     return mnv;
	}
	
	@RequestMapping("/getFile")
	public String getFile(int ano, HttpServletRequest request, HttpServletResponse response, Model model)
			throws Exception {

		String url = "downloadFile";

		AttachVO attach = eventService.getAttachByAno(ano);

		model.addAttribute("savedPath", attach.getUploadPath());
		model.addAttribute("fileName", attach.getFileName());

		return url;
	}
	
	@RequestMapping("/modifyForm")
	public ModelAndView modifyForm(int ev_no, ModelAndView mnv) throws Exception {
		String url = "main/board/event/modify";

		EventVO event = eventService.getEventForModify(ev_no);
		mnv.addObject("event", event);
		mnv.setViewName(url);

		return mnv;

	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPost(EventModifyCommand eventreq, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/main/board/event/detail.do";

		if (eventreq.getDeleteFile() != null && eventreq.getDeleteFile().size() > 0) {
			for (Integer ano : eventreq.getDeleteFile()) {
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
		List<AttachVO> attachList = MultipartFileUploadResolver.fileUpload(eventreq.getUploadFile(), savePath);
		
		EventVO event = eventreq.toEventVO();
		
		event.setEv_title(HTMLInputFilter.htmlSpecialChars(event.getEv_title()));
		event.setAttachList(attachList);
		eventService.modify(event);
		rttr.addAttribute("ev_no", event.getEv_no());
		rttr.addFlashAttribute("from", "modify");

		return url;
	}

	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(int ev_no, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/main/board/event/detail.do";

		eventService.remove(ev_no);

		rttr.addFlashAttribute("from", "remove");
		rttr.addAttribute("ev_no", ev_no);

		return url;
	}
}