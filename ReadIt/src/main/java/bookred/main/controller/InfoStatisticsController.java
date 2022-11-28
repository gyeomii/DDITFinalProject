package bookred.main.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bookred.admin.command.Criteria;
import bookred.main.dto.StatisticsVO;
import bookred.member.service.RentBackService;

@Controller
@RequestMapping("/main/info")
public class InfoStatisticsController {
	@Autowired
	private RentBackService rentBackService;
	
	@RequestMapping("/statistics")
	public String noticeList(Criteria cri, Model model) throws Exception {
		String url = "main/info/statistics";

		return url;
	}
	@RequestMapping(value="/mainLibraryStatistics", produces = "application/json;charset=utf-8")
	@ResponseBody
	public Map<String, Object> mainStatistics() throws Exception{
		Map<String, Object> dataMap = rentBackService.getMainChart();
		List<StatisticsVO> countList = rentBackService.getBookCountForStatistics();
		List<Integer> bookCountList = new ArrayList<Integer>();
		List<String> monthList = new ArrayList<String>();
		for (StatisticsVO statisticsVO : countList) {
			int cnt = statisticsVO.getCnt();
			String month = statisticsVO.getDay();
			bookCountList.add(cnt);
			monthList.add(month);
		}
		dataMap.put("bookCountList", bookCountList);
		dataMap.put("monthList", monthList);
		return dataMap;
	}
}
