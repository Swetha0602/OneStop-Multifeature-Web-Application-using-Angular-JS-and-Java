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

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import dbcon.dbcon;

/**
 * Servlet implementation class ticketcancel
 */
@WebServlet("/ticketcancel")
public class ticketcancel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ticketcancel() {
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
		String name=request.getParameter("name");
		String date=request.getParameter("date");
		
		System.out.println("name"+name);
		try{
			Connection con=(Connection) dbcon.create();
			Statement st=(Statement) con.createStatement();
			st.executeUpdate("DELETE FROM train.alldatadetails WHERE FFrom='"+from+"' and Name='"+name+"' and date='"+date+"' and TTo='"+to+"' ");
			response.sendRedirect("userpage.jsp?valid");
		}
		catch(Exception e){
			response.sendRedirect("error.jsp?inval id");
		System.out.println(e);
		}
		
			
			
			}

		}
