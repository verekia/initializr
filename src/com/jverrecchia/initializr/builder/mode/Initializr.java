package com.jverrecchia.initializr.builder.mode;

import com.jverrecchia.initializr.builder.files.File;

public class Initializr extends Mode{ 
	
	public Initializr(){
		this.setName("Initializr Builder");
		this.setFileName("verekia-initializr");
		this.getFiles().add(new File("index.html", "builder/templates/index.html", true, true));
		this.getFiles().add(new File("css/style.css", "builder/templates/style.css", true, true));
		this.getFiles().add(new File("js/script.js", "builder/templates/script.js", true, true));
		this.getDefaultModulesNames().add("h5bp-appletouchicons");
		this.getDefaultModulesNames().add("h5bp-iecond");
		this.getDefaultModulesNames().add("h5bp-css");
		this.getDefaultModulesNames().add("h5bp-csshelpers");
		this.getDefaultModulesNames().add("h5bp-mediaqueries");
		this.getDefaultModulesNames().add("h5bp-mediaqueryprint");		
		this.getDefaultModulesNames().add("h5bp-favicon");

	}
}
