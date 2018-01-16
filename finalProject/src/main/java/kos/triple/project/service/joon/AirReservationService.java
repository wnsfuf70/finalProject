package kos.triple.project.service.joon;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface AirReservationService {

	//����������������
	public void getAirPortInfo(HttpServletRequest req, Model model);

	//�װ��� ��������(�װ����������� ���Խ�) 
	public void getAirPlane(HttpServletRequest req, Model model);
	
	//�װ��� ���
	public void addAirPlane(HttpServletRequest req);

	//�װ��� ����
	public void deleteAirPlane(HttpServletRequest req);

	//�װ��� ���� ��������
	public void getAirPlaneOne(HttpServletRequest req);

	//�װ��� ���� �����ϱ�
	public void modifyAirPlane(HttpServletRequest req);

	//�װ��� ��� ��������(�������� ���� ���Խ�)
	public void getAirPlaneAll(HttpServletRequest req, Model model);

	//�� ���׻����� �Ÿ��� ���Ѵ�.
	public void getMoveDistance(HttpServletRequest req);

	//����� ��θ� �����Ѵ�.
	public void setRoute(HttpServletRequest req);

	//��μ����� ����Ѵ�.
	public void setRouteCancel(HttpServletRequest req);

	//�⺻������ �����´�
	public void getSeatDefaultPrice(HttpServletRequest req, Model model);

	//�⺻�������� ����å���Ѵ�(������������)
	public void setSeatPrice(HttpServletRequest req);

	//�Էµ� �������� ����å���Ѵ�(������������)
	public void setCustomSeatPrice(HttpServletRequest req);

	//å���� ���������� �����´�.
	public void getSeatPriceInfo(HttpServletRequest req);

	//å���� ���������� �����Ѵ�.
	public void modifySeatPrice(HttpServletRequest req);

	//�װ����� ��ȸ�Ѵ�.
	public void airPlaneSearch(HttpServletRequest req, Model model);
	
	//�װ��� �˻�
	
	//�װ�����
	
}
