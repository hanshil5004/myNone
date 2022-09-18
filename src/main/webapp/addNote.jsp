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
			<h1>Add your Note.</h1>
		</div>
		<!--Form  -->
		<form action="AddNote" method="post">
			<div class="mb-3">
				<label for="title" class="form-label">Title</label> <input
					type="text" class="form-control" id="title"
					placeholder="Enter Note Title" name="title">
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Content</label>
				<textarea rows="8" class="form-control" placeholder="Enter Note"
					id="content" name="content"></textarea>
			</div>

			<button type="submit" class="btn btn-outline-light purple">Save</button>

		</form>
		<!--End form  -->
	</div>

	<!--Script  -->
	<%@include file="js/boostrepScript.html"%>
</body>
</html>