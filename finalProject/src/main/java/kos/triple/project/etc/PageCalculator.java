package kos.triple.project.etc;

public class PageCalculator {

	private final int startPage = 1; //시작페이지
	
	private int requestPage; //요청페이지
	private int dataTotalCount; //총레코드갯수
	private int blockSize;//블록크기
	private int contentCount; //한페이지당 뿌려줄 갯수
	
	private int blockStartNumber; //블록시작값
	private int blockEndNumber; //블록끝값
	private int block;//현재블록
	private int blockCount;//블록수
	private int endPage; //끝페이지

	private int firstBlock;//첫블록
	private int endBlock;//끝블록
	
	private int start;//로우넘시작값
	private int end;//로우넘끝값
	
	public PageCalculator(int requestPage , int dataTotalCount , int blockSize , int contentCount){
		
		this.requestPage=requestPage;
		this.dataTotalCount=dataTotalCount;
		this.blockSize=blockSize;
		this.contentCount=contentCount;
		
		int tmp = dataTotalCount/contentCount;
		endPage = (dataTotalCount%contentCount==0) ? tmp : tmp+1;
		
		tmp = endPage/blockSize;
		blockCount = endPage%blockSize==0 ? tmp : tmp+1; 
		
		if(requestPage%blockSize!=0) {
			block = requestPage/blockSize + 1;
		}
		else {
			block = requestPage/blockSize;
		}
		
		blockStartNumber = 1 + blockSize*(block-1); 
		blockEndNumber = blockStartNumber + blockSize -1;
		
		if(endPage<blockEndNumber) {
			blockEndNumber=endPage;
		}
	

		this.firstBlock=1;
		this.endBlock=this.blockCount;
		this.start=contentCount*(requestPage-1)+1;
		this.end=contentCount*requestPage;
	}
	
	public int getRequestPage() {
		return requestPage;
	}

	public void setRequestPage(int requestPage) {
		this.requestPage = requestPage;
	}

	public int getDataTotalCount() {
		return dataTotalCount;
	}

	public void setDataTotalCount(int dataTotalCount) {
		this.dataTotalCount = dataTotalCount;
	}

	public int getBlockSize() {
		return blockSize;
	}

	public void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}

	public int getContentCount() {
		return contentCount;
	}

	public void setContentCount(int contentCount) {
		this.contentCount = contentCount;
	}

	public int getBlockStartNumber() {
		return blockStartNumber;
	}

	public void setBlockStartNumber(int blockStartNumber) {
		this.blockStartNumber = blockStartNumber;
	}

	public int getBlockEndNumber() {
		return blockEndNumber;
	}

	public void setBlockEndNumber(int blockEndNumber) {
		this.blockEndNumber = blockEndNumber;
	}

	public int getBlock() {
		return block;
	}

	public void setBlock(int block) {
		this.block = block;
	}

	public int getBlockCount() {
		return blockCount;
	}

	public void setBlockCount(int blockCount) {
		this.blockCount = blockCount;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getStartPage() {
		return startPage;
	}
	
	public int getFirstBlock(){
		return firstBlock;
	}

	public int getEndBlock(){
		return endBlock;
	}	

	
}