package Pet.Signin;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.ServletException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Signin1Servlet
 */
@WebServlet("/Signin2Servlet")
public class Signin2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		out.print("Working");
		int gid = Integer.parseInt(request.getParameter("gid"));
		String gname = request.getParameter("name");
		String gmail = request.getParameter("email");
		String gpassword = request.getParameter("pass");
		String gmobile = request.getParameter("contact");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PetKonnect?useSSL=false","root","Nicole@11");
			PreparedStatement pst = con.prepareStatement("insert into Admin (gname,gpassword,gmail,gmobile) values(?,?,?,?)");
			pst.setString(1, gname);
			pst.setString(2, gpassword);
			pst.setString(3, gmail);
			pst.setString(4, gmobile);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("signin2.jsp");
			
			if(rowCount>0) {
				request.setAttribute("status","success");
				dispatcher = request.getRequestDispatcher("login2.jsp");
			}
			else {
				request.setAttribute("status","failed");
			}
			dispatcher.forward(request, response);
			
			
			//ResultSet rs = pst.executeQuery();
			//if(rs.next()) {
				//session.setAttribute("name",rs.getString("uname"));
				//dispatcher = request.getRequestDispatcher("IndexHome1.jsp");
			//} else {
				//request.setAttribute("status", "failed");
				//dispatcher = request.getRequestDispatcher("login1.jsp");
			//}
			//dispatcher.forward(request, response);
			
			
		} catch(Exception e) {
			e.printStackTrace();
			
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
