package com.jverrecchia.initializr.builder.mode;

import java.util.ArrayList;
import java.util.List;

import com.jverrecchia.initializr.builder.files.File;
import com.jverrecchia.initializr.builder.modules.Insert;
import com.jverrecchia.initializr.builder.modules.Module;
import com.jverrecchia.initializr.builder.modules.Modules;

public abstract class Mode {

	private String name;
	
	private List<File> files = new ArrayList<File>();

	public void addModulesFiles(Modules modules){
		for (Module currentModule : modules.getModules()){
			for (Insert currentInsert : currentModule.getInserts()){
				if (currentInsert.getType() != null && currentInsert.getType().equals("file"))
					this.files.add(new File(currentInsert.getWhere(), "builder/modules/" + currentModule.getId() + "/" + currentInsert.getWhat(), true, false));
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
}
