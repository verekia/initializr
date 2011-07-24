package com.jverrecchia.initializr.web;

import java.io.IOException;
import java.util.Collections;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jverrecchia.initializr.builder.mode.Mode;
import com.jverrecchia.initializr.builder.mode.ModeSelector;
import com.jverrecchia.initializr.builder.modules.Module;
import com.jverrecchia.initializr.builder.modules.ModulesRegistry;

public class AdvancedServlet extends HttpServlet { 
	private static final long serialVersionUID = -1029291219058930682L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		
		Mode mode = ModeSelector.getMode(req.getParameter("mode"));
		
		List<Module> modulesList = ModulesRegistry.getModulesList();
		Collections.sort(modulesList);
		req.setAttribute("modules", modulesList);
		req.setAttribute("mode", mode);
		RequestDispatcher dispatch = req.getRequestDispatcher("front/advanced.jsp");
		dispatch.forward(req, resp);
	}
}