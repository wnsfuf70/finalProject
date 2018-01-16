package kos.triple.project.vo;

import java.sql.Timestamp;

public class Epilogue_commentVO {
	
	private int epilogue_commentNo;
	private String content;;
	private Timestamp regDate;
	private String mem_id;
	private int epilogueNo;

	public Epilogue_commentVO() {
		
	}

	public Epilogue_commentVO(int epilogue_commentNo, String content, Timestamp regDate, String mem_id,
			int epilogueNo) {
		this.epilogue_commentNo = epilogue_commentNo;
		this.content = content;
		this.regDate = regDate;
		this.mem_id = mem_id;
		this.epilogueNo = epilogueNo;
	}

	public int getEpilogue_commentNo() {
		return epilogue_commentNo;
	}

	public void setEpilogue_commentNo(int epilogue_commentNo) {
		this.epilogue_commentNo = epilogue_commentNo;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public int getEpilogueNo() {
		return epilogueNo;
	}

	public void setEpilogueNo(int epilogueNo) {
		this.epilogueNo = epilogueNo;
	}
	
	
}
