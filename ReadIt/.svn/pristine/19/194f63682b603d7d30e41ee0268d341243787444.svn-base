package bookred.main.command;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import bookred.main.dto.EventVO;


public class EventRegistCommand {

	
	private String mem_id;
	private String title;
	private String content;
	private String writer;
	private List<MultipartFile> uploadFile;
	
	public String getTitle() {
		return title;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public List<MultipartFile> getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(List<MultipartFile> uploadFile) {
		this.uploadFile = uploadFile;
	}
	
	public EventVO toEventVO() {
		EventVO event = new EventVO();
		event.setEv_content(this.content); 
		event.setEv_title(this.title);; 
		event.setEv_writer(this.writer); 
		event.setMem_id(this.mem_id);
		
		return event;
	}
	
}

