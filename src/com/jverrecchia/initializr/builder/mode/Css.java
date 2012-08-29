package com.jverrecchia.initializr.builder.mode;

import com.jverrecchia.initializr.builder.files.File;

public class Css extends Mode{ 
	
	public Css(){
		this.setName("CSS");
		this.setId("css");
		this.setFileName("initializr-verekia");
		this.getFiles().add(new File("index.html", "builder/templates/index.html", true, true));
		this.getFiles().add(new File("css/main.css", "builder/templates/main.css", true, true));
		this.getDefaultModulesNames().add("h5bp-stylefile");
		this.getDefaultModulesNames().add("h5bp-primarystyles");
	}
}
