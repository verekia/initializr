package com.jverrecchia.initializr.builder.modules;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

import com.jverrecchia.initializr.builder.errors.IncompatibleModuleException;
import com.jverrecchia.initializr.builder.errors.ModuleNotFoundException;
import com.jverrecchia.initializr.builder.mode.Mode;

public class Modules { 

	private List<String> modulesnames = new ArrayList<String>();
	private List<Module> modules = new ArrayList<Module>();


	public Modules(HttpServletRequest req, Mode mode) throws ModuleNotFoundException, IncompatibleModuleException{
		
		@SuppressWarnings("unchecked")
		Map<String, String[]> map = req.getParameterMap();
		
		for(Entry<String, String[]> mapEntry : map.entrySet()) {
			   //String[] tmp = mapEntry.getValue();
			   //System.out.print((String)tmp[0]);
			
			if (!mapEntry.getKey().equals("print") && !mapEntry.getKey().equals("mode"))
			   modulesnames.add(mapEntry.getKey());
		}
		
		for (String currentDefaultModuleName : mode.getDefaultModulesNames()){
			boolean found = false;
			for (String currentModuleName : modulesnames){
				if (currentDefaultModuleName.equals(currentModuleName))
					found = true;
			}
			if (!found)
				modulesnames.add(currentDefaultModuleName);
		}
		
		// Verifier si le nom du module est valide avant
		for (String currentModuleName : modulesnames){
			modules.add(ModuleReader.readModuleJson(currentModuleName));
		}
		checkIncompatiblesModules();
		ModulesRegistry.modules = modules;
	}


	private void checkIncompatiblesModules() throws IncompatibleModuleException{
	    for (Module currentModule : this.modules){
		if (currentModule.getIncompatibilities() != null){
		    for (String currentIncompatibility : currentModule.getIncompatibilities()){
			for (Module currentCheckedModule : this.modules){
			    if (currentCheckedModule.getId().equals(currentIncompatibility))
				throw new IncompatibleModuleException(currentModule.getId(), currentCheckedModule.getId());
			}
		    }
		}
	    }
	}
	
	public List<Module> getModules() {
		return modules;
	}


	public void setModules(List<Module> modules) {
		this.modules = modules;
	}
	
	
}
