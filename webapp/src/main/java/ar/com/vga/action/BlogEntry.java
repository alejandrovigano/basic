package ar.com.vga.action;

import java.util.Date;

import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.Text;

public class BlogEntry {

	public static String CONTENT = "content";
	public static String AUTOR = "autor";
	public static String TITULO = "titulo";
	public static String IMAGE_URL = "imageUrl";
	public static String FECHA_CREACION = "fechaCreacion";

	private String content;
	private String autor;
	private String titulo;
	private String imageurl;
	private Date fechaCreacion;
	private String soundcloudUrl;
	private double precio;
	private Key key;
	private long id;

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public String getSoundcloudUrl() {
		return soundcloudUrl;
	}

	public void setSoundcloudUrl(String soundcloudUrl) {
		this.soundcloudUrl = soundcloudUrl;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Key getKey() {
		return key;
	}

	public void setKey(Key key) {
		this.key = key;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getImageurl() {
		return imageurl;
	}

	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}

	public Date getFechaCreacion() {
		return fechaCreacion;
	}

	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}

	public Entity toEntity() {

		Entity entity = new Entity("BlogEntryTest");

		entity.setProperty(AUTOR, getAutor());
		entity.setProperty(CONTENT, getContent());
		entity.setProperty(TITULO, getTitulo());
		entity.setProperty(IMAGE_URL, getImageurl());
		entity.setProperty(FECHA_CREACION, getFechaCreacion());

		return entity;
	}

}
