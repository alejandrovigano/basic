package ar.com.vga.action;

import java.util.List;

import ar.com.vga.bo.BlogEntriesBO;

public class HomeAction extends AbstractAction {

	private static final long serialVersionUID = 4899761917248012629L;

	private BlogEntriesBO blogBo = new BlogEntriesBO();
	private List<BlogEntry> lastEntries;
	private List<BlogEntry> eventEntries;

	public List<BlogEntry> getEventEntries() {
		return eventEntries;
	}

	public String execute() {
		lastEntries = blogBo.lastestEntries();
		eventEntries = blogBo.lastestEvent();
		return SUCCESS;
	}

	public List<BlogEntry> getLastEntries() {
		return lastEntries;
	}

}
