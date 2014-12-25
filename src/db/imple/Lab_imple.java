package db.imple;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import utils.Lab;
import db.dao.LabDao;
import db.utils.MysqlConnector;

public class Lab_imple implements LabDao{

	private Statement stmt;
	private ResultSet result;
	private String sql;
	public Lab_imple(){
		stmt=new MysqlConnector().getStatement();
	}
	@Override
	public boolean insert(Lab lab) {
		// TODO Auto-generated method stub
		sql="insert into lab(name,lab_no,describe) values("+lab.getName()+","
				+ ""+lab.getLab_no()+","+lab.getDescribe()+")";
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
	public boolean delete(Lab lab) {
		// TODO Auto-generated method stub
		sql="delete from lab where id="+lab.getId()+"";
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
	public boolean update(Lab lab) {
		// TODO Auto-generated method stub
		sql="update lab set name="+lab.getName()+" and lab_no="+lab.getLab_no()+" and "
				+ "describe="+lab.getDescribe()+" where id="+lab.getId()+"";
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
	public List<Lab> query() {
		// TODO Auto-generated method stub
		sql="select * from lab";
		List<Lab> list=new ArrayList<Lab>();
		try {
			Statement s=new MysqlConnector().getStatement();
			ResultSet result=s.executeQuery(sql);
			while(result.next()){
				Lab lab=new Lab();
				lab.setId(result.getInt("id"));
				lab.setName(result.getString("name"));
				lab.setLab_no(result.getInt("lab_no"));
				lab.setDescribe(result.getString("describe"));
				list.add(lab);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		return list;
	}

}
