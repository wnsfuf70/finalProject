package kos.triple.project.vo;

public class MemberVO {

	private String mem_id;
	private String name;
	private String password;
	private String email1;
	private String email2;
	private String sex;
	private String phone1;
	private String phone2;
	private String phone3;
	private String birth;
	private String grade;
	private String faceImg;
	private String introduce;
	
	
	public MemberVO() {
	
	}

	
	public MemberVO(String mem_id, String name, String password, String email1, String email2, String sex,
			String phone1, String phone2, String phone3, String birth, String grade, String faceImg, String introduce) {
		super();
		this.mem_id = mem_id;
		this.name = name;
		this.password = password;
		this.email1 = email1;
		this.email2 = email2;
		this.sex = sex;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
		this.birth = birth;
		this.grade = grade;
		this.faceImg = faceImg;
		this.introduce = introduce;
	}


	public String getMem_id() {
		return mem_id;
	}


	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getEmail1() {
		return email1;
	}


	public void setEmail1(String email1) {
		this.email1 = email1;
	}


	public String getEmail2() {
		return email2;
	}


	public void setEmail2(String email2) {
		this.email2 = email2;
	}


	public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
		this.sex = sex;
	}


	public String getPhone1() {
		return phone1;
	}


	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}


	public String getPhone2() {
		return phone2;
	}


	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}


	public String getPhone3() {
		return phone3;
	}


	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}


	public String getBirth() {
		return birth;
	}


	public void setBirth(String birth) {
		this.birth = birth;
	}


	public String getGrade() {
		return grade;
	}


	public void setGrade(String grade) {
		this.grade = grade;
	}


	public String getFaceImg() {
		return faceImg;
	}


	public void setFaceImg(String faceImg) {
		this.faceImg = faceImg;
	}


	public String getIntroduce() {
		return introduce;
	}


	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	
	
	
	
	
}
