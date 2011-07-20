package com.jverrecchia.initializr.builder.files;

import java.util.List;

import com.jverrecchia.initializr.builder.modules.Module;

public class Files { 

	private List<File> files;
	
	public Files(){
		
	}

	public Files(List<Module> modules) {
		// TODO Auto-generated constructor stub
	}

	public void setFiles(List<File> files) {
		this.files = files;
	}

	public List<File> getFiles() {
		return files;
	}
	
}
