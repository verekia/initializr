package com.jverrecchia.initializr.builder.files;

public class ZipFile {
	private TemplateFile template;
	private String zipPath;
	private String content;
	private boolean included;
	
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
	
	public void fillContent(){
		this.template.readTemplateFile();
		this.content = this.template.getZipContent();
	}
	public void setTemplate(TemplateFile template) {
		this.template = template;
	}
	public TemplateFile getTemplate() {
		return template;
	}
	
}
