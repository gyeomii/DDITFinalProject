package bookred.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import bookred.admin.command.Criteria;

@Controller
@RequestMapping("/main/info")
public class InfoFacilityController {

	@RequestMapping("/facility")
	public String noticeList(Criteria cri, Model model) throws Exception {
		String url = "main/info/facility";

		return url;
	}

}
