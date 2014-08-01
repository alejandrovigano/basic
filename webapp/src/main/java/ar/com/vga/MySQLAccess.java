package ar.com.vga;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import ar.com.vga.entities.BlogEntry;

public class MySQLAccess {

	private static Logger logger = Logger.getLogger("MySQLAccess");

	private String host;
	private String port;
	private String user;
	private String password;
	private String database;

	private Connection con;
	
	public MySQLAccess() {
		
		host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
		port = ":" + System.getenv("OPENSHIFT_MYSQL_DB_PORT");
		user = System.getenv("OPENSHIFT_MYSQL_DB_USERNAME");
		password = System.getenv("OPENSHIFT_MYSQL_DB_PASSWORD");
		database = "redalme";

		host = "mysql14.000webhost.com";
		port = "";
		user = "a6000119_redalme";
		password = "almeadmin2972014";
		database = "a6000119_redalme";
	}
 
	protected Connection getConnection() throws Exception{   
		Class.forName("com.mysql.jdbc.Driver");
		
	    if(con == null || con.isClosed()){
	    	con = DriverManager.getConnection("jdbc:mysql://" + host + port
					+ "/" + database + "?" + "user=" + user + "&password="
					+ password);
	    }
	    return con;
	}
	
	// you need to close all three to make sure
	protected void close() {
		close(con);
	}

	protected void close(AutoCloseable c) {
		try {
			if (c != null) {
				c.close();
			}
		} catch (Exception e) {
			// don't throw now as it might leave following closables in
			// undefined state
		}
	}
}