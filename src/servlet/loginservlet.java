package servlet;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;

import dbcon.dbcon;

/**
 * Servlet implementation class largeloginservlet
 */
@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginservlet() {
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
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String name=request.getParameter("name");
		
		HttpSession train=request.getSession();
		train.setAttribute("name", name);
		
		Connection con=(Connection) dbcon.create();
		boolean log = false;
		try {
				
				PreparedStatement ps=con.prepareStatement("SELECT * FROM `train`.`userlist` where email=? and Password=?");
				ps.setString(1, email);
				ps.setString(2, pass);
				
				ResultSet rs=ps.executeQuery();
				log=rs.next();
	}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
					if(log==true){
						response.sendRedirect("userpage.jsp");
					}
					else{
						response.sendRedirect("error.jsp");
					   }
		
		
		}

	}
