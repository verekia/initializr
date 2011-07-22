package com.jverrecchia.initializr.builder.mode;

import com.jverrecchia.initializr.builder.files.File;

public class Empty extends Mode{ 
	
	public Empty(){
		this.setName("Empty Build");
		this.setFileName("empty-initializr");
		this.getFiles().add(new File("index.html", "builder/templates/index.html", true, true));
		this.getFiles().add(new File("css/style.css", "builder/templates/style.css", true, true));
		this.getFiles().add(new File("js/script.js", "builder/templates/script.js", true, true));
	}
}
