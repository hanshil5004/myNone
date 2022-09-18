package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Note;

import helper.FactoryProvider;

public class UpdateNote extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			int id = Integer.parseInt(request.getParameter("id"));
			String title = request.getParameter("title");
			String content = request.getParameter("content");

			Session s = FactoryProvider.getFectory().openSession();
		
			Note note = s.get(Note.class, id);
			Transaction tx = s.beginTransaction();
			note.setTitle(title);
			note.setContent(content);
			note.setDate(new Date());
			tx.commit();
			s.close();
			response.sendRedirect("editeNotes.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
