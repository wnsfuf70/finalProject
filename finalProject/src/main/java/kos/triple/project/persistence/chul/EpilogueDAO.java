package kos.triple.project.persistence.chul;

import java.util.List;
import java.util.Map;

import kos.triple.project.vo.Epilogue_courseVO;
import kos.triple.project.vo.WhereVO;

public interface EpilogueDAO {
	
	// ������ �˻� ��޿��� ������ �˻��Ҷ� ���� �޼ҵ�.
	// location_name �� �������� ã�´�.
	public List<WhereVO> location(Map<String, Object> map);
	
	// ���� epliogue (�̾߱�) �� �ۼ��� ���� ������ ���ϴ� �۾�.
	public int getNumOfEpil();
	
	// �̾߱� �ۼ��� �����ڸ��� epilogue ���̺� ��(epilogueNo+1)�� ���� �α��� �� ������ id�� ����.
	// ������ ������� ������ epilogue_course �ۼ��� ������ �ۼ��Ϸ�����������
	// epilogue ���̺��� update�ϴ� ������� �ϼ��ؾ���.
	public int initialInsertPro(Map<String, Object> map);
	
	// epilogue_course ���̺� insert�ϴ� �۾�.
	public int insertEpilCoursePro(Map<String, Object> map);
	
	// ���� �ı� (epilogueNo)�� ���� epilogue_course(�ڽ���)�� ������ �������� �޼ҵ�
	// �ֳ��ϸ� rnum�� �ִ������ �����ֱ� ���ؼ�
	public int getNumOfEpilCourse(Map<String, Object> map1);
	
	// ���� �ı⿡ ����  epilogue_course�� ����� �������� �޼ҵ�
	public List<Epilogue_courseVO> getListOfEpilCourse(Map<String, Object> map2);
	
	// ���� �̾߱⿡ �� ���� �ڽ��� �ִ��� �������� �޼ҵ�. �ڽ������ �湮������ �����ֱ� ���ؼ�
	public int getNumOfVisitOrder(Map<String, Object> map);
	
	// �ۼ��� ����⸦ epilogue �� insert �ϴ� �۾�.
}
