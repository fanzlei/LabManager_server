package db.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;


public class MysqlConnector {

	public Statement stmt;
	Connection conn;
	public MysqlConnector() {
		// TODO Auto-generated constructor stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/lab_manager?useUnicode=true&characterEncoding=utf8","root","");
			stmt=conn.createStatement();
			   
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
    public Statement getStatement(){
    	
    	return stmt;
    }
}
