package com.jverrecchia.initializr.builder.mode;

import com.jverrecchia.initializr.builder.files.File;

public class Boilerplate extends Mode {
	
	public Boilerplate(){
		this.setName("boilerplate-initializr");
		this.getFiles().add(new File("index.html", "builder/templates/index.html", true, true));
	}
}
