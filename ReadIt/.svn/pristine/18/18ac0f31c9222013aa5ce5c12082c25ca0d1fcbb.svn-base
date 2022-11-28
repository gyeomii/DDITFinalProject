package bookred.main.command;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import bookred.main.dto.NoticeVO;

public class NoticeRegistCommand {
	private String mem_id;
	private String title;
	private String content;
	private String writer;
	private int is_top;
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
	
	public NoticeVO toNoticeVO() {
		NoticeVO notice = new NoticeVO();
		notice.setNotice_content(this.content); 
		notice.setNotice_title(this.title);; 
		notice.setNotice_writer(this.writer); 
		notice.setMem_id(this.mem_id);
		notice.setIs_top(this.is_top);
		
		return notice;
	}
	public int getIs_top() {
		return is_top;
	}
	public void setIs_top(int is_top) {
		this.is_top = is_top;
	}
	
}
