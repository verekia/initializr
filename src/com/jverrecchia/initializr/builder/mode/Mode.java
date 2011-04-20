package com.jverrecchia.initializr.builder.mode;

import java.util.ArrayList;
import java.util.List;

import com.jverrecchia.initializr.builder.files.File;

public abstract class Mode {

	private String name;
	
	private List<File> files = new ArrayList<File>();

	public void setFiles(List<File> files) {
		this.files = files;
	}

	public List<File> getFiles() {
		return files;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}
}
