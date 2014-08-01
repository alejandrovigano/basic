package ar.com.vga.bo;

import java.io.File;
import java.io.FileInputStream;

public class ImagesBo {

	void getImage(){
		String path = System.getenv("$OPENSHIFT_DATA_DIR");
		File file = new File(path + "/");  
		//FileInputStream fis = new FileInputStream(file);
	}
	
}
