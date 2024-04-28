package data;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class salary
 */
@WebServlet("/salary")
public class salary extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public salary() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{
			Connection db = (Connection) dbcon.regist();
			
			String salary1= request.getParameter("sal1to3");
			String salary2 = request.getParameter("sal4to6");
			String salary3 = request.getParameter("sal7to10");
		
		
			String query;
			query="select * from studreg ";
			
		
		Statement st = (Statement) db.createStatement();
		ResultSet rs=st.executeQuery(query);
		
						while(rs.next())
						{
						
									System.out.println(rs.getString(1)); 
									System.out.println(rs.getString(2));
									System.out.println(rs.getString(3)); 
									System.out.println(rs.getString(4));
									System.out.println(rs.getString(5)); 
									System.out.println(rs.getString(6));
									System.out.println(rs.getString(7));
									System.out.println(rs.getString(8)); 
									System.out.println(rs.getString(9)); 
						}
	    }
	catch(Exception e)
	{
	  	  e.printStackTrace();
	    }	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
