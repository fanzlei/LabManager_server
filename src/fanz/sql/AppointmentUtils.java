package fanz.sql;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import net.sf.json.JSONObject;

public class AppointmentUtils {

	Statement stmt;
	public AppointmentUtils() {
		// TODO Auto-generated constructor stub
		stmt=new MysqlConnector().getStatement();
	}

	public boolean addBook(JSONObject jo){
		String name=jo.getString("name");
		String laboratory=jo.getString("laboratory");
		String phone=jo.getString("phone");
		String department=jo.getString("department");
		String classes=jo.getString("classes");
		int student_num=jo.getInt("student_num");
		Date day=(Date) jo.get("day");
		int period=jo.getInt("period");
		String sql="insert into appointment(name,laboratory,phone,department,classes,student_num,"
				+ "day,period) "
				+ "values("+name+","+laboratory+","+phone+","+department+","+classes+","
						+ ""+student_num+","+day+","+period+")";
		try {
			stmt.execute(sql);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	public boolean updateBook(){
		
		return false;
	}
	public boolean deleteBook(JSONObject jo){
		Date day=(Date) jo.get("day");
		String sql="delete from appointment where day="+day+"";
		try {
			stmt.execute(sql);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public boolean pass_status(JSONObject jo){
		Date day=(Date) jo.get("day");
		String sql="select pass_status from appointment where day="+day+"";
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
