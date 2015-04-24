package dao.impl;
import java.sql.*;

import vo.User;
import dao.IUserDao;

public class UserDaoImpl implements IUserDao {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	public UserDaoImpl(Connection conn){
		this.conn = conn;
	}
	public boolean doCreate(User user) throws Exception {
		boolean flag = false;
		String sql = "insert into user (userid,username,passwd,grade,birth,sex,email,phone,registertime,visittime) values (?,?,?,?,?,?,?,?,?,?)";
		this.pstmt = this.conn.prepareStatement(sql);
		this.pstmt.setLong(1,user.getUserId());
		this.pstmt.setString(2,user.getUserName());
		this.pstmt.setString(3,user.getPasswd());
		this.pstmt.setString(4,user.getGrade());
		this.pstmt.setString(5,user.getBirth());
		this.pstmt.setString(6,user.getSex());
		this.pstmt.setString(7, user.getEmail());
		this.pstmt.setString(8,user.getPhone());
		this.pstmt.setDate(9, new java.sql.Date(user.getRegisterTime().getTime()));
		this.pstmt.setDate(10, new java.sql.Date(user.getVisitTime().getTime()));
		if(this.pstmt.executeUpdate() > 0){
			flag = true;
		}
		this.pstmt.close();
		return flag;
	}
	
	public User findByUserName(String name) throws Exception {
		User user = null;
		String sql = "select userid,username,passwd,grade,birth,sex,email,phone,registertime,visittime from user where username=?";
		this.pstmt = this.conn.prepareStatement(sql);
		this.pstmt.setString(1,name);
		ResultSet rs = this.pstmt.executeQuery();
		if(rs.next()){
			user = new User();
			//user.setUserId(rs.getInt(1));
			user.setUserName(rs.getString(2));
			user.setPasswd(rs.getString(3));
			user.setGrade(rs.getString(4));
			user.setBirth(rs.getString(5));
			user.setSex(rs.getString(6));
			user.setEmail(rs.getString(7));
			user.setPhone(rs.getString(8));
			user.setRegisterTime(rs.getDate(9));
			user.setVisitTime(rs.getDate(10));
		}
		this.pstmt.close();	
		return user;
	}

	public User findByUserNameandPasswd(String name, String password)throws Exception {
		User user = null;
		String sql = "select userid,username,passwd,grade,birth,sex,email,phone,registertime,visittime from user where username=? and passwd=?";
		this.pstmt = this.conn.prepareStatement(sql);
		this.pstmt.setString(1,name);
		this.pstmt.setString(2,password);
		ResultSet rs = this.pstmt.executeQuery();
		if(rs.next()){
			user = new User();
			user.setUserId(rs.getInt(1));
			user.setUserName(rs.getString(2));
			user.setPasswd(rs.getString(3));
			user.setGrade(rs.getString(4));
			user.setBirth(rs.getString(5));
			user.setSex(rs.getString(6));
			user.setEmail(rs.getString(7));
			user.setPhone(rs.getString(8));
			user.setRegisterTime(rs.getDate(9));
			user.setVisitTime(rs.getDate(10));
		}
		this.pstmt.close();	
		return user;
	}
}
