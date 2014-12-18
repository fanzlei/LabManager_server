package servelet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fanz.sql.UserUtils;

/**
 * Servlet implementation class ForClient
 */
@WebServlet("/Client_user")
public class Client_user extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Client_user() {
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
		if(request.getParameter("tag")=="login"){
			String name= request.getParameter("name");
			String pass=request.getParameter("pass");
			boolean checkStatus=new UserUtils().queryUser(name, pass);
		    request.getSession().setAttribute("checkStatus", checkStatus);
		}
		else if(request.getParameter("tag")=="register"){
			String name= request.getParameter("name");
			String pass=request.getParameter("pass");
			String phone=request.getParameter("phone");
			String department=request.getParameter("department");
			String classes=request.getParameter("classes");
			boolean insertStatus=new UserUtils().insertUser(name, pass, phone, department, classes);
			request.getSession().setAttribute("insertStatus", insertStatus);
		}
		else if(request.getParameter("tag")=="updateUser"){
			String name=request.getParameter("name");
			String pass=request.getParameter("pass");
			String phone=request.getParameter("phone");
			boolean updateStatus=new UserUtils().updateUser(name, pass, phone);
			request.getSession().setAttribute("updateStatus", updateStatus);
		}
		else if(request.getParameter("tag")=="pass_status"){
			String name=request.getParameter("name");
			boolean pass_status=new UserUtils().queryPassStatus(name);
			request.getSession().setAttribute("pass_status", pass_status);
		}
	}
}
