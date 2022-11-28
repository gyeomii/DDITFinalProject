package bookred.main.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bookred.admin.command.Criteria;
import bookred.admin.command.PageMaker;
import bookred.common.controller.MakeFileName;
import bookred.common.dao.AttachDAO;
import bookred.common.dao.AttachEDAO;
import bookred.common.dto.AttachVO;
import bookred.main.dao.EventDAO;
import bookred.main.dto.EventVO;

public class EventServiceImpl implements EventService {

	private EventDAO eventDAO;
	
	public void setEventDAO(EventDAO eventDAO) {
		this.eventDAO = eventDAO;
	}
	
	private AttachDAO attachDAO;

	public void setAttachDAO(AttachDAO attachDAO) {
		this.attachDAO = attachDAO;
	
	}
	
	private AttachEDAO attachEDAO;
	public void setAttachEDAO(AttachEDAO attachEDAO) {
		this.attachEDAO = attachEDAO;
	}
	
	@Override
	public Map<String, Object> getEventList(Criteria cri) throws SQLException {

		Map<String, Object> dataMap = new HashMap<String, Object>();		

		List<EventVO> eventList = eventDAO.selectEventList(cri);
		
		int totalCount = eventDAO.selectEventListCount(cri);
		
		if(eventList != null) {
			for (EventVO event : eventList) {
				addAttachList(event);
			}
		}
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("eventList", eventList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public EventVO getEvent(int ev_no) throws SQLException {
		EventVO event = eventDAO.selectEventByEvNo(ev_no);
		/* eventDAO.increaseViewCount(ev_no); */
		addAttachList(event);
		if(event!=null && event.getAttachList()!=null) {
			for(AttachVO attach : event.getAttachList()) {
				String originalFileName =MakeFileName.parseFileNameFromUUID(attach.getFileName(),"\\$\\$"); 
				attach.setFileName(originalFileName);					
			}
		}
		
		return event;
	}

	@Override
	public EventVO getEventForModify(int ev_no) throws SQLException {
		EventVO event = eventDAO.selectEventByEvNo(ev_no);
		addAttachList(event);
		
		if(event!=null && event.getAttachList()!=null) {
			for(AttachVO attach : event.getAttachList()) {
				String originalFileName =MakeFileName.parseFileNameFromUUID(attach.getFileName(),"\\$\\$"); 
				attach.setFileName(originalFileName);					
			}
		}
		return event;
	}

	@Override
	public void regist(EventVO event) throws SQLException {
		int ev_no = eventDAO.selectEventSeqNext();
		event.setEv_no(ev_no);
		eventDAO.insertEvent(event);
		
		if (event.getAttachList() != null) {
			for (AttachVO attach : event.getAttachList()) {
				attach.setEv_no(ev_no);
				attach.setAttacher(event.getEv_writer());
				System.out.println(attach.getEv_no());
				attachEDAO.insertAttachE(attach);
			}
		}

	}

	@Override
	public void modify(EventVO event) throws SQLException {
		eventDAO.updateEvent(event);
		
		if (event.getAttachList() != null) {
			for (AttachVO attach : event.getAttachList()) {
				attach.setEv_no(event.getEv_no());
				attach.setAttacher(event.getEv_writer());
				attachEDAO.insertAttachE(attach);
			}
		}
	}

	@Override
	public void remove(int ev_no) throws SQLException {
		attachEDAO.deleteAllAttachE(ev_no);
		eventDAO.deleteEvent(ev_no);
		
	}

	@Override
	public AttachVO getAttachByAno(int ano) throws SQLException {

		AttachVO attach = attachDAO.selectAttachByAno(ano);

		return attach;
	}
	private void addAttachList(EventVO event) throws SQLException {

		if (event == null) {
			return;
		}

		int ev_no = event.getEv_no();
		List<AttachVO> attachList = attachEDAO.selectAttachE(ev_no);
		event.setAttachList(attachList);
	}
	

	@Override
	public void removeAttachByAno(int ano) throws SQLException {

		attachDAO.deleteAttach(ano);

	}
	
}
