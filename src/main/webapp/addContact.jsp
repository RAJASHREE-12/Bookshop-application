<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
	pageEncoding="UTF-8"%>
=======
    pageEncoding="UTF-8"%>
>>>>>>> 40f928e672fb890c2efc623c71ce8cdee193d0db
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<<<<<<< HEAD
<%@include file="component/allCss.jsp"%>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<%
	if (user == null) {
		session.setAttribute("InvalidMsg", "Login Please..");
		response.sendRedirect("login.jsp");
	}
	%>

=======
<%@include file="component/allCss.jsp" %>
</head>
<body>
<%@include file="component/navbar.jsp" %>
>>>>>>> 40f928e672fb890c2efc623c71ce8cdee193d0db

	<div class="container-fluid">
		<div class="row p-2">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
<<<<<<< HEAD
						<h4 class="text-center text-success">Add Contact Page</h4>
						
						<%
						String sucssMsg = (String) session.getAttribute("sucssMsg");
						String errorMsg = (String) session.getAttribute("failedMsg"); // Added cast and semicolon
						if (sucssMsg != null) {
						%>
						<p class="text-success text-center"><%=sucssMsg%></p>
						<%
						session.removeAttribute("sucssMsg");
						session.removeAttribute("failedMsg");
						}
						%>
						
						<form action="addContact" method="post">
							<%
							if (user != null) {
							%>
							<input type="hidden" value="<%=user.getId()%>" name="userid">
							<%
							}
							%>


							<div class="form-group">
								<label for="exampleInputEmail1">Enter Name</label> <input
									name="name" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>


							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									name="email" type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>
							<div class="form-group">
								<label for="phone">Enter Phone Number</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									name="phno" aria-describedby="emailHelp">


							</div>
							<div class="from-group">

								<textarea name="about" rows="3" col="" placeholder="Enter About"
									class="form-control"></textarea>
							</div>

							<div class="text-center mt-2">
								<button type="submit" class="btn btn-success">Save
									Contact</button>
=======
					<h4 class="text-center text-success">Add Contact Page</h4>
						<form>
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" >
								
							</div>
						
						
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" >
								
							</div>
							
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Phone No</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" >
									
							</div>
							<div class="form-group p-5">
								<label for="exampleInputEmail1 p-5">Enter About</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" >
									
							</div>
									
							<div class="text-center mt-2">
							<button type="submit" class="btn btn-primary">Register</button>
>>>>>>> 40f928e672fb890c2efc623c71ce8cdee193d0db
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
<<<<<<< HEAD
=======

>>>>>>> 40f928e672fb890c2efc623c71ce8cdee193d0db
</body>
</html>