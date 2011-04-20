package com.jverrecchia.initializr.builder.mode;

import com.jverrecchia.initializr.builder.files.File;

public class Boilerplate extends Mode {
	
	public Boilerplate(){
		this.setName("boilerplate-initializr");
		this.getFiles().add(new File("index.html", "builder/templates/index.html", true, true));
		this.getDefaultModulesNames().add("oldiecond");
		this.getDefaultModulesNames().add("modernizr");
		this.getDefaultModulesNames().add("basiccontent");
		this.getDefaultModulesNames().add("jquery");
		this.getDefaultModulesNames().add("ddbelatedpng");
	}
}
