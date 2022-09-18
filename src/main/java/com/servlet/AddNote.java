package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Note;

import helper.FactoryProvider;

public class AddNote extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();

			String title = request.getParameter("title");
			String content = request.getParameter("content");
			Note note = new Note(title, content, new Date());

			// Hibernet Save

			Session s = FactoryProvider.getFectory().openSession();
			Transaction tx = s.beginTransaction();
			s.save(note);
			tx.commit();
			s.close();
			response.sendRedirect("editeNotes.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
