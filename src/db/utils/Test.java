package db.utils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		try {
			Statement s=new MysqlConnector().getStatement();
			ResultSet result=s.executeQuery("select * from lab where id=1");
			result.first();
			System.out.println(result.getString("name"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
