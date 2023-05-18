package dbcon;
import java.sql.Connection;
import java.sql.DriverManager;
	

public class dbcon{

		static Connection con;

		public static Connection create(){
			try{
				Class.forName("com.mysql.jdbc.Driver");  
					con=DriverManager.getConnection("jdbc:mysql://localhost:3306/train","root","root");	 
			}catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return con;

}
}
