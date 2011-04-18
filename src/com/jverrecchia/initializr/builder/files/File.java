package com.jverrecchia.initializr.builder.files;

public class File {
	
	private String realPath;
	
	private boolean modify;
	
	

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

}
