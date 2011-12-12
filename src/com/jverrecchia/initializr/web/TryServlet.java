package com.jverrecchia.initializr.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TryServlet extends HttpServlet { 
	private static final long serialVersionUID = 8311687058305378806L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {

		RequestDispatcher dispatch = req.getRequestDispatcher("front/try/index.jsp");
		dispatch.forward(req, resp);
	}
}