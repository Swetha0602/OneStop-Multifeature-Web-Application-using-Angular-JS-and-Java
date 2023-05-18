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

import dbcon.dbcon;

/**
 * Servlet implementation class ticketbookdetails1
 */
@WebServlet("/ticketbookdetails1")
public class ticketbookdetails1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ticketbookdetails1() {
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

		String from=request.getParameter("from");
		String to=request.getParameter("to");
		String tname=request.getParameter("tname");
		String stime=request.getParameter("stime");
		String etime=request.getParameter("etime");
		String date=request.getParameter("date");
		String adult=request.getParameter("adult");
		String child=request.getParameter("child");
		String coach=request.getParameter("coach");
		String seattype=request.getParameter("seattype");
		
		
		
		
	int reg=0;
		Connection con=(Connection) dbcon.create();
		
		try {
				
				PreparedStatement ps=con.prepareStatement("INSERT INTO train.ticketdetails VALUES(id,?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1, from);
				ps.setString(2, to);
				ps.setString(3, tname);
				ps.setString(4, stime);
				ps.setString(5, etime);
				ps.setString(6, date);
				ps.setString(7, adult);
				ps.setString(8, child);
				ps.setString(9, coach);
				ps.setString(10, seattype);
				
				
				
				reg=ps.executeUpdate();

	} catch (SQLException e) {
	//TODO Auto-generated catch block
	e.printStackTrace();
	}
		if(reg==1){
			response.sendRedirect("adultdetails.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}
		
		}



	
	}

