package com.jverrecchia.initializr.builder.modules;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import com.jverrecchia.initializr.builder.errors.ModuleNotFoundException;

public class ModulesRegistry { 
	public static List<Module> modules;
	
	public static void register(Module module){
		modules.add(module);
	}
	
	public static List<Module> getModulesByTag(String tag){
		List<Module> foundModules = new ArrayList<Module>();
		
		for (Module currentModule : modules){
			for (Insert currentInsert : currentModule.getInserts()){
				if (currentInsert.getType()== null && currentInsert.getWhere().equals(tag))
					foundModules.add(currentModule);				
			}
		}
		return foundModules;
	}
	
	public static List<Module> getModulesList(){
	    File modulesDirectory = new File("builder/modules");
	    String[] modulesNamesList = modulesDirectory.list();
	    List<Module> modulesList = new ArrayList<Module>();
	    for (String currentModuleName : modulesNamesList){
		try {
		    modulesList.add(ModuleReader.readModuleJson(currentModuleName));
		} catch (ModuleNotFoundException e) {
		    e.printStackTrace();
		}
	    }
	    return modulesList;
	}

}
