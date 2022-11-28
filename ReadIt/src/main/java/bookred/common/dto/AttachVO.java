package bookred.common.dto;

import java.util.Date;

public class AttachVO {
	
	
	private int ano;
	private String uploadPath;
	private String fileName;
	private String fileType;
	private String attacher;
	private Date regdate = new Date();
	private int notice_no;
	private int lost_no;
	private int ev_no;
	private int oq_no;
	private int vb_no;
	public int getAno() {
		return ano;
	}
	public void setAno(int ano) {
		this.ano = ano;
	}
	public String getUploadPath() {
		return uploadPath;
	}
	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileType() {
		return fileType;
	}
	public void setFileType(String fileType) {
		this.fileType = fileType;
	}
	public String getAttacher() {
		return attacher;
	}
	public void setAttacher(String attacher) {
		this.attacher = attacher;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getNotice_no() {
		return notice_no;
	}
	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}
	public int getLost_no() {
		return lost_no;
	}
	public void setLost_no(int lost_no) {
		this.lost_no = lost_no;
	}
	public int getEv_no() {
		return ev_no;
	}
	public void setEv_no(int ev_no) {
		this.ev_no = ev_no;
	}
	public int getOq_no() {
		return oq_no;
	}
	public void setOq_no(int oq_no) {
		this.oq_no = oq_no;
	}
	public int getVb_no() {
		return vb_no;
	}
	public void setVb_no(int vb_no) {
		this.vb_no = vb_no;
	}
	
	
	
}
