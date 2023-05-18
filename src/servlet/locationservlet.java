package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbcon.dbcon;

/**
 * Servlet implementation class locationservlet
 */
@WebServlet("/locationservlet")
public class locationservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public locationservlet() {
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

		String location=request.getParameter("location");
		
		HttpSession train=request.getSession();
		train.setAttribute("location", location);
		
		
		
	int reg=0;
		Connection con=(Connection) dbcon.create();
		
		try {
				
				PreparedStatement ps=con.prepareStatement("INSERT INTO train.locationtabel VALUES(id,?)");
				ps.setString(1, location);
				
				
				reg=ps.executeUpdate();

	} catch (SQLException e) {
	//TODO Auto-generated catch block
	e.printStackTrace();
	}
		if(reg==1){
			response.sendRedirect("Restaurants.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}
		
		}

	}
