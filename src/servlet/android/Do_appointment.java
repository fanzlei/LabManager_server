package servlet.android;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.imple.Appo_imple;
import db.imple.Lab_imple;
import utils.Appo;
import utils.Lab;
import jsonUtils.JsonUtils;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class Client_book
 */
@WebServlet("/Do_appointment")
public class Do_appointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	HttpServletRequest request;
	PrintWriter out;
	Appo_imple appo_imple=new Appo_imple();
	JsonUtils jsonUtils=new JsonUtils();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Do_appointment() {
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
		this.request=request;
		response.setContentType("text/html;charset=utf8");
		request.setCharacterEncoding("utf8");
		out=response.getWriter();
		switch(request.getParameter("tag")){
		case "add":
			doAdd();
			break;
		case "delete":
			doDelete();
			break;
		case "updateStatus":
			doUpdateStatus();
			break;
		case "getLabList":
			doGetLabList();
			break;
		case "getAppoListByLab_no":
			doGetAppoListByLab_no();
			break;
		default:
			out.print("Do_appointment no operation");
			break;
		}
	}

	private void doGetAppoListByLab_no() {
		// TODO Auto-generated method stub
		Lab lab=new Lab();
		lab.setLab_no(Integer.valueOf(request.getParameter("lab_no")));
		JSONArray ja=new Appo_imple().query(lab);
		if(ja.size()>0){
			out.print(ja);
			out.flush();
			out.close();
		}else{
			out.print("no appointment in this lab");
			out.flush();
			out.close();
		}
	}

	private void doGetLabList() {
		// TODO Auto-generated method stub
		List<Lab> list= new Lab_imple().query();
		if(list.size()>0){
			JSONArray jsonArray=new JSONArray();
			for(int i=0;i<list.size();i++){
				JSONObject jo=new JSONObject();
				Lab lab=list.get(i);
				jo.put("id",lab.getId());
				jo.put("name", lab.getName());
				jo.put("lab_no", lab.getLab_no());
				jo.put("describe", lab.getDescribe());
				jsonArray.add(jo);
			}
			out.print(jsonArray);
			out.flush();
			out.close();
		}else{
			out.print("nono lab");
			out.flush();
			out.close();
		}
		
	}

	private void doUpdateStatus() {
		// TODO Auto-generated method stub
		Appo appo=new Appo();
		appo.setId(Integer.valueOf(request.getParameter("id")));
		appo.setPass_status(Integer.valueOf(request.getParameter("pass_status")));
		boolean bool=appo_imple.updateStatus(appo);
		JSONObject j= jsonUtils.getJsonObject("updateStatus", bool);
		out.print(j);
		out.flush();
		out.close();
	}

	private void doDelete() {
		// TODO Auto-generated method stub
		Appo appo=new Appo();
		appo.setId(Integer.valueOf(request.getParameter("id")));
		boolean bool=appo_imple.delete(appo);
		JSONObject j=jsonUtils.getJsonObject("delete", bool);
		out.print(j);
		out.flush();
		out.close();
	}

	private void doAdd() {
		// TODO Auto-generated method stub
		Appo appo=new Appo();
		appo.setDate(Date.valueOf(request.getParameter("date")));
		appo.setDate_part(Integer.valueOf(request.getParameter("date_part")));
		appo.setLab_no(Integer.valueOf(request.getParameter("lab_no")));
		appo.setName(request.getParameter("name"));
		appo.setNumber(Integer.valueOf(request.getParameter("number")));
		boolean bool= appo_imple.insert(appo);
		JSONObject j=jsonUtils.getJsonObject("add", bool);
		out.print(j);
		out.flush();
		out.close();
	}

}
