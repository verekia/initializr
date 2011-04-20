package com.jverrecchia.initializr.builder.mode;

import com.jverrecchia.initializr.builder.files.File;

public class Standard extends Mode{
	
	public Standard(){
		this.setName("jverrecchia-initializr");
		this.getFiles().add(new File("index.html", "builder/templates/index.html", true, true));
		this.getFiles().add(new File("style.css", "builder/templates/style.css", true, true));	
	}
}
