package user;

public class User {
	
	private String userid;
	private String userpassword;
	private String gender;
	private String locate_state;
	private String locate_city;
	private String elite;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getLocate_state() {
		return locate_state;
	}
	public void setLocate_state(String locate_state) {
		this.locate_state = locate_state;
	}
	public String getLocate_city() {
		return locate_city;
	}
	public void setLocate_city(String locate_city) {
		this.locate_city = locate_city;
	}
	public String getElite() {
		return elite;
	}
	public void setElite(String elite) {
		this.elite = elite;
	}
	
	
	
	
	
}
/*
 * String id = (request.getParameter("id") == null) ? "":
 * request.getParameter("id").trim(); String password =
 * request.getParameter("password"); String name = request.getParameter("name");
 * String gender = request.getParameter("gender"); String locate_state =
 * request.getParameter("locate_state"); String locate_city =
 * request.getParameter("locate_city");
 * 
 * String elite = request.getParameter("elite");
 * 
 * String squat1 = request.getParameter("squat"); int
 * squat=Integer.parseInt(squat1);
 * 
 * String deadlift1 = request.getParameter("deadlift"); int
 * deadlift=Integer.parseInt(deadlift1);
 * 
 * String bench_press1 = request.getParameter("bench_press"); int
 * bench_press=Integer.parseInt(bench_press1);
 * 
 * String military_press1 = request.getParameter("military_press"); int
 * military_press=Integer.parseInt(military_press1);
 */