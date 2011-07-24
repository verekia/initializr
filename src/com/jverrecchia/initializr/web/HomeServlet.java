package com.jverrecchia.initializr.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HomeServlet extends HttpServlet { 
	private static final long serialVersionUID = -1029291219058930682L;

	public void doGet(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {

		RequestDispatcher dispatch = req.getRequestDispatcher("front/home.jsp");
		dispatch.forward(req, resp);
	}
}