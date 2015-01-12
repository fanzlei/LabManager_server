package db.imple;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import utils.Lab;
import utils.Teacher;
import db.dao.TeacherDao;
import db.utils.MysqlConnector;

public class TeacherImple implements TeacherDao{

	private Statement stmt;
	private ResultSet result;
	private String sql;
	public TeacherImple(){
		stmt=new MysqlConnector().getStatement();
	}
	@Override
	public boolean insert(Teacher te) {
		// TODO Auto-generated method stub
		sql="insert into teacher(name,pass,lab_no,phone)"
				+ " values("+te.getName()+","+te.getPass()+","+te.getLab_no()+","+te.getPhone()+")";
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
	public boolean update(Teacher te) {
		// TODO Auto-generated method stub
		sql="update teacher set pass="+te.getPass()+" and lab_no="+te.getLab_no()+" and "
				+ "phone="+te.getPhone()+"";
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
	public boolean delete(Teacher te) {
		// TODO Auto-generated method stub
		sql="delete from teacher where id="+te.getId()+"";
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
	public Teacher query(Teacher te) {
		// TODO Auto-generated method stub
		sql="select * from teacher where name="+te.getName()+"";
		Teacher tea=new Teacher();
		try {
			result=stmt.executeQuery(sql);
			result.first();
			tea.setId(result.getInt("id"));
			tea.setLab_no(result.getInt("lab_no"));
			tea.setName(result.getString("name"));
			tea.setPass(result.getString("pass"));
			tea.setPass_status(result.getBoolean("pass_status"));
			tea.setPhone(result.getString("phone"));
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		return tea;
	}
	@Override
	public Teacher query(int lab_no) {
		// TODO Auto-generated method stub
		sql="select * from teacher where lab_no="+lab_no+"";
		Teacher tea=new Teacher();
		try {
			result=stmt.executeQuery(sql);
			result.first();
			tea.setId(result.getInt("id"));
			tea.setLab_no(result.getInt("lab_no"));
			tea.setName(result.getString("name"));
			tea.setPass(result.getString("pass"));
			tea.setPass_status(result.getBoolean("pass_status"));
			tea.setPhone(result.getString("phone"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		return tea;
	}
	
	@Override
	public List<Teacher> query() {
		// TODO Auto-generated method stub
		List<Teacher> list=new ArrayList<Teacher>();
		sql="select * from teacher";
		try {
			result=stmt.executeQuery(sql);
			while(result.next()){
				Teacher tea=new Teacher();
				tea.setId(result.getInt("id"));
				tea.setLab_no(result.getInt("lab_no"));
				tea.setName(result.getString("name"));
				tea.setPass(result.getString("pass"));
				tea.setPass_status(result.getBoolean("pass_status"));
				tea.setPhone(result.getString("phone"));
				list.add(tea);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		return list;
	}
	@Override
	public boolean updateStatus(Teacher te) {
		// TODO Auto-generated method stub
		sql="update teacher set pass_status="+te.getPass_status()+" where id="+te.getId()+"";
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
