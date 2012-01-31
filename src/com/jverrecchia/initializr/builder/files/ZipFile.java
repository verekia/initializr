package com.jverrecchia.initializr.builder.files;

import java.io.IOException;

import com.jverrecchia.initializr.builder.Utils;
import com.jverrecchia.initializr.builder.mode.Mode;

public class ZipFile { 
	private TemplateFile template;
	private String zipPath;
	private String content;
	private boolean included;
	private byte[] bytesData;
	
	public String getZipPath() {
		return zipPath;
	}
	public void setZipPath(String zipPath) {
		this.zipPath = zipPath;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public boolean isIncluded() {
		return included;
	}
	public void setIncluded(boolean included) {
		this.included = included;
	}
	
	public void fillContent(Mode mode){
		this.template.readTemplateFile(mode);
		this.content = this.template.getZipContent();
	}
	public void setTemplate(TemplateFile template) {
		this.template = template;
	}
	public TemplateFile getTemplate() {
		return template;
	}

	public void copyContent(File file){
		try {
			bytesData = Utils.getBytesFromFile(new java.io.File(file.getTemplatePath()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void setBytesData(byte[] bytesData) {
		this.bytesData = bytesData;
	}
	public byte[] getBytesData() {
		return bytesData;
	}
}
