package db.imple;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import utils.Appo;
import utils.Lab;
import utils.User;
import db.dao.AppoDao;
import db.utils.MysqlConnector;

public class Appo_imple implements AppoDao{

	private Statement stmt;
	private ResultSet result;
	private String sql;
	public Appo_imple(){
		stmt=new MysqlConnector().getStatement();
	}
	@Override
	public boolean insert(Appo appo) {
		// TODO Auto-generated method stub
		sql="insert into appo(date,date_part,name,number,lab_no) "
				+ "values('"+appo.getDate()+"',"+appo.getDate_part()+",'"+appo.getName()+"'"
						+ ","+appo.getNumber()+","+appo.getLab_no()+")";
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
	public boolean delete(Appo appo) {
		// TODO Auto-generated method stub
		sql="delete from appo where id="+appo.getId()+"";
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
	public boolean update(Appo appo) {
		// TODO Auto-generated method stub
		sql="update appo set date="+appo.getDate()+" and date_part="+appo.getDate_part()+" and "
				+ "number="+appo.getNumber()+" where id="+appo.getId()+"";
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
	public List<Appo> query(User user) {
		// TODO Auto-generated method stub
		sql="select * from appo where name='"+user.getName()+"'";
		List<Appo> list=new ArrayList<Appo>();
		try {
			result=stmt.executeQuery(sql);
			while(result.next()){
				Appo appo=new Appo();
				appo.setId(result.getInt("id"));
				appo.setDate(result.getDate("date"));
				appo.setDate_part(result.getInt("date_part"));
				appo.setName(result.getString("name"));
				appo.setNumber(result.getInt("number"));
				appo.setLab_no(result.getInt("lab_no"));
				appo.setPass_status(result.getInt("pass_status"));
				list.add(appo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		return list;
	}

	@Override
	public JSONArray query(Lab lab) {
		// TODO Auto-generated method stub
		sql="select * from appo join user on appo.name=user.name where lab_no="+lab.getLab_no()+"";
		JSONArray ja=new JSONArray();
		try {
			result=stmt.executeQuery(sql);
			while(result.next()){
				JSONObject jo=new JSONObject();
				jo.put("id", result.getInt("id"));
				jo.put("date", result.getDate("date").toString());
				jo.put("date_part", result.getInt("date_part"));
				jo.put("name", result.getString("name"));
				jo.put("number", result.getInt("number"));
				jo.put("lab_no", result.getInt("lab_no"));
				jo.put("pass_status", result.getInt("pass_status"));
				jo.put("classes",result.getString("classes") );
				jo.put("phone", result.getString("phone"));
				ja.add(jo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		return ja;
	}
	@Override
	public boolean updateStatus(Appo appo) {
		// TODO Auto-generated method stub
		sql="update appo set pass_status="+appo.getPass_status()+" where id="+appo.getId()+"";
		try {
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
