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
 * Servlet implementation class ticketbookdetails
 */
@WebServlet("/ticketbookdetails")
public class ticketbookdetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ticketbookdetails() {
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
		String name=request.getParameter("fname");
		String ename=request.getParameter("age");
		String pname=request.getParameter("email");
		String number=request.getParameter("phone");
		String from=request.getParameter("from");
		String to=request.getParameter("to");
		
		HttpSession train=request.getSession();
		train.setAttribute("fromname", from);
		train.setAttribute("bookto", to);
		
		
		String date=request.getParameter("date");
		
		
	int reg=0;
		Connection con=(Connection) dbcon.create();
		
		try {
				
				PreparedStatement ps=con.prepareStatement("INSERT INTO train.trainticket VALUES(id,?,?,?,?,?,?,?)");
				ps.setString(1, name);
				ps.setString(2, ename);
				ps.setString(3, pname);
				ps.setString(4, number);
				ps.setString(5, from);
				ps.setString(6, to);
				ps.setString(7, date);
				reg=ps.executeUpdate();

	} catch (SQLException e) {
	//TODO Auto-generated catch block
	e.printStackTrace();
	}
		if(reg==1){
			response.sendRedirect("trainnames.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}
		
		}

	}