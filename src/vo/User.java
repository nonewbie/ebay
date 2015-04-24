package vo;
import java.util.Date;
public class User {
	private long userid;
	private String username;
	private String passwd;
	private String grade = "";
	private String birth;
	private String sex = null;
	private String email = null;
	private String phone = null;
	private Date registertime = (Date) null;
	private Date visittime = (Date) null;
	
	public void setUserId(long id){
		this.userid = id;
	}
	public void setUserName(String name){
		this.username = name;
	}
	public void setPasswd(String passwd){
		this.passwd = passwd;
	}
	public void setSex(String sex){
		this.sex = sex;
	}
	public void setGrade(String grade){
		this.grade = grade;
	}
	public void setBirth(String birth){
		this.birth = birth;
	}
	public void setEmail(String email){
		this.email = email;
	}
	public void setPhone(String phone){
		this.phone = phone;
	}
	public void setRegisterTime(Date time){
		this.registertime = time;
	}
	public void setVisitTime(Date time){
		this.visittime = time;
	}
	
	
	public long getUserId(){
		return this.userid;
	}
	public String getUserName(){
		return this.username;
	}
	public String getPasswd(){
		return this.passwd;
	}
	public String getSex(){
		return this.sex;
	}
	public String getGrade(){
		return this.grade;
	}
	public String getBirth(){
		return this.birth;
	}
	public String getEmail(){
		return this.email;
	}
	public String getPhone(){
		return this.phone;
	}
	public Date getRegisterTime(){
		return this.registertime;
	}
	public Date getVisitTime(){
		return this.visittime;
	}
	
}
