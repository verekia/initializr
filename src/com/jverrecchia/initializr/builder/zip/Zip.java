package com.jverrecchia.initializr.builder.zip;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.servlet.http.HttpServletResponse;

import com.jverrecchia.initializr.builder.Const;
import com.jverrecchia.initializr.builder.files.ZipFile;
import com.jverrecchia.initializr.builder.mode.Mode;

public class Zip { 
	private String filename;
	private HttpServletResponse resp;
	private byte[] byteData;
	private Mode mode;
	private List<ZipFile> zipFiles;
	
	
	public Zip(HttpServletResponse resp, Mode mode, List<ZipFile> zipFiles) {
		this.mode = mode;
		this.resp = resp;
		this.setZipFiles(zipFiles);
		this.filename = this.mode.getFileName() + "-" + Const.version + ".zip";
	}
	
	
	public void setByteData(byte[] byteData) {
		this.byteData = byteData;
	}
	public byte[] getByteData() {
		return byteData;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFilename() {
		return filename;
	}
	
	private void generateZip(List<ZipFile> zipfiles){
		try {
	        ByteArrayOutputStream bos = new ByteArrayOutputStream(); 
	        ZipOutputStream zipOut = new ZipOutputStream(bos); 


	        
	        for (ZipFile currentZipFile : zipfiles){
	        	ZipEntry entry = new ZipEntry("initializr/" + currentZipFile.getZipPath());
	        	zipOut.putNextEntry(entry);
	        	
	        	byte[] theByteArray = null;
	        	if (currentZipFile.getContent() != null){
	        	String stringToConvert = currentZipFile.getContent();
	        	theByteArray = stringToConvert.getBytes();
	        	}
	        	else
	        		theByteArray = currentZipFile.getBytesData();
		        zipOut.write(theByteArray);	        	
	        }

	        zipOut.putNextEntry(new ZipEntry("initializr/img/"));
			zipOut.finish(); 
	        byteData = bos.toByteArray(); 
	
		} catch (IOException e) {
			e.printStackTrace();
		}
	}	
	
	public void sendZip(List<ZipFile> zipfiles){
		generateZip(zipfiles);

        resp.setContentType("application/zip"); 
        resp.setContentLength(byteData.length); 
        resp.setHeader("Content-Disposition", "inline; filename=" + this.filename); 
        try {
			resp.getOutputStream().write(byteData);
		} catch (IOException e) {
			e.printStackTrace();
		} 		
	}

	public void setZipFiles(List<ZipFile> zipFiles) {
		this.zipFiles = zipFiles;
	}


	public List<ZipFile> getZipFiles() {
		return zipFiles;
	}	
}
