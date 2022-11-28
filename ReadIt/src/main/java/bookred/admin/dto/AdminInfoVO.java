package bookred.admin.dto;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;


public class AdminInfoVO {
	private int ad_no;
	private String mem_id;
	private int dp_no;
	private String ad_position;
	private String fingerprint;
	private String uploadpath;
	
	private MultipartFile imgFile;
	private byte[] img;
	
	
	public MultipartFile getImgFile() {
		return imgFile;
	}
	public void setImgFile(MultipartFile imgFile) {
		this.imgFile = imgFile;
	}
	public byte[] getImg() {
		return img;
	}
	public void setImg(byte[] img) {
		this.img = img;
	}
	
	
	
	public int getAd_no() {
		return ad_no;
	}
	public void setAd_no(int ad_no) {
		this.ad_no = ad_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getDp_no() {
		return dp_no;
	}
	public void setDp_no(int dp_no) {
		this.dp_no = dp_no;
	}
	public String getAd_position() {
		return ad_position;
	}
	public void setAd_position(String ad_position) {
		this.ad_position = ad_position;
	}
	public String getFingerprint() {
		return fingerprint;
	}
	public void setFingerprint(String fingerprint) {
		this.fingerprint = fingerprint;
	}
	public String getUploadpath() {
		return uploadpath;
	}
	public void setUploadpath(String uploadpath) {
		this.uploadpath = uploadpath;
	}
	
	
		
	

}
