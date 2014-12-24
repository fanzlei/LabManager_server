package db.dao;

import java.util.List;
import java.util.Map;

import utils.Appo;
import utils.Lab;
import utils.User;

public interface AppoDao {

	public boolean insert(Appo appo);
	public boolean delete(Appo appo);
	public boolean update(Appo appo);
	public boolean updateStatus(Appo appo);
	public List<Appo> query(User user);
	public List<Map<String, Object>> query(Lab lab);
}
