package com.marklogic.presentationml;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class Application {
	
	public static void main(String[] args) {
		
		try {
			File out = new File("example.pptx");
			Resource dir = new ClassPathResource("powerpoint/");
			ZipUtility zipUtil = new ZipUtility();
			zipUtil.zip(dir.getFile(), out);	
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	


}
