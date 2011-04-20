package com.jverrecchia.initializr.builder.files;

public class File {
	
	private String realPath;
	private String templatePath;
	private boolean modify;
	
	public File(String realPath, String templatePath, boolean modify) {
		this.realPath = realPath;
		this.templatePath = templatePath;
		this.modify = modify;
	}
	public String getRealPath() {
		return realPath;
	}
	public void setRealPath(String realPath) {
		this.realPath = realPath;
	}

	public boolean isModify() {
		return modify;
	}
	public void setModify(boolean modify) {
		this.modify = modify;
	}
	public void setTemplatePath(String templatePath) {
		this.templatePath = templatePath;
	}
	public String getTemplatePath() {
		return templatePath;
	}

}
