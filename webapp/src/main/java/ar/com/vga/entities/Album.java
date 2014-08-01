package ar.com.vga.entities;

import java.util.List;

public class Album {

	private String name;
	private List<Image> imagenes;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Image> getImagenes() {
		return imagenes;
	}
	public void setImagenes(List<Image> imagenes) {
		this.imagenes = imagenes;
	}
	
	
	
}
