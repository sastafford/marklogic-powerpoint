package com.marklogic.presentationml;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.util.Deque;
import java.util.LinkedList;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class ZipUtility {
	
	@SuppressWarnings("resource")
	public void zip(File directory, File zipFile) throws IOException {
	    URI base = directory.toURI();
	    Deque<File> queue = new LinkedList<File>();
	    queue.push(directory);
	    OutputStream out = new FileOutputStream(zipFile);
	    Closeable res = out;
	    try {
	      ZipOutputStream zout = new ZipOutputStream(out);
	      res = zout;
	      while (!queue.isEmpty()) {
	        directory = queue.pop();
	        for (File kid : directory.listFiles()) {
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
	
	private void copy(InputStream in, OutputStream out) throws IOException {
	    byte[] buffer = new byte[1024];
	    while (true) {
	      int readCount = in.read(buffer);
	      if (readCount < 0) {
	        break;
	      }
	      out.write(buffer, 0, readCount);
	    }
	  }

	  private void copy(File file, OutputStream out) throws IOException {
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
