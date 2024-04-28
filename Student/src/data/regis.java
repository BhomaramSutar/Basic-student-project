package data;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.dbcon;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class regis
 */
@WebServlet("/regis")
public class regis extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public regis() {
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
			query = "insert into studreg (fname,mobile,email,password,dofb,address,salary,gender)values('"
					+ name
					+ "','"
					+ mnum
					+ "','"
					+ email
					+ "','"
					+ password
					+ "','"
					+ dateb
					+ "','"
					+ address
					+ "','"
					+ salary
					+ "','"
					+ gender + "')";
			st.executeUpdate(query);
			System.out.println("Data is Added in Table:");

		} catch (Exception e) {
			System.out.println(e);
		}
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.include(request, response);
	}

}
