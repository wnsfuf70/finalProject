package kos.triple.project.vo;

//관리자가 차량등록할때 쓰이는 VO
public class CarVO {
	
	private String car_num;
	private String car_name;
	private String car_kind;
	private String fuel;
	private String brand_name;
	private int car_price;
	private int car_addprice;
	
	public String getCar_num() {
		return car_num;
	}
	
	public void setCar_num(String car_num) {
		this.car_num = car_num;
	}
	
	public String getCar_name() {
		return car_name;
	}
	
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	
	public String getCar_kind() {
		return car_kind;
	}
	
	public void setCar_kind(String car_kind) {
		this.car_kind = car_kind;
	}
	
	public String getFuel() {
		return fuel;
	}
	
	public void setFuel(String fuel) {
		this.fuel = fuel;
	}
	
	public String getBrand_name() {
		return brand_name;
	}
	
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	
	public int getCar_price() {
		return car_price;
	}
	
	public void setCar_price(int car_price) {
		this.car_price = car_price;
	}
	
	public int getCar_addprice() {
		return car_addprice;
	}
	
	public void setCar_addprice(int car_addprice) {
		this.car_addprice = car_addprice;
	}
	
}
