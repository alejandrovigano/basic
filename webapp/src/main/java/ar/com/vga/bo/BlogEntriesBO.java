package ar.com.vga.bo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import ar.com.vga.MySQLAccess;
import ar.com.vga.entities.BlogEntry;

public class BlogEntriesBO {

	public List<BlogEntry> lastestEntries() {
		
		MySQLAccess dao = new MySQLAccess();
		
		return dao.lastestEntries();
	}

	public List<BlogEntry> stickyEntries() {
		MySQLAccess dao = new MySQLAccess();

		return dao.lastestEntries();
	}

	public List<BlogEntry> lastestEvent() {
		MySQLAccess dao = new MySQLAccess();

		return dao.lastestEntries();
	}

	public BlogEntry getEntry(long id) {
		return null;//mock().get(0);
	}

	public void save(BlogEntry entry) {
		// TODO Auto-generated method stub
		
	}

}
