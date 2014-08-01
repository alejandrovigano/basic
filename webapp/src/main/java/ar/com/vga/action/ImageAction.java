package ar.com.vga.action;

import java.io.File;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;
 
public class ImageAction extends ActionSupport implements
        ServletRequestAware {
    private File userImage;
    private String userImageFileName;
 
    private HttpServletRequest servletRequest;
 
    public String execute() {
        try {
    		String path = System.getenv("$OPENSHIFT_DATA_DIR");

            File fileToCreate = new File(path, this.userImageFileName);
 
            FileUtils.copyFile(this.userImage, fileToCreate);
        } catch (Exception e) {
            e.printStackTrace();
            addActionError(e.getMessage());
 
            return INPUT;
        }
        return SUCCESS;
    }
 
    public File getUserImage() {
        return userImage;
    }
 
    public void setUserImage(File userImage) {
        this.userImage = userImage;
    }
 
    public String getUserImageFileName() {
        return userImageFileName;
    }
 
    public void setUserImageFileName(String userImageFileName) {
        this.userImageFileName = userImageFileName;
    }
 
    @Override
    public void setServletRequest(HttpServletRequest servletRequest) {
        this.servletRequest = servletRequest;
 
    }
}