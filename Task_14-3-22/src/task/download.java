package task;

import java.io.*;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import task.dbcon;
/**
 * Servl et implementation class download
 */
@WebServlet("/download")
public class download extends HttpServlet {
	private static final long serialVersionUID = 1L;
       public static String original;
	public int length;
	public DataInputStream in;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public download() {
        super();
        // TODO Auto-generated constructor stub
    }

 
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String data="";
		StringBuilder sb=new StringBuilder();
		ServletOutputStream os=response.getOutputStream();
		String fname=request.getParameter("fname");
		
		try
		{
		//String email = (String) session.getAttribute("email");
		Connection db = dbcon.regist();
		String query="select * from file where fname='"+fname+"'";
		
		Statement stmt=db.createStatement();
		ResultSet rs=stmt.executeQuery(query);
		if(rs.next())
		{
		
			data=rs.getString("fdata");
			sb.append(data);
		}
				System.out.println(data);
				response.setContentType("text/plain");
				response.setHeader("Content-Type","application/octet-stream");
				response.setHeader("Content-Disposition","attachment; filename=\"" + fname + "\"");
			
				
				
				os.println(sb.toString());
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		//RequestDispatcher rd = request.getRequestDispatcher("download.jsp");
		//rd.include(request,response);
		
	}
   

			/**
			 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
			 */
			protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				// TODO Auto-generated method stub
			}

}

	
	 
	
