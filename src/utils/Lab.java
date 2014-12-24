package utils;

import net.sf.json.JSONObject;

public class Lab {

	private int id;
	private String name;
	private String pass;
	private int lab_no;
	private String describe;
	private String picture;
	 
	public Lab(){}
	public Lab(JSONObject jo){
		name=jo.getString("name");
		pass=jo.getString("pass");
		lab_no=jo.getInt("lab_no");
		describe=jo.getString("describe");
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getLab_no() {
		return lab_no;
	}
	public void setLab_no(int lab_no) {
		this.lab_no = lab_no;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	
}
