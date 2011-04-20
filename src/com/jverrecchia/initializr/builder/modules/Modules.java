package com.jverrecchia.initializr.builder.modules;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

public class Modules {

	private List<String> modulesnames = new ArrayList<String>();
	private List<Module> modules = new ArrayList<Module>();


	public Modules(HttpServletRequest req) {
		
		@SuppressWarnings("unchecked")
		Map<String, String[]> map = req.getParameterMap();
		
		for(Entry<String, String[]> mapEntry : map.entrySet()) {
			   //String[] tmp = mapEntry.getValue();
			   //System.out.print((String)tmp[0]);
			
			if (!mapEntry.getKey().equals("print") && !mapEntry.getKey().equals("mode"))
			   modulesnames.add(mapEntry.getKey());
			
		}
		
		// Verifier si le nom du module est valide avant
		for (String currentModuleName : modulesnames){
			modules.add(ModuleReader.readModuleJson("builder/modules/" + currentModuleName + "/" + currentModuleName + ".json"));
		}
		ModulesRegistry.modules = modules;
	}


	public List<Module> getModules() {
		return modules;
	}


	public void setModules(List<Module> modules) {
		this.modules = modules;
	}
	
	
}
