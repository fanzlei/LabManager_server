package db.dao;

import java.util.List;

import utils.Lab;
import utils.Teacher;

public interface TeacherDao {

	public boolean insert(Teacher te);
	public boolean update(Teacher te);
	public boolean updateStatus(Teacher te);
	public boolean delete(Teacher te);
	public Teacher query(Teacher te);
	public List<Teacher> query();
	public Teacher query(int lab_no);
}
