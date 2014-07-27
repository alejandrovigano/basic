package ar.com.vga.action;

public class SingleAction extends AbstractAction {

	private BlogEntry entry;

	private static final long serialVersionUID = 4899761917248012629L;

	public String prepareShow() {

		return SUCCESS;
	}

	public BlogEntry getEntry() {
		return entry;
	}

	public void setEntry(BlogEntry entry) {
		this.entry = entry;
	}

}
