package ar.com.vga;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import ar.com.vga.action.BlogEntry;

public class MySQLAccess {

	private static Logger logger = Logger.getLogger("MySQLAccess");
	private Connection connect = null;
	private Statement statement = null;
	private ResultSet resultSet = null;

	public List<BlogEntry> lastestEntries() {
		try {
			// this will load the MySQL driver, each DB has its own driver
			Class.forName("com.mysql.jdbc.Driver");
			// setup the connection with the DB.
			connect = DriverManager.getConnection("jdbc:mysql://"
					+ System.getenv("OPENSHIFT_MYSQL_DB_HOST") + ":"
					+ System.getenv("OPENSHIFT_MYSQL_DB_PORT") + "/redpage?"
					+ "user=" + System.getenv("OPENSHIFT_MYSQL_DB_USERNAME")
					+ "&password="
					+ System.getenv("OPENSHIFT_MYSQL_DB_PASSWORD"));
			statement = connect.createStatement();
			resultSet = statement
					.executeQuery("SELECT * FROM  POSTS LIMIT 0 , 3");
			return writeResultSet(resultSet);

		} catch (Exception e) {
			logger.log(Level.INFO, "Hubo un error al obtener las entidades", e);
			return null;
		} finally {
			close();
		}

	}

	private List<BlogEntry> writeResultSet(ResultSet resultSet)
			throws SQLException {
		List<BlogEntry> list = new ArrayList<>();
		while (resultSet.next()) {
			Long id = resultSet.getLong("ID");
			String titulo = resultSet.getString("TITULO");
			String content = resultSet.getString("CONTENT");

			BlogEntry entry = new BlogEntry();
			entry.setId(id);
			entry.setTitulo(titulo);
			entry.setContent(content);

			list.add(entry);

		}
		return list;
	}

	// you need to close all three to make sure
	private void close() {
		close(resultSet);
		close(statement);
		close(connect);
	}

	private void close(AutoCloseable c) {
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