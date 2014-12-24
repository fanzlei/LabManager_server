package db.dao;


import utils.User;

public interface UserDao{

	public boolean insert(User user);
	public boolean update(User user);
	//update the pass_status
	public boolean updateStatus(User user);
	public User query(User user);
	//public List<User> query(Lab lab);
}
