package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLDatabaseUtils {
	public static Connection getConnection() throws SQLException, ClassNotFoundException{
		String className="com.mysql.cj.jdbc.Driver";
		Class.forName(className);
		
		System.out.println("driver loaded");
		
		String url = "jdbc:mysql://localhost:3306/flights?allowPublicKeyRetrieval=true&useSSL=false";
		String user = "root";
		String password = "Preetiadmin1*";
		
		Connection connection = DriverManager.getConnection(url, user, password);
		
		return connection;
	}
}
