package bookred.admin.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import bookred.admin.service.DrivethruService;
import bookred.member.dto.BkReserveVO;
import bookred.member.dto.RMVO;

@Controller
@RequestMapping("/admin")
public class DriveThruController {
	
	@Autowired
	DrivethruService drivethruService;
	
	@RequestMapping(value = "/driveThrough/checkCar")
	@ResponseBody
	public List<RMVO> getRmNoListbycar(String dt_car_no) throws Exception{
		List<RMVO> rmList = drivethruService.getRmNoListbycar(dt_car_no);
		
		return rmList;
	}
	
	@RequestMapping(value = "/driveThrough/memAndRezBookList", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getMemAndRezBookList(@RequestBody RMVO rmvo) throws Exception{
		System.out.println(rmvo);
		Map<String, Object> datamap =  drivethruService.getMemAndBookReserveInfo(rmvo);
		return datamap;
	}	
	
	
	@RequestMapping(value = "/driveThrough/driveRent", method = RequestMethod.POST)
	@ResponseBody
	public String driveRent(@RequestBody List<BkReserveVO> bkList ) throws Exception{
		
		System.out.println(bkList);
		drivethruService.registRent(bkList);
		
		return "good";
	}		
	

}
