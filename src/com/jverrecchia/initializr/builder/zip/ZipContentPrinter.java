package com.jverrecchia.initializr.builder.zip;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import com.jverrecchia.initializr.builder.files.ZipFile;

public class ZipContentPrinter { 
	private Zip zip;
	private HttpServletResponse resp;
	
	public ZipContentPrinter(HttpServletResponse resp, Zip zip){
		this.resp = resp;
		this.zip = zip;
	}
	
	public void printZip() throws IOException{
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		out.println(zip.getFilename());
		
		for (ZipFile currentFile : zip.getZipFiles()){
			out.println("<h1>" + currentFile.getZipPath() + "</h1>");
			//System.err.println(currentFile.getZipPath());
			if (currentFile.getContent() == null)
				out.println("<xmp>" + new String(currentFile.getBytesData()) + "</xmp>");
			else
				out.println("<xmp>" + currentFile.getContent() + "</xmp>");
		}
		
		
		
	}
	

}
