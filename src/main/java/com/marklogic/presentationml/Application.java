package com.marklogic.presentationml;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.util.Deque;
import java.util.LinkedList;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class Application {
	
	public static void main(String[] args) {
		
		try {
			File out = new File("example.pptx");
			Resource dir = new ClassPathResource("powerpoint/");
			zip(dir.getFile(), out);	
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	@SuppressWarnings("resource")
	public static void zip(File dir, File zipFile) throws IOException {
	    URI base = dir.toURI();
	    Deque<File> queue = new LinkedList<File>();
	    queue.push(dir);
	    OutputStream out = new FileOutputStream(zipFile);
	    Closeable res = out;
	    try {
	      ZipOutputStream zout = new ZipOutputStream(out);
	      res = zout;
	      while (!queue.isEmpty()) {
	        dir = queue.pop();
	        for (File kid : dir.listFiles()) {
	          String name = base.relativize(kid.toURI()).getPath();
	          if (kid.isDirectory()) {
	            queue.push(kid);
	            name = name.endsWith("/") ? name : name + "/";
	            zout.putNextEntry(new ZipEntry(name));
	          } else {
	            zout.putNextEntry(new ZipEntry(name));
	            copy(kid, zout);
	            zout.closeEntry();
	          }
	        }
	      }
	    } finally {
	      res.close();
	    }
	  }
	
	private static void copy(InputStream in, OutputStream out) throws IOException {
	    byte[] buffer = new byte[1024];
	    while (true) {
	      int readCount = in.read(buffer);
	      if (readCount < 0) {
	        break;
	      }
	      out.write(buffer, 0, readCount);
	    }
	  }

	  private static void copy(File file, OutputStream out) throws IOException {
	    InputStream in = new FileInputStream(file);
	    try {
	      copy(in, out);
	    } finally {
	      in.close();
	    }
	  }
/*
	  private static void copy(InputStream in, File file) throws IOException {
	    OutputStream out = new FileOutputStream(file);
	    try {
	      copy(in, out);
	    } finally {
	      out.close();
	    }
	  }
*/


}
