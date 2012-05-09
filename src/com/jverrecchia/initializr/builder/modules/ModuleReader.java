package com.jverrecchia.initializr.builder.modules;

import java.io.IOException;

import com.google.gson.Gson;
import com.jverrecchia.initializr.builder.Utils;
import com.jverrecchia.initializr.builder.errors.ModuleNotFoundException;

public class ModuleReader { 

	public static Module readModuleJson(String moduleName) throws ModuleNotFoundException{
	    String filepath = "builder/modules/" + moduleName + "/" + moduleName + ".json";
		Gson gson = new Gson();
		
		String jsonString = null;
		try {
			jsonString = Utils.readFileAsString(filepath);
		} catch (IOException e) {
			throw new ModuleNotFoundException(moduleName);
		}
		
		return gson.fromJson(jsonString, Module.class);
	}
	
}
