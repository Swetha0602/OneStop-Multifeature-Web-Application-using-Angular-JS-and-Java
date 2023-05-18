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
 * Servlet implementation class registerservlet
 */
@WebServlet("/registerservlet")
public class registerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerservlet() {
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
	
	String name=request.getParameter("uname");
	String ename=request.getParameter("ename");
	String pname=request.getParameter("pname");
	String number=request.getParameter("number");
	
	
int reg=0;
	Connection con=(Connection) dbcon.create();
	
	try {
			
			PreparedStatement ps=con.prepareStatement("INSERT INTO train.userlist VALUES(id,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, ename);
			ps.setString(3, pname);
			ps.setString(4, number);
			
			
			reg=ps.executeUpdate();

} catch (SQLException e) {
//TODO Auto-generated catch block
e.printStackTrace();
}
	if(reg==1){
		response.sendRedirect("login.jsp");
	}
	else{
		response.sendRedirect("error.jsp");
	}
	
	}

}
