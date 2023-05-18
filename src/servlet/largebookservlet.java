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
 * Servlet implementation class largebookservlet
 */
@WebServlet("/largebookservlet")
public class largebookservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public largebookservlet() {
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
		// TODO Auto-generated method stub
		
		String city=request.getParameter("city");
		String indate=request.getParameter("indate");
		String outdate=request.getParameter("outdate");
		String roomc=request.getParameter("roomc");
		String adult=request.getParameter("adult");
		String child=request.getParameter("child");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		
		HttpSession train=request.getSession();
		train.setAttribute("adultt", adult);
		train.setAttribute("childd", child);
		train.setAttribute("roomm", roomc);
		train.setAttribute("indate", indate);
		train.setAttribute("outdate", outdate);
		
		System.out.println("wef" +adult);
	int reg=0;
		Connection con=(Connection) dbcon.create();
		
		try {
				
				PreparedStatement ps=con.prepareStatement("INSERT INTO train.largebook VALUES(id,?,?,?,?,?,?,?,?)");
				ps.setString(1, city);
				ps.setString(2, indate);
				ps.setString(3, outdate);
				ps.setString(4, roomc);
				ps.setString(5, adult);
				ps.setString(6, child);
				ps.setString(7, email);
				ps.setString(8, phone);
				
				reg=ps.executeUpdate();

	} catch (SQLException e) {
	//TODO Auto-generated catch block
	e.printStackTrace();
	}
		if(reg==1){
			response.sendRedirect("largebookpayment.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}
		
		}

	}
