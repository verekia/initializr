package com.jverrecchia.initializr.builder.files;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.StringReader;
import java.util.List;

import com.jverrecchia.initializr.builder.Utils;
import com.jverrecchia.initializr.builder.mode.Mode;
import com.jverrecchia.initializr.builder.modules.Insert;
import com.jverrecchia.initializr.builder.modules.Module;
import com.jverrecchia.initializr.builder.modules.ModulesRegistry;

public class TemplateFile { 
	private String templatePath;
	private String content;
	private String zipContent = new String();
	
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
	
	public void readTemplateFile(Mode mode){
		try {
			this.setContent(Utils.readFileAsString(templatePath));

			String str;
			BufferedReader reader = new BufferedReader(new StringReader(this.getContent()));

			String foundTag = null;
			
			while ((str = reader.readLine()) != null) {
				String byteStr = str.toString();
				if (byteStr.length() > 0 && str.getBytes()[0] == '{' &&
						byteStr.length() > 1 && str.getBytes()[1] == '#'){
					String currentLine = new String(str.getBytes());
					int secondSpace = 3;
					while (currentLine.charAt(secondSpace) != ' '){
						++secondSpace;
					}
					foundTag = (String) new String(str.getBytes()).subSequence(3, secondSpace);

					String modulesToInsert = new String();
					List<Module> modules = ModulesRegistry.getModulesByTag(foundTag);
					for (Module currentModule : modules){

						List<Insert> inserts = currentModule.getInserts();
						String insertString = "";
						for (Insert currentInsert : inserts){
							if (currentInsert.getMode() == null || currentInsert.getMode().equals(mode.getId())){
								if (currentInsert.getType() == null || !currentInsert.getType().equals("file")){
								    if (currentInsert.getWhere().equals(foundTag))
									insertString = Utils.readFileAsString("builder/modules/" + currentModule.getId() + "/" + currentInsert.getWhat());
								}
							}
						}
						modulesToInsert += insertString;
						
						
											
					}
					this.setZipContent(this.getZipContent() + modulesToInsert);
				
				}
				else{
					this.setZipContent(this.getZipContent() + str + "\n");
				}
				
	        }


			

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void setZipContent(String zipContent) {
		this.zipContent = zipContent;
	}

	public String getZipContent() {
		return zipContent;
	}
}
