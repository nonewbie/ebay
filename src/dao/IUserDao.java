package dao;
import vo.*;
public interface IUserDao {
	public boolean doCreate(User user) throws Exception;
	public User findByUserName(String name) throws Exception;
	public User findByUserNameandPasswd(String name,String password)throws Exception;
}
