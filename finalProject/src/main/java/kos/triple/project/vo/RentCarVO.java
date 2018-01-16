package kos.triple.project.vo;

public class RentCarVO {
	
	private String rent_no;
	private String use_km;
	private int car_count;
	private String insurance;
	private String car_num;
	private String car_img;
	CarVO car;
	
	public String getRent_no() {
		return rent_no;
	}
	
	public void setRent_no(String rent_no) {
		this.rent_no = rent_no;
	}
	
	public String getUse_km() {
		return use_km;
	}
	
	public void setUse_km(String use_km) {
		this.use_km = use_km;
	}
	
	public int getCar_count() {
		return car_count;
	}
	
	public void setCar_count(int car_count) {
		this.car_count = car_count;
	}
	
	public String getInsurance() {
		return insurance;
	}
	
	public void setInsurance(String insurance) {
		this.insurance = insurance;
	}
	
	public String getCar_num() {
		return car_num;
	}
	
	public void setCar_num(String car_num) {
		this.car_num = car_num;
	}
	
	public String getCar_img() {
		return car_img;
	}
	
	public void setCar_img(String car_img) {
		this.car_img = car_img;
	}

}
