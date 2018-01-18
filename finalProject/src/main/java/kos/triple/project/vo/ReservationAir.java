package kos.triple.project.vo;

import java.sql.Timestamp;

public class ReservationAir {
	
	private int res_airNo;
	private String mem_id;
	private int memSize;
	private String paymethod;
	private int price;
	private String ages;
	private String seatLevel;
	private String airPlaneNo;
	private Timestamp resTime;
	
	
	public ReservationAir() {

	}


	public int getRes_airNo() {
		return res_airNo;
	}


	public void setRes_airNo(int res_airNo) {
		this.res_airNo = res_airNo;
	}


	public String getMem_id() {
		return mem_id;
	}


	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}


	public int getMemSize() {
		return memSize;
	}


	public void setMemSize(int memSize) {
		this.memSize = memSize;
	}


	public String getPaymethod() {
		return paymethod;
	}


	public void setPaymethod(String paymethod) {
		this.paymethod = paymethod;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getAges() {
		return ages;
	}


	public void setAges(String ages) {
		this.ages = ages;
	}


	public String getSeatLevel() {
		return seatLevel;
	}


	public void setSeatLevel(String seatLevel) {
		this.seatLevel = seatLevel;
	}


	public String getAirPlaneNo() {
		return airPlaneNo;
	}


	public void setAirPlaneNo(String airPlaneNo) {
		this.airPlaneNo = airPlaneNo;
	}


	public Timestamp getResTime() {
		return resTime;
	}


	public void setResTime(Timestamp resTime) {
		this.resTime = resTime;
	}
	
	
}
