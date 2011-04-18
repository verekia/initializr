package com.jverrecchia.initializr.builder.modules;

import java.io.IOException;

import com.google.gson.Gson;
import com.jverrecchia.initializr.builder.Utils;

public class ModuleReader {

	public static Module readModuleJson(String filepath){
		Gson gson = new Gson();
		
		String jsonString = null;
		try {
			jsonString = Utils.readFileAsString(filepath);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return gson.fromJson(jsonString, Module.class);
		
	}
	
}
