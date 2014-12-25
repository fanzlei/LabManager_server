package db.imple;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import utils.User;
import db.dao.UserDao;
import db.utils.MysqlConnector;

public class User_imple implements UserDao{

	private Statement stmt;
	private String sql;
	private ResultSet result;
	public User_imple(){
		stmt=new MysqlConnector().getStatement();
	}
	@Override
	public boolean insert(User user) {
		// TODO Auto-generated method stub
		sql="insert into user(name,pass,phone,classes) "
				+ "values('"+user.getName()+"',"
						+ "'"+user.getPass()+"',"
						+ "'"+user.getPhone()+"',"
						+ "'"+user.getClasses()+"')";
		
		try {
			stmt.execute(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public boolean update(User user) {
		// TODO Auto-generated method stub
		sql="update user set pass='"+user.getPass()+"',phone='"+user.getPhone()+"'"
				+ "where name='"+user.getName()+"'";
		try {
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return true;
	}

	@Override
	public User query(User user) {
		// TODO Auto-generated method stub
	    sql="select * from user where name='"+user.getName()+"'";
	    User u=new User();
		try {
			result=stmt.executeQuery(sql);
			if(result.first()){
				u.setId(result.getInt("id"));
				u.setName(result.getString("name"));
				u.setPass_status(result.getBoolean("pass_status"));
				u.setClasses(result.getString("classes"));
				u.setPhone(result.getString("phone"));
				u.setPass(result.getString("pass"));
			}
			else{
				return null;
			}	
			
			
		} catch (SQLException e) { 
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
		return u;
	}
	@Override
	public boolean updateStatus(User user) {
		// TODO Auto-generated method stub
		sql="update user set pass_status="+user.getPass_status()+" where name='"+user.getName()+"'";
		try {
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return true;
	}

	/*@Override
	public List<User> query(Lab lab) {
		// TODO Auto-generated method stub
		//������������
		int lab_no=lab.getLab_no();
		sql="select user.* from appo where lab_no="+lab_no+" join user";
		List<User> list=new ArrayList<User>();
		try {
			result=stmt.executeQuery(sql);
			User u=new User();
			while(result.next()){
				u.setId(result.getInt("id"));
				u.setName(result.getString("name"));
				u.setPass_status(result.getBoolean("pass_status"));
				u.setClasses(result.getString("classes"));
				u.setPhone(result.getString("phone"));
				list.add(u);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
		return list;
	}*/

}
