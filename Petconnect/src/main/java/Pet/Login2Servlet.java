package Pet.Signin;

import java.io.IOException;
import java.sql.DriverManager;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import javax.servlet.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class Login1Servlet
 */
@WebServlet("/Login2Servlet")
public class Login2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String gmail = request.getParameter("login-email");
		String gpassword = request.getParameter("login-password");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PetKonnect?useSSL=false","root","Nicole@11");
			PreparedStatement pst = con.prepareStatement("select * from Admin where gmail=? and gpassword=?");
			pst.setString(1, gmail);
			pst.setString(2, gpassword);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				session.setAttribute("name",rs.getString("gname"));
				session.setAttribute("gid",rs.getInt("gid"));
				dispatcher = request.getRequestDispatcher("AdminHome.jsp");
				dispatcher = request.getRequestDispatcher("register.jsp");
			} else {
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("login2.jsp");
			}
			dispatcher.forward(request, response);
			
		} catch (Exception e){
			e.printStackTrace();
		}
	}

}
