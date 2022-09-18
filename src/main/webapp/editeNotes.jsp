<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<%@include file="css/boostrepCss.html"%>
<link href="css/style.css" rel="stylesheet">

<title>Edite Notes</title>

</head>



<body>

	<div class="container">
		<%@include file="navbar.jsp"%>



		<%@page import="com.entity.Note"%>
		<%@page import="java.util.List"%>
		<%@page import="org.hibernate.query.Query"%>
		<%@page import="helper.FactoryProvider"%>
		<%@page import="org.hibernate.Session"%>


		<div class="row">
			<div class="text-center">
				<h1>All Notes</h1>
			</div>
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFectory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note n : list) {
				%>
				<div class="card mt-2">
					<span class="m-1">Last Update : <b class="" style="color: blue;"><%=n.getDate()%></b></span> <img src="img/note.png"
						class="card-img-top m-4 mx-auto" alt="..."
						style="max-width: 100px;">
					<div class="card-body">
						<h5 class="card-title"><%=n.getTitle()%></h5>
						<hr>
						<p class="card-text"><%=n.getContent()%></p>
						<div class="container text-center">
							<a href="update.jsp?id=<%=n.getId()%>"
								class="btn btn-outline-light purple">Update</a>
								<a href="DeleteServlet?id=<%=n.getId()%>" class="btn btn-primary ">Delete</a>								
						</div>
					</div>
				</div>

				<%
				}
				s.close();
				%>
			</div>
		</div>
	</div>
	<!--Script  -->
	<%@include file="js/boostrepScript.html"%>
</body>
</html>