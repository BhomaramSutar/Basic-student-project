package task;

import java.sql.*;

public class dbcon {
	public static Connection regist() throws SQLException ,ClassNotFoundException
    {
        Connection dbs;
        Class.forName("com.mysql.jdbc.Driver");
       dbs = DriverManager.getConnection("jdbc:mysql://localhost:3306/task","root","admin");
        
        return dbs;
                
    }
	
}
