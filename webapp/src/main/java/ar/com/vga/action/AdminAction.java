package ar.com.vga.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.struts2.util.ServletContextAware;

import ar.com.vga.bo.BlogEntriesBO;
import ar.com.vga.entities.BlogEntry;

public class AdminAction extends AbstractAction implements ServletContextAware {
	/* album */
	private File[] files;
	private String[] filesFileName;
	private String[] filesContentType;
	private String folderName;
	/* post */
	private BlogEntry entry;
	private Long id;
	/* context */
	private ServletContext servletContext;
	private BlogEntriesBO blogBo = new BlogEntriesBO();

	private static final long serialVersionUID = 4899761917248012629L;

	public String admin() {
		entry = new BlogEntry();
		if (id != null && id.equals(Long.valueOf(0l))) {
			entry = blogBo.getEntry(id);
		}

		return "createEdit";
	}

	public String uploadFiles() throws Exception {
		FileInputStream fileInputStream = null;
		FileOutputStream fileOutputStream = null;

		try {
			for (int i = 0; i < files.length; i++) {

				File f = buildTargetFile(files[i],filesFileName[i]); 

				fileInputStream = new FileInputStream(files[i]);

				FileUtils.copyFile(files[i], f);
			}
		} catch (Exception e) {
			addActionError("Hubo un error al subir los archivos!!! : "
					+ e.getMessage());
			return INPUT;
		} finally {
			if (fileInputStream != null) {
				fileInputStream.close();
			}
			if (fileOutputStream != null) {
				fileOutputStream.close();
			}
		}
		addActionMessage("Archivo(s) cargados correctamente!");
		return SUCCESS;
	}

	private File buildTargetFile(File file, String filesFileName2) { 

		String extension = FilenameUtils.getExtension(filesFileName2);

		String newUuid = UUID.randomUUID().toString();

		String path = getDataPath();
		
		File targetFile = new File(path + File.separator + folderName + File.separator +  newUuid
				+ "." + extension);

		return targetFile;
	}

	public String save() {
		blogBo.save(entry);
		return SUCCESS;
	}

	private String getDataPath() {
		String path = System.getenv("$OPENSHIFT_DATA_DIR");
		return path; 
	}

	public File[] getFiles() {
		return files;
	}

	public void setFiles(File[] files) {
		this.files = files;
	}

	public String[] getFilesFileName() {
		return filesFileName;
	}

	public void setFilesFileName(String[] filesFileName) {
		this.filesFileName = filesFileName;
	}

	public String[] getFilesContentType() {
		return filesContentType;
	}

	public void setFilesContentType(String[] filesContentType) {
		this.filesContentType = filesContentType;
	}

	public String getFolderName() {
		return folderName;
	}

	public void setFolderName(String folderName) {
		this.folderName = folderName;
	}

	public BlogEntry getEntry() {
		return entry;
	}

	public void setEntry(BlogEntry entry) {
		this.entry = entry;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public BlogEntriesBO getBlogBo() {
		return blogBo;
	}

	public void setBlogBo(BlogEntriesBO blogBo) {
		this.blogBo = blogBo;
	}

	public ServletContext getServletContext() {
		return servletContext;
	}

	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
	}
}
