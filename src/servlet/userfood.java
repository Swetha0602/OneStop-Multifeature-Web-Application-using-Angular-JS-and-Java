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

import com.sun.net.httpserver.HttpPrincipal;

import dbcon.dbcon;

/**
 * Servlet implementation class userfood
 */
@WebServlet("/userfood")
public class userfood extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userfood() {
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
		String fname=request.getParameter("fname");
		String quan=request.getParameter("quan");
		String tname=request.getParameter("tname");
		String cname=request.getParameter("cname");
		String sname=request.getParameter("sname");
		
		HttpSession food=request.getSession();
		food.setAttribute("foodname", fname);
		food.setAttribute("quantity", quan);
		
	
		
	
	int reg=0;
		Connection con=(Connection) dbcon.create();
		
		try {
				
				PreparedStatement ps=con.prepareStatement("INSERT INTO train.userfooddetails VALUES(id,?,?,?,?,?)");
				ps.setString(1, fname);
				ps.setString(2, quan);
				ps.setString(3, tname);
				ps.setString(4, cname);
				ps.setString(5, sname);
				
				reg=ps.executeUpdate();

	} catch (SQLException e) {
	//TODO Auto-generated catch block
	e.printStackTrace();
	}
		if(reg==1){
			response.sendRedirect("foodtotal.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}
		
		}

	}