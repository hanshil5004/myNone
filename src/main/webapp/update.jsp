<%@page import="com.entity.Note"%>
<%@page import="org.hibernate.Session"%>
<%@page import="helper.FactoryProvider"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>

<!-- Bootstrap CSS -->
<%@include file="css/boostrepCss.html"%>
<link href="css/style.css" rel="stylesheet">

</head>
<body>


	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<div class="container text-center">
			<h1>Edite Your details</h1>
		</div>

		<%
		String id = request.getParameter("id");
		int noteid = Integer.parseInt(id);

		Session s = FactoryProvider.getFectory().openSession();
		Note note = s.get(Note.class, noteid);
		s.close();
		%>
		<!--Form  -->
		<form action="UpdateNote" method="post">

			<div class="mb-3">

				<input type="hidden" value="<%=note.getId()%>" name="id">

				<labelfor ="title" class="form-label">Title</label> <input
					type="text" class="form-control" id="title"
					value="<%=note.getTitle()%>" name="title">
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Content</label>
				<textarea rows="8" class="form-control"
					value="" id="content" name="content"><%=note.getContent()%></textarea>
			</div>
			<button type="submit" class="btn btn-outline-light purple">Save</button>
		</form>
		<!--End form  -->
	</div>

	<!--Script  -->
	<%@include file="js/boostrepScript.html"%>
</body>
</html>