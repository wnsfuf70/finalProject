package kos.triple.project.vo;

public class LockerVO {
	private int lockerNo;
	private int epilogueNo;
	private String mem_id;
	
	public LockerVO() {
		
	}
	
	public LockerVO(int lockerNo, int epilogueNo, String mem_id) {
		super();
		this.lockerNo = lockerNo;
		this.epilogueNo = epilogueNo;
		this.mem_id = mem_id;
	}

	public int getLockerNo() {
		return lockerNo;
	}

	public void setLockerNo(int lockerNo) {
		this.lockerNo = lockerNo;
	}

	public int getEpilogueNo() {
		return epilogueNo;
	}

	public void setEpilogueNo(int epilogueNo) {
		this.epilogueNo = epilogueNo;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	
}
