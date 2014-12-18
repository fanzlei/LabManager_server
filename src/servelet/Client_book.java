package servelet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fanz.sql.AppointmentUtils;
import josnUtils.JsonUtils;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class Client_book
 */
@WebServlet("/Client_book")
public class Client_book extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Client_book() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(request.getParameter("tag")=="addBook"){
			InputStream is=request.getInputStream();
			String jsonString=new JsonUtils().inputStreamToString(is);
			JSONObject jo=JSONObject.fromObject(jsonString);
			boolean status=new AppointmentUtils().addBook(jo);
			JSONObject joo=new JSONObject();
			joo.put("status", status);
			PrintWriter out=response.getWriter();
			out.print(joo);
		}
		else if(request.getParameter("tag")=="deleteBook"){
			InputStream is=request.getInputStream();
			String jsonString=new JsonUtils().inputStreamToString(is);
			JSONObject jo=JSONObject.fromObject(jsonString);
			boolean status=new AppointmentUtils().deleteBook(jo);
			JSONObject joo=new JSONObject();
			joo.put("status", status);
			PrintWriter out=response.getWriter();
			out.print(joo);
		}
		else if(request.getParameter("tag")=="pass_status"){
			InputStream is=request.getInputStream();
			String jsonString=new JsonUtils().inputStreamToString(is);
			JSONObject jo=JSONObject.fromObject(jsonString);
			boolean status=new AppointmentUtils().pass_status(jo);
			JSONObject joo=new JSONObject();
			joo.put("status", status);
			PrintWriter out=response.getWriter();
			out.print(joo);
			
		}
		
		
	}

}
