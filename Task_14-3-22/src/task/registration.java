package task;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class registration
 */
@WebServlet("/registration")
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registration() {
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
		
		try{

							String uname=request.getParameter("uname");
							String email=request.getParameter("semail");
							String password=request.getParameter("spswd");
						
							
							Connection db = (Connection) dbcon.regist();
							Statement st = (Statement) db.createStatement();
							String query;            
							query ="insert into signup values('"+uname+"','"+email+"','"+password+"')";
							st.executeUpdate(query);
							System.out.println("Data is Added in Table:");

		}
		catch(Exception e)
		{
						System.out.println(e);
		}
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	        rd.include(request,response);
	}

}
