package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbcon.dbcon;

/**
 * Servlet implementation class alldataservlet
 */
@WebServlet("/alldataservlet")
public class alldataservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public alldataservlet() {
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

		String fro=request.getParameter("from");
		String to=request.getParameter("to");
		String tnam=request.getParameter("tname");
		String stim=request.getParameter("stime");
		String etim=request.getParameter("etime");
		String dat=request.getParameter("date");
		String adul=request.getParameter("adult");
		String seattyp=request.getParameter("seattype");
		String coac=request.getParameter("coach");
		String Nam=request.getParameter("Name");
		String ag=request.getParameter("age");
		String contac=request.getParameter("contact");
		String an=request.getParameter("ano");
		String amount=request.getParameter("amount");
		String cardnumber=request.getParameter("cardnumber");
		String expirymonth=request.getParameter("expirymonth");
		String expiryyear=request.getParameter("expiryyear");
		String cvv=request.getParameter("cvv");
		String ph=request.getParameter("ph");
		String child=request.getParameter("child");
		
		HttpSession train=request.getSession();
		train.setAttribute("name", Nam);
		train.setAttribute("from", fro);
		train.setAttribute("to", to);
		train.setAttribute("date", dat);
		train.setAttribute("adult", adul);
	int reg=0;
		Connection con=(Connection) dbcon.create();
		
		try {
				
				PreparedStatement ps=con.prepareStatement("INSERT INTO train.alldatadetails VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1, fro);
				ps.setString(2, to);
				ps.setString(3, tnam);
				ps.setString(4, stim);
				ps.setString(5, etim);
				ps.setString(6, dat);
				ps.setString(7, adul);
				ps.setString(8, seattyp);
				ps.setString(9, coac);
				ps.setString(10, Nam);
				ps.setString(11, ag);
				ps.setString(12, contac);
				ps.setString(13, an);
				ps.setString(14, cardnumber);
				ps.setString(15, expirymonth);
				ps.setString(16, expiryyear);
				ps.setString(17, cvv);
				ps.setString(18, ph);
				ps.setString(19, amount);
				ps.setString(20, child);
				reg=ps.executeUpdate();

	} catch (SQLException e) {
	//TODO Auto-generated catch block
	e.printStackTrace();
	}
		if(reg==1){
			
			System.out.println("train"+tnam);
			System.out.println("adult"+adul);
			System.out.println("seat"+seattyp);
			try {
					
					PreparedStatement ps=con.prepareStatement("SELECT * FROM `train`.` trainsnames` where Trains='"+tnam+"'");
			
					
					ResultSet rs=ps.executeQuery();
					
					if(seattyp.equals("1A")){
						int seat=0;
						
						System.out.println("succes");
					while(rs.next())
					{
						
						System.out.println(rs.getInt(9));
						seat=rs.getInt(9);
					}
					seat=seat-Integer.valueOf(adul);
					Statement st=con.createStatement();
					st.executeUpdate("UPDATE train.` trainsnames` t SET 1A='"+seat+"' where Trains='"+tnam+"' ");
					
					}
					
					if(seattyp.equals("2A")){
						int seat=0;
						
						System.out.println("succes");
					while(rs.next())
					{
						
						System.out.println(rs.getInt(10));
						seat=rs.getInt(10);
					}
					seat=seat-Integer.valueOf(adul);
					Statement st=con.createStatement();
					st.executeUpdate("UPDATE train.` trainsnames` t SET 2A='"+seat+"' where Trains='"+tnam+"' ");
					
					}
					
					if(seattyp.equals("3A")){
						int seat=0;
						
						System.out.println("succes");
					while(rs.next())
					{
						
						System.out.println(rs.getInt(12));
						seat=rs.getInt(12);
					}
					seat=seat-Integer.valueOf(adul);
					Statement st=con.createStatement();
					st.executeUpdate("UPDATE train.` trainsnames` t SET 3A='"+seat+"' where Trains='"+tnam+"' ");
					
					}
					if(seattyp.equals("SL")){
						int seat=0;
						
						System.out.println("succes");
					while(rs.next())
					{
						
						System.out.println(rs.getInt(11));
						seat=rs.getInt(11);
					}
					seat=seat-Integer.valueOf(adul);
					Statement st=con.createStatement();
					st.executeUpdate("UPDATE train.` trainsnames` t SET SL='"+seat+"' where Trains='"+tnam+"' ");
					
					}
					
					
					if(seattyp.equals("2S")){
						int seat=0;
						
						System.out.println("succes");
					while(rs.next())
					{
						
						System.out.println(rs.getInt(13));
						seat=rs.getInt(13);
					}
					seat=seat-Integer.valueOf(adul);
					Statement st=con.createStatement();
					st.executeUpdate("UPDATE train.` trainsnames` t SET 2S='"+seat+"' where Trains='"+tnam+"' ");
					}
			}
					
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				}
					
			
			response.sendRedirect("ticket.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}
		
		}

	}
