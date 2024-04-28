package data;

import java.sql.*;

public class dbcon {
	public static Connection regist() throws SQLException ,ClassNotFoundException
    {
        Connection dbs;
        Class.forName("com.mysql.jdbc.Driver");
       dbs = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","admin");
        
        return dbs;
                
    }
	
}
