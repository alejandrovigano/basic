package ar.com.vga.action;

import ar.com.vga.bo.BlogEntriesBO;

public class SingleAction extends AbstractAction {

	private BlogEntry entry;

	private long id;

	private BlogEntriesBO blogBo = new BlogEntriesBO();

	private static final long serialVersionUID = 4899761917248012629L;

	public String prepareShow() {
		entry = blogBo.getEntry(id);
		return SUCCESS;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public BlogEntry getEntry() {
		return entry;
	}

	public void setEntry(BlogEntry entry) {
		this.entry = entry;
	}

}
