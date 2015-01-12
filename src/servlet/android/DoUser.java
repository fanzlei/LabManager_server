package servlet.android;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.imple.AppoImple;
import db.imple.TeacherImple;
import db.imple.UserImple;
import utils.Appo;
import utils.Teacher;
import utils.User;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import jsonUtils.JsonUtils;


/**
 * Servlet implementation class ForClient
 */
@WebServlet("/Do_user")
public class DoUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private JsonUtils jsonUtils=new JsonUtils();
    private PrintWriter out;
    private UserImple user_imple;
    HttpServletRequest request;
    /** 
     * @see HttpServlet#HttpServlet()
     */
    public DoUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf8");
		request.setCharacterEncoding("utf8");
		out=response.getWriter();
		this.request=request;
		user_imple=new UserImple();
		switch(request.getParameter("tag")){
		case "login":
			doLogin();
			break;
		case "register":
			doRegister();
			break;
		case "updateUser":
			doUpdateUser();
			break;
		case "updateStatus":
			doUpdatestatus();
			break;
		case "getMyList":
			doGetMyList();
			break;
		case "getTeacherByLab_no":
			doGetTeacherByLab_no();
			break;
		default:
			out.print("Do_user no operation!");
			out.flush();
			out.close();
		}
	}
	private void doGetTeacherByLab_no() {
		// TODO Auto-generated method stub
		JSONObject jo=new JSONObject();
		
		Teacher tea=new TeacherImple().query(Integer.valueOf(request.getParameter("lab_no")));
		if(tea.getPass_status()){
			jo.put("name", tea.getName());
			jo.put("phone", tea.getPhone());
			out.print(jo);
			out.flush();
			out.close();
		}else{
			out.print("The teacher have not pass");
			out.flush();
			out.close();
		}
		
	}

	private void doGetMyList() {
		// TODO Auto-generated method stub
		User user=new User();
		user.setName(request.getParameter("name"));
		List<Appo> list= new AppoImple().query(user);
		if(list.size()>0){
			JSONArray jsonArray=new JSONArray();
			for(int i=0;i<list.size();i++){
				JSONObject jo=new JSONObject();
				Appo ap=list.get(i);
				jo.put("id",ap.getId());
				//注意date型数据需要转换为string才能put到JSONObject
				jo.put("date", ap.getDate().toString());
				
				jo.put("date_part", ap.getDate_part());
				jo.put("name", ap.getName());
				jo.put("number", ap.getNumber());
				jo.put("lab_no", ap.getLab_no());
				jo.put("pass_status", ap.getPass_status());
				jsonArray.add(jo);
			}
			
			out.print(jsonArray);
			out.flush();
			out.close();
		}
		else{out.print("The user have no appointment");}
	}

	private void doUpdatestatus() {
		// TODO Auto-generated method stub
		User user=new User();
		user.setName(request.getParameter("name"));
		user.setPass_status(Boolean.valueOf(request.getParameter("pass_status")));
		boolean bool=user_imple.updateStatus(user);
		JSONObject j=jsonUtils.getJsonObject("updateStatus", bool);
		out.print(j);
		out.flush();
		out.close();
	}

	private void doUpdateUser() {
		// TODO Auto-generated method stub
		User user=new User();
		user.setName(request.getParameter("name"));
		user.setPass(request.getParameter("pass"));
		user.setPhone(request.getParameter("phone"));
		boolean bool=user_imple.update(user);
		JSONObject j=jsonUtils.getJsonObject("updateUser", bool);
		out.print(j);
		out.flush();
		out.close();
	}

	private void doRegister() {
		// TODO Auto-generated method stub
		User user=new User();
		user.setName(request.getParameter("name"));
		user.setPass(request.getParameter("pass"));
		user.setPhone(request.getParameter("phone"));
		user.setClasses(request.getParameter("classes"));
		boolean bool=user_imple.insert(user);
		JSONObject j=jsonUtils.getJsonObject("register", bool);
		out.print(j);
		out.flush();
		out.close();
	}

	private void doLogin(){
		User user=new User();
		user.setName(request.getParameter("name"));
		User sqlUser= user_imple.query(user);
		if(sqlUser!=null&&sqlUser.getPass().equals(request.getParameter("pass"))){
			//用户存在，密码正确
			System.out.println("用户登录："+user.getName());
			request.getSession().setAttribute("name", sqlUser.getName());
			JSONObject joo= jsonUtils.getJsonObject("login", sqlUser.getPass().equals(request.getParameter("pass")));
			joo.put("name", sqlUser.getName());
			joo.put("pass", sqlUser.getPass());
			joo.put("phone", sqlUser.getPhone());
			joo.put("classes", sqlUser.getClasses());
			joo.put("pass_status", sqlUser.getPass_status());
			joo.put("id", sqlUser.getId());
			out.print(joo); 
		}else{
			JSONObject j=jsonUtils.getJsonObject("login", false);
			out.print(j);
		}
		out.flush();
		out.close();
	}
}
