package com.jverrecchia.initializr.builder.mode;

import java.util.ArrayList;
import java.util.List;

import com.jverrecchia.initializr.builder.files.File;
import com.jverrecchia.initializr.builder.modules.Insert;
import com.jverrecchia.initializr.builder.modules.Module;
import com.jverrecchia.initializr.builder.modules.Modules;

public abstract class Mode { 

	private String id;
	private String name;
	private String fileName;
	private List<String> defaultModulesNames = new ArrayList<String>();
	private List<File> files = new ArrayList<File>();

	public void addModulesFiles(Modules modules){
		for (Module currentModule : modules.getModules()){
			for (Insert currentInsert : currentModule.getInserts()){
				if (currentInsert.getMode() == null || currentInsert.getMode().equals(this.id)){
					if (currentInsert.getType() != null && currentInsert.getType().equals("file"))
						this.files.add(new File(currentInsert.getWhere(), "builder/modules/" + currentModule.getId() + "/" + currentInsert.getWhat(), true, false));
				}
			}
		}		
	}
	
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

	public void setDefaultModulesNames(List<String> defaultModulesNames) {
		this.defaultModulesNames = defaultModulesNames;
	}

	public List<String> getDefaultModulesNames() {
		return defaultModulesNames;
	}

	public void setFileName(String fileName) {
	    this.fileName = fileName;
	}

	public String getFileName() {
	    return fileName;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}
