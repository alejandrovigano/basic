package ar.com.vga.action;

import java.util.List;

import ar.com.vga.bo.BlogEntriesBO;

public class HomeAction extends AbstractAction {

	private static final long serialVersionUID = 4899761917248012629L;

	private BlogEntriesBO blogBo = new BlogEntriesBO();
	private List<BlogEntry> lastEntries;

	public String execute() {
		lastEntries = blogBo.lastestEntries();
		return SUCCESS;
	}

	public List<BlogEntry> getLastEntries() {
		return lastEntries;
	}

	
}
