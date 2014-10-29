package com.ntu.auto.magazine;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ntu.auto.magazine.dao.AutomobileDao;
import com.ntu.auto.magazine.dao.AutomobileDaoImpl;
import com.ntu.auto.magazine.model.Advertisement;

/**
 * Servlet implementation class AdminViewServlet
 */
@WebServlet(name = "adminView", urlPatterns = { "/adminView" })
public class AdminViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		long advId = Long.valueOf(request.getParameter("advId")!=null ?request.getParameter("advId") :"-1").longValue();
		AutomobileDao automobileDao = new AutomobileDaoImpl();
		RequestDispatcher dispatcher = null;
		if("view".equals(action)){
			Advertisement adv = automobileDao.getAdvertisementById(advId);
			request.setAttribute("adv", adv);
			dispatcher = request.getRequestDispatcher("viewAutomobile.jsp");
			dispatcher.forward(request, response);			
		}
		if("edit".equals(action)){
			Advertisement adv = automobileDao.getAdvertisementById(advId);
			request.setAttribute("adv", adv);
			dispatcher = request.getRequestDispatcher("sellAutomobile.jsp");
			dispatcher.forward(request, response);
		}
		if("delete".equals(action)){
			if(advId > 0){
				automobileDao.deleteAdvertisement(advId);
			}
			dispatcher = request.getRequestDispatcher("adminSearch");
			dispatcher.forward(request, response);
		}
		if("publish".equals(action)){
			if(advId > 0){
				automobileDao.publishAdvertisement(advId);
			}
			dispatcher = request.getRequestDispatcher("adminSearch");
			dispatcher.forward(request, response);
		}
		if("unpublish".equals(action)){
			if(advId > 0){
				automobileDao.unPublishAdvertisement(advId);
			}
			dispatcher = request.getRequestDispatcher("adminSearch");
			dispatcher.forward(request, response);
		}
	}
}
