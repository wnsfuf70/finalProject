package kos.triple.project.vo;

import java.sql.Timestamp;

public class AirReservationDetailVO {
	
	private int airResNo;
	private Timestamp resTime;
	
	private String mem_id;

	private String payMethod;
	private int price;
	private String airPlaneNo;

	private int adult;
	private int baby;
	private int student;
	private int memSize;

	private String seatLevel_adult;
	private String seatLevel_student;
	private String seatLevel_baby;
	
	private String startLocation; 
	private String endLocation;

	
	

	
	
	public AirReservationDetailVO() {

	}

	public int getAirResNo() {
		return airResNo;
	}

	public void setAirResNo(int airResNo) {
		this.airResNo = airResNo;
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

	public String getPayMethod() {
		return payMethod;
	}

	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
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

	public int getAdult() {
		return adult;
	}

	public void setAdult(int adult) {
		this.adult = adult;
	}

	public int getBaby() {
		return baby;
	}

	public void setBaby(int baby) {
		this.baby = baby;
	}

	public int getStudent() {
		return student;
	}

	public void setStudent(int student) {
		this.student = student;
	}

	public String getSeatLevel_adult() {
		return seatLevel_adult;
	}

	public void setSeatLevel_adult(String seatLevel_adult) {
		this.seatLevel_adult = seatLevel_adult;
	}

	public String getSeatLevel_student() {
		return seatLevel_student;
	}

	public void setSeatLevel_student(String seatLevel_student) {
		this.seatLevel_student = seatLevel_student;
	}

	public String getSeatLevel_baby() {
		return seatLevel_baby;
	}

	public void setSeatLevel_baby(String seatLevel_baby) {
		this.seatLevel_baby = seatLevel_baby;
	}

	public String getStartLocation() {
		return startLocation;
	}

	public void setStartLocation(String startLocation) {
		this.startLocation = startLocation;
	}

	public String getEndLocation() {
		return endLocation;
	}

	public void setEndLocation(String endLocation) {
		this.endLocation = endLocation;
	}
	
	
	
	private int seq;
	
	public int getSeq() {
		return this.seq;
	}
	
}
