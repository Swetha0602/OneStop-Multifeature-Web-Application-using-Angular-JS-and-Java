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
 * Servlet implementation class usermedicineservlet
 */
@WebServlet("/usermedicineservlet")
public class usermedicineservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public usermedicineservlet() {
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
		String mname=request.getParameter("mname");
		String dname=request.getParameter("dname");
		String quantity=request.getParameter("quantity");
		String presecriped=request.getParameter("presecribed");
		
		HttpSession train=request.getSession();
		train.setAttribute("mname", mname);
		train.setAttribute("quantity", quantity);
		
		
	int reg=0;
		Connection con=(Connection) dbcon.create();
		
		try {
				
				PreparedStatement ps=con.prepareStatement("INSERT INTO train.usermedicine VALUES(id,?,?,?,?)");
				ps.setString(1, mname);
				ps.setString(2, dname);
				ps.setString(3, quantity);
				ps.setString(4, presecriped);
				
				
				
				reg=ps.executeUpdate();

	} catch (SQLException e) {
	//TODO Auto-generated catch block
	e.printStackTrace();
	}
		if(reg==1){
			response.sendRedirect("medicinetotal.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}
		
		}

	}
