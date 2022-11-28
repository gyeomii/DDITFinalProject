package bookred.member.dto;

import java.util.Date;

public class PayVO {
	
	private int pay_no;
	private String mem_id;
	private int is_pay_cp;
	private int pay_price;
	private Date pay_date;
	private String tracing_no;
	private int cp_no;
	private int dv_no;
	private int is_pay_cancel;
	private String pay_order;
	
	public String getPay_order() {
		return pay_order;
	}
	public void setPay_order(String pay_order) {
		this.pay_order = pay_order;
	}
	public int getPay_no() {
		return pay_no;
	}
	public void setPay_no(int pay_no) {
		this.pay_no = pay_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getIs_pay_cp() {
		return is_pay_cp;
	}
	public void setIs_pay_cp(int is_pay_cp) {
		this.is_pay_cp = is_pay_cp;
	}
	public int getPay_price() {
		return pay_price;
	}
	public void setPay_price(int pay_price) {
		this.pay_price = pay_price;
	}
	public Date getPay_date() {
		return pay_date;
	}
	public void setPay_date(Date pay_date) {
		this.pay_date = pay_date;
	}
	public String getTracing_no() {
		return tracing_no;
	}
	public void setTracing_no(String tracing_no) {
		this.tracing_no = tracing_no;
	}
	public int getCp_no() {
		return cp_no;
	}
	public void setCp_no(int cp_no) {
		this.cp_no = cp_no;
	}
	public int getDv_no() {
		return dv_no;
	}
	public void setDv_no(int dv_no) {
		this.dv_no = dv_no;
	}
	public int getIs_pay_cancel() {
		return is_pay_cancel;
	}
	public void setIs_pay_cancel(int is_pay_cancel) {
		this.is_pay_cancel = is_pay_cancel;
	}
	@Override
	public String toString() {
		return "PayVO [pay_no=" + pay_no + ", mem_id=" + mem_id + ", is_pay_cp=" + is_pay_cp + ", pay_price="
				+ pay_price + ", pay_date=" + pay_date + ", tracing_no=" + tracing_no + ", cp_no=" + cp_no + ", dv_no="
				+ dv_no + ", is_pay_cancel=" + is_pay_cancel + ", getPay_no()=" + getPay_no() + ", getMem_id()="
				+ getMem_id() + ", getIs_pay_cp()=" + getIs_pay_cp() + ", getPay_price()=" + getPay_price()
				+ ", getPay_date()=" + getPay_date() + ", getTracing_no()=" + getTracing_no() + ", getCp_no()="
				+ getCp_no() + ", getDv_no()=" + getDv_no() + ", getIs_pay_cancel()=" + getIs_pay_cancel()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

}
