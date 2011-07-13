package com.jverrecchia.initializr.builder.mode;

import com.jverrecchia.initializr.builder.files.File;

public class Boilerplate extends Mode {
	
	public Boilerplate(){
		this.setName("boilerplate-initializr");
		this.getFiles().add(new File("index.html", "builder/templates/index.html", true, true));
		this.getFiles().add(new File("css/style.css", "builder/templates/style.css", true, true));
		this.getDefaultModulesNames().add("simplehtmltag");
		this.getDefaultModulesNames().add("basiccontent");
		this.getDefaultModulesNames().add("boilerplatecss");
		this.getDefaultModulesNames().add("csshelpers");
		this.getDefaultModulesNames().add("mediaqueries");
		this.getDefaultModulesNames().add("mediaqueryprint");		
		this.getDefaultModulesNames().add("primarystyles");
		this.getDefaultModulesNames().add("favicon");
		this.getDefaultModulesNames().add("appletouchicons");
		this.getDefaultModulesNames().add("adobecrossdomain");
		this.getDefaultModulesNames().add("humans");
		this.getDefaultModulesNames().add("robots");
		this.getDefaultModulesNames().add("404");
	}
}
