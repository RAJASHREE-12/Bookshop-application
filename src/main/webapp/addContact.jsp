<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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


	<div class="container-fluid">
		<div class="row p-2">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
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
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>