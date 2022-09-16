import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.model.User;




	public class Logincontroller extends HttpServlet
	{
		
		
	 public Logincontroller() {
		// TODO Auto-generated constructor stub
	}
		
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
		//	super.doGet(req, resp);
		}
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
		//	super.doPost(req, resp);
			
			resp.setContentType("text/html");
			PrintWriter out=resp.getWriter();
			
			System.out.println("m insevlet chake login");
			
			
			if(req.getParameter("email").equals("viral@gmail.com") && req.getParameter("password").equals("12345"))
			{
				resp.sendRedirect("admin.jsp");
			}
			else
			{
				User u=new User();
				
				u.setUsername(req.getParameter("username"));
				u.setEmail(req.getParameter("email"));
				u.setPassword(req.getParameter("password"));
				u.setAddress(req.getParameter("address"));
				u.setMobile(req.getParameter("mobile"));
				
				UserDao rg=new UserDao();
				User flag=rg.checklogin(u);
				
				if(flag!=null)
				{
					HttpSession session=req.getSession(true);
					session.setAttribute("viral", flag);
					
					resp.sendRedirect("home1.jsp");
				}
				else
				{
					out.print("username and password are invallid");
				}
			}
			
		}

	}
