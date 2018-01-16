package kos.triple.project.vo;

import java.sql.Timestamp;

public class RouteVO {
	private String routeNo;
	private String route1;
	private String route2;
	private String route3;
	private Timestamp startTime;
	private Timestamp midTime;
	private Timestamp arrivalTime;
	private int distance1;
	private int distance2;
	private int resultDistance;
	
	public RouteVO() {	}

	public String getRouteNo() {
		return routeNo;
	}

	public void setRouteNo(String routeNo) {
		this.routeNo = routeNo;
	}

	public String getRoute1() {
		return route1;
	}

	public void setRoute1(String route1) {
		this.route1 = route1;
	}

	public String getRoute2() {
		return route2;
	}

	public void setRoute2(String route2) {
		this.route2 = route2;
	}

	public String getRoute3() {
		return route3;
	}

	public void setRoute3(String route3) {
		this.route3 = route3;
	}

	public Timestamp getStartTime() {
		return startTime;
	}

	public void setStartTime(Timestamp startTime) {
		this.startTime = startTime;
	}

	public Timestamp getMidTime() {
		return midTime;
	}

	public void setMidTime(Timestamp midTime) {
		this.midTime = midTime;
	}

	public Timestamp getArrivalTime() {
		return arrivalTime;
	}

	public void setArrivalTime(Timestamp arrivalTime) {
		this.arrivalTime = arrivalTime;
	}

	public int getDistance1() {
		return distance1;
	}

	public void setDistance1(int distance1) {
		this.distance1 = distance1;
	}

	public int getDistance2() {
		return distance2;
	}

	public void setDistance2(int distance2) {
		this.distance2 = distance2;
	}

	public int getResultDistance() {
		return resultDistance;
	}

	public void setResultDistance(int resultDistance) {
		this.resultDistance = resultDistance;
	}
	
	
}
