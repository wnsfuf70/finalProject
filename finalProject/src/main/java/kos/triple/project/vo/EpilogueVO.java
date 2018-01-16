package kos.triple.project.vo;

import java.sql.Timestamp;

public class EpilogueVO {
	private int epilogueNo;
	private String title;
	private char type;
	private String kind;
	private String content;
	private int totalCount;
	private char security;
	private int goodCount;
	private String mem_id;
	private Timestamp reg_date;

	public EpilogueVO() {

	}

	public EpilogueVO(int epilogueNo, String title, char type, String kind, String content, int totalCount,
			char security, int goodCount, String mem_id, Timestamp reg_date) {
		this.epilogueNo = epilogueNo;
		this.title = title;
		this.type = type;
		this.kind = kind;
		this.content = content;
		this.totalCount = totalCount;
		this.security = security;
		this.goodCount = goodCount;
		this.mem_id = mem_id;
		this.reg_date = reg_date;
	}

	public int getEpilogueNo() {
		return epilogueNo;
	}

	public void setEpilogueNo(int epilogueNo) {
		this.epilogueNo = epilogueNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public char getType() {
		return type;
	}

	public void setType(char type) {
		this.type = type;
	}

	public String getkind() {
		return kind;
	}

	public void setkind(String kind) {
		this.kind = kind;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public char getSecurity() {
		return security;
	}

	public void setSecurity(char security) {
		this.security = security;
	}

	public int getGoodCount() {
		return goodCount;
	}

	public void setGoodCount(int goodCount) {
		this.goodCount = goodCount;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public Timestamp getReg_date() {
		return reg_date;
	}

	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}

}
