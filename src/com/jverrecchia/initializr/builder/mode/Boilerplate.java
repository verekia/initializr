package com.jverrecchia.initializr.builder.mode;

import com.jverrecchia.initializr.builder.files.File;

public class Boilerplate extends Mode {
	
	public Boilerplate(){
		this.setName("boilerplate-initializr");
		this.getFiles().add(new File("index.html", "builder/templates/index.html", true, true));
		this.getFiles().add(new File("style.css", "builder/templates/style.css", true, true));
		this.getDefaultModulesNames().add("oldiecond");
		this.getDefaultModulesNames().add("modernizr");
		this.getDefaultModulesNames().add("basiccontent");
		this.getDefaultModulesNames().add("jquery");
		this.getDefaultModulesNames().add("ddbelatedpng");
		this.getDefaultModulesNames().add("analytics");
		this.getDefaultModulesNames().add("boilerplatescripts");
		this.getDefaultModulesNames().add("boilerplatecss");
		this.getDefaultModulesNames().add("favicon");
		this.getDefaultModulesNames().add("appletouchicons");
		this.getDefaultModulesNames().add("adobecrossdomain");
	}
}
