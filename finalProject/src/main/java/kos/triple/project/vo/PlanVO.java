package kos.triple.project.vo;

import java.sql.Timestamp;

public class PlanVO {
	
	private int planNo;				//계획번호
	private String planTitle;		//계획명
	private String planContent;		//내용
	private String mem_Id;			//아아디
	private int plan_courseNo;		//코스번호
	private String location_num;	//방문장소
	private String course_memo;		//메모
	private int planOrder;			//방문순서
	private Timestamp dday;			//방문 날짜
	
	public PlanVO() {
	
	}
	
	public int getPlanNo() {
		return planNo;
	}
	public void setPlanNo(int planNo) {
		this.planNo = planNo;
	}
	public String getPlanTitle() {
		return planTitle;
	}
	public void setPlanTitle(String planTitle) {
		this.planTitle = planTitle;
	}
	public String getPlanContent() {
		return planContent;
	}
	public void setPlanContent(String planContent) {
		this.planContent = planContent;
	}
	public String getMem_Id() {
		return mem_Id;
	}
	public void setMem_Id(String mem_Id) {
		this.mem_Id = mem_Id;
	}
	public int getPlan_courseNo() {
		return plan_courseNo;
	}
	public void setPlan_courseNo(int plan_courseNo) {
		this.plan_courseNo = plan_courseNo;
	}
	public String getLocation_num() {
		return location_num;
	}
	public void setLocation_num(String location_num) {
		this.location_num = location_num;
	}
	public String getCourse_memo() {
		return course_memo;
	}
	public void setCourse_memo(String course_memo) {
		this.course_memo = course_memo;
	}
	public int getPlanOrder() {
		return planOrder;
	}
	public void setPlanOrder(int planOrder) {
		this.planOrder = planOrder;
	}
	public Timestamp getDday() {
		return dday;
	}
	public void setDday(Timestamp dday) {
		this.dday = dday;
	}
	
	
	
	
}
