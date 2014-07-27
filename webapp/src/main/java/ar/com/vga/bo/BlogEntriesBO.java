package ar.com.vga.bo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import ar.com.vga.action.BlogEntry;

public class BlogEntriesBO {

	public List<BlogEntry> lastestEntries() {
		return mock();
	}

	public List<BlogEntry> entries(/* filter */) {
		return mock();
	}

	List<BlogEntry> mock() {
		// DatastoreService dataService = DatastoreServiceFactory
		// .getDatastoreService();
		BlogEntry entry = new BlogEntry();
		entry.setAutor("A Vigano");
		entry.setContent("contenido asdfsad \n asdfads \n asdasdas");
		entry.setFechaCreacion(new Date());
		entry.setImageurl("http://i57.tinypic.com/zacra.jpg");
		entry.setTitulo("Ya arrancamos!!");
		entry.setId(11111111111111L);

		// Key key = dataService.put(entry.toEntity());

		// System.out.println(key.getId());

		ArrayList<BlogEntry> entries = new ArrayList<BlogEntry>();
		entries.add(entry);

		BlogEntry entry2 = new BlogEntry();
		entry2.setAutor("A Vigano");
		entry2.setSoundcloudUrl("https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/playlists/6005276&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false");
		entry2.setFechaCreacion(new Date());
		entry2.setImageurl("http://i57.tinypic.com/zacra.jpg");
		entry2.setTitulo("RandomLink!");
		entry2.setId(11111111111112L);
		entries.add(entry2);

		return entries;
	}

	public List<BlogEntry> lastestEvent() {
		return mock();
	}

}
