package kos.triple.project.vo;

public class Epilogue_LikeVO {
	private int epilogue_LikeNo;
	private String mem_id;
	private int epilogueNo;
	
	public Epilogue_LikeVO() {
		
	}

	public Epilogue_LikeVO(int epilogue_LikeNo, String mem_id, int epilogueNo) {
		this.epilogue_LikeNo = epilogue_LikeNo;
		this.mem_id = mem_id;
		this.epilogueNo = epilogueNo;
	}

	public int getEpilogue_LikeNo() {
		return epilogue_LikeNo;
	}

	public void setEpilogue_LikeNo(int epilogue_LikeNo) {
		this.epilogue_LikeNo = epilogue_LikeNo;
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
