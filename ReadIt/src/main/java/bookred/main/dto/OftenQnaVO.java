package bookred.main.dto;

import java.util.Date;
import java.util.List;

import bookred.common.dto.AttachVO;

public class OftenQnaVO {

	private int oq_no = 28;
	private String mem_id = "";
	private String oq_title;
	private String oq_writer = "";
	private String oq_content = "";
	private Date oq_regdate;
	private int oq_hits = 0;
	private Date oq_updatedate;
	private int group_code = 0;
	private List<AttachVO> attachList;
 
	
	public List<AttachVO> getAttachList() {
		return attachList;
	}

	public void setAttachList(List<AttachVO> attachList) {
		this.attachList = attachList;
	}

	public int getOq_no() {
		return oq_no;
	}

	public int getGroup_code() {
		return group_code;
	}

	public void setGroup_code(int group_code) {
		this.group_code = group_code;
	}

	public void setOq_no(int oq_no) {
		this.oq_no = oq_no;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getOq_title() {
		return oq_title;
	}

	public void setOq_title(String oq_title) {
		this.oq_title = oq_title;
	}

	public String getOq_writer() {
		return oq_writer;
	}

	public void setOq_writer(String oq_writer) {
		this.oq_writer = oq_writer;
	}

	public String getOq_content() {
		return oq_content;
	}

	public void setOq_content(String oq_content) {
		this.oq_content = oq_content;
	}

	public Date getOq_regdate() {
		return oq_regdate;
	}

	public void setOq_regdate(Date oq_regdate) {
		this.oq_regdate = new Date();
	}

	public int getOq_hits() {
		return oq_hits;
	}

	public void setOq_hits(int oq_hits) {
		this.oq_hits = oq_hits;
	}

	public Date getOq_updatedate() {
		return oq_updatedate;
	}

	public void setOq_updatedate(Date oq_updatedate) {
		this.oq_updatedate = oq_updatedate;
	}

}
