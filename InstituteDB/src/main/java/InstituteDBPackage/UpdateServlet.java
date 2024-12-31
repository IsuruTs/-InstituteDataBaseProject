package InstituteDBPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id= request.getParameter("id");
		String region= request.getParameter("region");
		String customername= request.getParameter("customername");
		String lab= request.getParameter("lab");
		String section= request.getParameter("section");
		String phone= request.getParameter("phone");
		String principal= request.getParameter("principal");
		String model= request.getParameter("model");
		String serialno= request.getParameter("serialno");
		
		boolean isTrue;
		
		isTrue = InstituteDBController.updatedata(id,region, customername, lab, section, phone, principal, model, serialno);
		
		if(isTrue ==true) {
			List<InstituteDBModel> instituteDBdetails =InstituteDBController.getByID(id);
			request.setAttribute("instituteDBdetails", instituteDBdetails);
			
			String alertMessage = "Data Update Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='GetAllServlet'</script>");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
			
		doGet(request, response);
	}
		
	}

}
