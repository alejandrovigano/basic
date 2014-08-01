package ar.com.vga.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import ar.com.vga.MySQLAccess;
import ar.com.vga.entities.BlogEntry;

public class EntryDao extends MySQLAccess{
	
	private static Logger logger = Logger.getLogger("EntryDao");
	public static String SELECT_TOP = "SELECT * FROM POSTS LIMIT ? , ?";

	public List<BlogEntry> getLastestEntries(int page) throws Exception{
		Connection con = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			con = getConnection();
			statement = con.prepareStatement(SELECT_TOP); 
			statement.setInt(1, 0);
			statement.setInt(2, 3);
			resultSet = statement.executeQuery();
			return convertToBlogEntries(resultSet); 

		} catch (SQLException e) {
			logger.log(Level.INFO, "Hubo un error al obtener las entidades", e);
			return null;
		} finally {
			close(con);
			close(statement);
			close(resultSet);
		}
	}
	

	
	private List<BlogEntry> convertToBlogEntries(ResultSet resultSet)
			throws SQLException {
		List<BlogEntry> list = new ArrayList<>();
		while (resultSet.next()) {
			Long id = resultSet.getLong("ID");
			String titulo = resultSet.getString("TITULO");
			String content = resultSet.getString("CONTENT");
			String autor = resultSet.getString("AUTOR");
			Long idImagen = resultSet.getLong("IMAGEN");
			Date fechaCreacion = resultSet.getDate("FECHA_CREACION");
			Date fechaExpiracion = resultSet.getDate("FECHA_EXPIRACION");
			String soundcloud = resultSet.getString("SOUNDCLOUD");
			String youtube = resultSet.getString("YOUTUBE");
			Double precio = resultSet.getDouble("PRECIO");
			
			BlogEntry entry = new BlogEntry();
			entry.setId(id);
			entry.setTitulo(titulo);
			entry.setContent(content);
			entry.setAutor(autor);
			entry.setIdImagen(idImagen); 
			entry.setFechaCreacion(fechaCreacion);
			entry.setFechaExpiracion(fechaExpiracion);
			entry.setSoundcloud(soundcloud);
			entry.setYoutube(youtube);
			entry.setPrecio(precio);
			
			list.add(entry);

		}
		return list;
	}
}
