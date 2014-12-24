package db.dao;

import java.util.List;

import utils.Lab;

public interface LabDao {

	public boolean insert(Lab lab);
	public boolean delete(Lab lab);
	public boolean update(Lab lab);
	public List<Lab> query();
}
