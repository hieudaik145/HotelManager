package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
	public static String hostName = "localhost";
    public static String sqlInstanceName = "300-FRS-V258\\SQLEXPRESS";
    public static String database = "DreamHotel";
    public static String userName = "sa";
    public static String password = "123";
	public  Connection getSQLServerConnection()
	         throws SQLException, ClassNotFoundException {
	    
	 
	     return getSQLServerConnection(hostName, sqlInstanceName, database,
	             userName, password);
	 }
	 
	 
	 public    Connection getSQLServerConnection(String hostName,
	         String sqlInstanceName, String database, String userName,
	         String password) throws ClassNotFoundException, SQLException {
	  
	     Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	 
	     
	     String connectionURL = "jdbc:sqlserver://" + hostName + ":1433"
	    		 + ";instance=" + sqlInstanceName + ";databaseName=" + database;
	 
	     Connection conn = 
	    		 DriverManager.getConnection(connectionURL, userName,
	             password);
	     return conn;
	 }
	 
	

/*	public static void main(String[] args) {

		System.out.println("Get connection ... ");

		Connection conn=null;
		try {
			conn = ConnectDB.getSQLServerConnection(hostName, sqlInstanceName, database, userName, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println("Get connection " + conn);

		System.out.println("Done!");
		System.out.println("Hello World");
	}*/
}