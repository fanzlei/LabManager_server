package fanz.sql;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class UserUtils {

	Statement stmt;
	public UserUtils() {
		// TODO Auto-generated constructor stub
		stmt=new MysqlConnector().getStatement();
	}

	public boolean insertUser(String name,String pass,String phone,String department,String classes){
		Date date=new Date(System.currentTimeMillis());
		String sql="insert into user(name,pass,phone,department,class,date) values"
				+ "("+name+","+pass+","+phone+","+department+","+classes+","+date+")";
		try {
			stmt.execute(sql);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
    public boolean updateUser(String name,String pass,String phone){
		String sql="update user set pass="+pass+",phone="+phone+" where name="+name+"";
		try {
			stmt.executeUpdate(sql);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
    public boolean queryUser(String name,String pass){
		String sql="select pass from user where name="+name+"";
		try {
			ResultSet result=stmt.executeQuery(sql);
			result.first();
			if(result.getString("pass").equals(pass)){
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
    public boolean queryPassStatus(String name){
    	String sql="select pass_status from user where name="+name+"";
    	try {
			ResultSet result=stmt.executeQuery(sql);
			result.first();
			return result.getBoolean("pass_status");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return false;
    }
}
