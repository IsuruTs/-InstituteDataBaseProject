package UserPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		try {
			List<UserModel> userlogin = UserController.loginValidate(name, password);
			if(userlogin != null && !userlogin.isEmpty()) {
				
				request.getSession().setAttribute("user", userlogin.get(0));
				response.sendRedirect("GetAllServlet");
			}
			else {
				String alertMessage = "Invalid Credentials,please try again";
				response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='login.jsp'</script>");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	protected void doPost_homepage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			response.sendRedirect("GetAllServlet");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
