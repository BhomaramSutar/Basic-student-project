package data;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class update
 */
@WebServlet("/update")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public update() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String id = request.getParameter("id");

			String name = request.getParameter("fname");
			String mnum = request.getParameter("mnum");

			String email = request.getParameter("email");
			String password = request.getParameter("pass");

			String dateb = request.getParameter("dofb");
			String address = request.getParameter("address");

			String salary = request.getParameter("sal");
			String gender = request.getParameter("gender");

			Connection db = (Connection) dbcon.regist();
			Statement st = (Statement) db.createStatement();
			String query;
			query = "update studreg set fname = '" + name + "',mobile = '"
					+ mnum + "',email='" + email + "', password='" + password
					+ "',dofb='" + dateb + "',address='" + address
					+ "',salary='" + salary + "',gender='" + gender + "'  where id='"+id+"'";
			
			PreparedStatement pst	 = (PreparedStatement) db.prepareStatement(query);
			st.executeUpdate(query);
			pst.setString(1,name);
			pst.setString(2,mnum);
			pst.setString(3,email);
			pst.setString(4,password);
			pst.setString(5,dateb);
			pst.setString(6,address);
			pst.setString(7,salary);
			pst.setString(8,gender);
			pst.executeUpdate();
			System.out.println("Data is Added in Table:");

		} catch (Exception e) {
			System.out.println(e);
		}
		RequestDispatcher rd = request.getRequestDispatcher("search.jsp");
		rd.include(request, response);
	}
}
