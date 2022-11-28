package bookred.main.command;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import bookred.main.dto.EventVO;

public class EventModifyCommand {
	private int ev_no = 0;
	private String ev_title = "";
	private String ev_writer = "";
	private String ev_content = "";
	private Date ev_updatedate;
	private List<MultipartFile> uploadFile;
	private List<Integer> deleteFile;

	
	public int getEv_no() {
		return ev_no;
	}


	public void setEv_no(int ev_no) {
		this.ev_no = ev_no;
	}


	public String getEv_title() {
		return ev_title;
	}


	public void setEv_title(String ev_title) {
		this.ev_title = ev_title;
	}


	public String getEv_writer() {
		return ev_writer;
	}


	public void setEv_writer(String ev_writer) {
		this.ev_writer = ev_writer;
	}


	public String getEv_content() {
		return ev_content;
	}


	public void setEv_content(String ev_content) {
		this.ev_content = ev_content;
	}


	public Date getEv_updatedate() {
		return ev_updatedate;
	}


	public void setEv_updatedate(Date ev_updatedate) {
		this.ev_updatedate = ev_updatedate;
	}


	public List<MultipartFile> getUploadFile() {
		return uploadFile;
	}


	public void setUploadFile(List<MultipartFile> uploadFile) {
		this.uploadFile = uploadFile;
	}


	public List<Integer> getDeleteFile() {
		return deleteFile;
	}


	public void setDeleteFile(List<Integer> deleteFile) {
		this.deleteFile = deleteFile;
	}


	public EventVO toEventVO() {
		EventVO event = new EventVO();
		event.setEv_no(ev_no);
		event.setEv_title(ev_title);
		event.setEv_writer(ev_writer);
		event.setEv_content(ev_content);
		event.setEv_updatedate(new Date());
		return event;
	}
}
