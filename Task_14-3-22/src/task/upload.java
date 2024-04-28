package task;

import java.io.*;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class upload
 */
@WebServlet("/upload")
public class upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public Statement st;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public upload() {
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

		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String emailid = request.getParameter("emailid");
		String mnumber = request.getParameter("mno");
		String gender = request.getParameter("Gender");
		String dofb = request.getParameter("bdate");
		String address = request.getParameter("address");
		String course = request.getParameter("field");

		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");

		try {

			Connection db = (Connection) dbcon.regist();
			st = (Statement) db.createStatement();

			String query = "insert into student values ('" + fname + "','"
					+ lname + "','" + emailid + "','" + mnumber + "','" + gender
					+ "','" + dofb + "','" + address + "','" + course + "')";

			st.executeUpdate(query);
			System.out.println("Data is Added in Table:");
				
		} catch (Exception e) {
			System.out.println(e);
		}

		RequestDispatcher rd = request.getRequestDispatcher("homepage.jsp");
		rd.include(request, response);
	}
}
