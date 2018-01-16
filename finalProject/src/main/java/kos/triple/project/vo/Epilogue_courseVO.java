package kos.triple.project.vo;

import java.sql.Date;
import java.sql.Date;

public class Epilogue_courseVO {
	
	private int epilogue_courseNo;
	private String location_num;
	private String content;
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	private int visit_order;
	private Date dday;
	private int epilogueNo;
	
	private WhereVO where;
	
	public Epilogue_courseVO() {
		
	}

	public Epilogue_courseVO(int epilogue_courseNo, String location_num, String content, String img1, String img2,
			String img3, String img4, int visit_order, Date dday, int epilogueNo, WhereVO where) {
		this.epilogue_courseNo = epilogue_courseNo;
		this.location_num = location_num;
		this.content = content;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.img4 = img4;
		this.visit_order = visit_order;
		this.dday = dday;
		this.epilogueNo = epilogueNo;
		this.where = where;
	}

	public int getEpilogue_courseNo() {
		return epilogue_courseNo;
	}

	public void setEpilogue_courseNo(int epilogue_courseNo) {
		this.epilogue_courseNo = epilogue_courseNo;
	}

	public String getLocation_num() {
		return location_num;
	}

	public void setLocation_num(String location_num) {
		this.location_num = location_num;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public String getImg3() {
		return img3;
	}

	public void setImg3(String img3) {
		this.img3 = img3;
	}

	public String getImg4() {
		return img4;
	}

	public void setImg4(String img4) {
		this.img4 = img4;
	}

	public int getVisit_order() {
		return visit_order;
	}

	public void setVisit_order(int visit_order) {
		this.visit_order = visit_order;
	}

	public Date getDday() {
		return dday;
	}

	public void setDday(Date dday) {
		this.dday = dday;
	}

	public int getEpilogueNo() {
		return epilogueNo;
	}

	public void setEpilogueNo(int epilogueNo) {
		this.epilogueNo = epilogueNo;
	}

	public WhereVO getWhere() {
		return where;
	}

	public void setWhere(WhereVO where) {
		this.where = where;
	}
	
	
	
}
