package ar.com.vga.action;

import java.util.List;

import ar.com.vga.bo.BlogEntriesBO;
import ar.com.vga.entities.BlogEntry;

public class BlogAction extends AbstractAction {

	private static final long serialVersionUID = 4899761917248012629L;

	private List<BlogEntry> entries;
	private BlogEntry entry;
	private BlogEntriesBO blogBo = new BlogEntriesBO();


	public String prepareShow() {
	//	entries = blogBo.entries();
		return SUCCESS;
	}

	public List<BlogEntry> getEntries() {
		return entries;
	}

	public void setEntries(List<BlogEntry> entries) {
		this.entries = entries;
	}

	public BlogEntry getEntry() {
		return entry;
	}

	public void setEntry(BlogEntry entry) {
		this.entry = entry;
	}

}
