package com.jverrecchia.initializr.builder.mode;

import com.jverrecchia.initializr.builder.files.File;

public class Less extends Mode{ 
	
	public Less(){
		this.setName("Less");
		this.setId("less");
		this.setFileName("initializr-less-verekia");
		this.getFiles().add(new File("index.html", "builder/templates/index.html", true, true));
		this.getFiles().add(new File("less/style.less", "builder/templates/style.less", true, true));
		this.getDefaultModulesNames().add("less");
		this.getDefaultModulesNames().add("h5bp-primarystyles");
	}
}
