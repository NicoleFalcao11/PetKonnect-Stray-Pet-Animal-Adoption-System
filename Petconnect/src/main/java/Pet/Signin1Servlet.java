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
@WebServlet("/Signin1Servlet")
public class Signin1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//PrintWriter out = response.getWriter();
		//out.print("Working");
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String upassword = request.getParameter("pass");
		String umobile = request.getParameter("contact");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PetKonnect?useSSL=false","root","Nicole@11");
			PreparedStatement pst = con.prepareStatement("insert into users (uname,upassword,uemail,umobile) values(?,?,?,?)");
			pst.setString(1, uname);
			pst.setString(2, upassword);
			pst.setString(3, uemail);
			pst.setString(4, umobile);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("signin1.jsp");
			
			if(rowCount>0) {
				request.setAttribute("status","success");
				//dispatcher = request.getRequestDispatcher("login1.jsp");
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
