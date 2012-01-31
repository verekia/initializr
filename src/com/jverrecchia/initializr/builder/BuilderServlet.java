package com.jverrecchia.initializr.builder;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jverrecchia.initializr.builder.errors.IncompatibleModuleException;
import com.jverrecchia.initializr.builder.errors.ModuleNotFoundException;
import com.jverrecchia.initializr.builder.files.File;
import com.jverrecchia.initializr.builder.files.TemplateFile;
import com.jverrecchia.initializr.builder.files.ZipFile;
import com.jverrecchia.initializr.builder.mode.Mode;
import com.jverrecchia.initializr.builder.mode.ModeSelector;
import com.jverrecchia.initializr.builder.modules.Modules;
import com.jverrecchia.initializr.builder.zip.Zip;
import com.jverrecchia.initializr.builder.zip.ZipContentPrinter;

public class BuilderServlet extends HttpServlet { 
	private static final long serialVersionUID = -1029291219058930682L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {

		Mode mode = ModeSelector.getMode(req.getParameter("mode"));
		Modules modules = null;
		try {
		    modules = new Modules(req, mode);
		} catch (ModuleNotFoundException e) {
			resp.setContentType("text/plain");
			PrintWriter out = resp.getWriter();
			out.println(e.getMsg());
			return;
		} catch (IncompatibleModuleException e) {
			resp.setContentType("text/plain");
			PrintWriter out = resp.getWriter();
			out.println(e.getMsg());
			return;
		}
		mode.addModulesFiles(modules);

		
		//@SuppressWarnings("unused")
		//Files files = new Files(modules.getModules());

		List<ZipFile> zipFiles = new ArrayList<ZipFile>();		
		
		for (File currentFile : mode.getFiles()){
			ZipFile currentZipFile = new ZipFile();
			currentZipFile.setZipPath(currentFile.getRealPath());
			if (currentFile.isModify()){
				currentZipFile.setTemplate(new TemplateFile(currentFile.getTemplatePath()));
				currentZipFile.fillContent(mode);
			}
			else
				currentZipFile.copyContent(currentFile);
			zipFiles.add(currentZipFile);
		}

		
		//ZipFile zipfile1 = new ZipFile();

		//zipfile1.fillContent();
/*
		ZipFile zipfile2 = new ZipFile();
		zipfile2.setZipPath("css/style.css");
		zipfile2.setContent("css/style.css content");
	*/	
		//zipFiles.add(zipfile1);
	//	zipFiles.add(zipfile2);		
		
		Zip zip = new Zip(resp, mode, zipFiles);
		
		if (req.getParameter("print") != null){
			ZipContentPrinter zipContentPrinter = new ZipContentPrinter(resp, zip);
			zipContentPrinter.printZip();
		}
		else
			zip.sendZip(zipFiles);
	}
}