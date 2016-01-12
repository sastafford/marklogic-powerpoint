package com.marklogic.presentationml;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class Application {
	
	public static void main(String[] args) {
		
		try {
			
			FileOutputStream fos = new FileOutputStream("example.pptx");
			ZipOutputStream zos = new ZipOutputStream(fos);
		
			Resource res = new ClassPathResource("powerpoint/[Content_Types].xml");
			addToZipFile(res, zos);

	
			zos.close();
			fos.close();
	
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	public static void addToZipFile(Resource res, ZipOutputStream zos) throws FileNotFoundException, IOException {
	
		String fileName = res.getFilename();
		System.out.println("Writing '" + fileName + "' to zip file");
		InputStream is = res.getInputStream();
		ZipEntry zipEntry = new ZipEntry(fileName);
		zos.putNextEntry(zipEntry);
	
		byte[] bytes = new byte[1024];
		int length;
		while ((length = is.read(bytes)) >= 0) {
			zos.write(bytes, 0, length);
		}
	
		zos.closeEntry();
		is.close();
	}
	


}
