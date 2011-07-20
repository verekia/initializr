package com.jverrecchia.initializr.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jverrecchia.initializr.builder.mode.Mode;
import com.jverrecchia.initializr.builder.mode.ModeSelector;
import com.jverrecchia.initializr.builder.modules.Modules;

public class WebServlet extends HttpServlet { 
	private static final long serialVersionUID = -1029291219058930682L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		
		Mode mode = ModeSelector.getMode(req.getParameter("mode"));
		Modules modules = new Modules(req, mode);
		req.setAttribute("modules", modules);
		req.setAttribute("mode", mode);
		RequestDispatcher dispatch = req.getRequestDispatcher("index.jsp");
		dispatch.forward(req, resp);
	}
}