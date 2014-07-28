package ar.com.vga.action;

import ar.com.vga.bo.BlogEntriesBO;

public class SingleAction extends AbstractAction {

	private BlogEntry entry;

	private Long id;

	private BlogEntriesBO blogBo = new BlogEntriesBO();

	private static final long serialVersionUID = 4899761917248012629L;

	public String prepareShow() {
		entry = blogBo.getEntry(id);
		return SUCCESS;
	}
	
	public String admin(){
		entry = new BlogEntry();
		if(id != null && id.equals(Long.valueOf(0l))){			
			entry = blogBo.getEntry(id);
		}
			
		return "createEdit";
	}
	
	public String save(){
		blogBo.save(entry);
		return SUCCESS;
	}

	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public BlogEntry getEntry() {
		return entry;
	}

	public void setEntry(BlogEntry entry) {
		this.entry = entry;
	}

}
