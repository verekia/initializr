package com.jverrecchia.initializr.builder.files;

import java.io.IOException;
import java.util.List;

import com.jverrecchia.initializr.builder.Utils;
import com.jverrecchia.initializr.builder.modules.Module;
import com.jverrecchia.initializr.builder.modules.ModulesRegistry;

public class TemplateFile {
	private String templatePath;
	private String content;
	
	public TemplateFile(String templatePath){
		this.templatePath = templatePath;
	}
	
	public String getTemplatePath() {
		return templatePath;
	}
	public void setTemplatePath(String templatePath) {
		this.templatePath = templatePath;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public void readTemplateFile(){
		try {
			this.setContent(Utils.readFileAsString(templatePath));
			
			List<Module> modules = ModulesRegistry.getModulesByTag("body");
			for (Module currentModule : modules){
				String insert = Utils.readFileAsString("builder/modules/" + currentModule.getId() + "/" + currentModule.getInsert().getWhat());
				this.setContent(this.getContent() + insert);					
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
