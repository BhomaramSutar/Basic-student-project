package task;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

import task.dbcon;

/**
 * Servlet implementation class loginv
 */
@WebServlet("/loginv")
public class loginv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginv() {
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
		

		HttpSession session = request.getSession(true);
	
			 try
			    {
							Connection con=  (Connection) dbcon.regist();;
							PreparedStatement ps1, ps2;
					
						        //create statement object
						        ps1 = (PreparedStatement) con.prepareStatement("select count(*) from signup where email = ? and password=?");
						        ps2 = (PreparedStatement) con.prepareStatement("select * from userlist");
						        
						    
						    	String email = request.getParameter("lemail");
						    	
						        String query;
						        Statement st = (Statement) con.createStatement(); 
						        query = " Select * from signup where email = '"+email+"' ";
						        ResultSet rst = st.executeQuery(query);
						        
						    if(rst.next()){
						   
						    		session.setAttribute("email", rst.getString("email"));
						    	
						    }
						        	String param = request.getParameter("s1");
									
						if(param =="link")
						{
										    ResultSet rs = ps2.executeQuery();
										    System.out.println("<table>");
												    while(rs.next())
												    {
												    	System.out.println("<tr>");
												    	System.out.println("<td>"+rs.getString(3)+"</td>");
												    	System.out.println("<td>"+rs.getString(4)+"</td");
												    	System.out.println("</tr>");
												    }
										    System.out.println("</table>");
										    rs.close();
						}
						else
						{
												    //write jdbc code for authentication
													    String user = request.getParameter("lemail");
													    String pass = request.getParameter("lpswd");
													    //set form data as param value
													    ps1.setString(1,user);
													    ps1.setString(2,pass);
												    //excute the query
														    ResultSet rs = ps1.executeQuery();
														    int cnt = 0;
														    if (rs.next()){
														        cnt = rs.getInt(1);}
														    if(cnt == 0){
														    	 RequestDispatcher rd1 = request.getRequestDispatcher("invalidpass.jsp");
															        rd1.include(request,response);
						 }
							else
								{
													        System.out.println("valid credential.");
													    
															        RequestDispatcher rd = request.getRequestDispatcher("homepage.jsp");
															        rd.include(request,response);
															    	String query2 = "insert into login values('"+user+"','"+pass+"')";            
																	st.executeUpdate(query2);
									}
								}
										        //colse
										        ps1.close();
										        ps2.close();
										        con.close();
						    }
					catch(Exception ex)
								    {
								        ex.printStackTrace();
								    }
			 
				
	}

}
