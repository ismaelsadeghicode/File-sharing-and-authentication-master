<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@include file="template/footer.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap CSS -->
<%-- <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> --%>
<%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">--%>
<style type="text/css">
	.myrow-container {
		margin: 20px;
	}
</style>

<body class=".container-fluid">
<center><div class="container myrow-container">
	<div class="panel panel-success">
		<div class="panel-heading">
			<h3 class="panel-title">
                <div align="left"><h1><b>List of Users</b></h1>
                    <%--<form action="searchUsers">--%>
                    <%--<center><input class="form-control" type='text' name='searchName' id='searchName' placeholder="Search User"/>--%>
                    <%--<a> </a><input class="btn btn-success" type='submit' value='Search' /></center>--%>
                    <%--</form>--%>

					<form action="searchUsers">
					<style>{
						margin: 100px auto;
						width: 300px;
						height: 50px;
					}</style>
					<center><input type="search" id="searchName" name="searchName" placeholder="Search..." />
							<%--<button class="icon" type="submit" value="Search"/>--%>
					</center>
							<%--<button class="icon" type="submit"><i class="fa fa-search"></i></button></center>--%>
					</form>
                </div>
			</h3>
		</div>
		<div class="panel-body">
			<c:if test="${empty users}">
			There are no Users
			</c:if>
			<c:if test="${not empty users}">

				<%--<form action="searchUsers">--%>
					<%--<div class="row">--%>
						<%--<div align="center">Search User: <input type='text' name='searchName' id='searchName'/>--%>
							<%--<a> </a><input class="btn btn-success" type='submit' value='Search'/></div>--%>
					<%--</div>--%>
				<%--</form>--%>

			<table class="table table-hover table-bordered">
				<thead style="background-color: #bce8f1;">
				<tr>
					<th>User Name</th>
					<th>Firstname</th>
					<th>Lastname</th>
					<th>Email</th>
					<sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
						<th width="100"> Edit </th>
					</sec:authorize>
					<sec:authorize access="hasRole('ADMIN')">
						<th width="100"> Delete</th>
					</sec:authorize>
				</tr>
				</thead>
				<tbody>
				<c:forEach items="${users}" var="user">
					<tr>
						<th>${user.ssoId}</th>
						<th>${user.firstName}</th>
						<th>${user.lastName}</th>
						<th>${user.email}</th>
                        <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
                            <td><a href="<c:url value='/edit-user-${user.ssoId}' />" class="btn btn-success custom-width">edit</a></td>
                        </sec:authorize>
                        <sec:authorize access="hasRole('ADMIN')">
                            <td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">delete</a></td>
                        </sec:authorize>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			</c:if>
		</div>
	</div>
</div>
</center>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<%-- <script src="<c:url value="/resources/js/jquery-2.1.3.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
 --%>
<%@include file="template/header.jsp"%>

<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>--%>
<%--<%@ page isELIgnored="false" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>--%>

<%--<html>--%>

<%--<head>--%>
	<%--<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">--%>
	<%--<title>Users List</title>--%>
	<%--<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>--%>
	<%--<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>--%>
<%--</head>--%>

<%--<body>--%>
	<%--<div class="generic-container">--%>
		<%--<%@include file="authheader.jsp" %>	--%>
		<%--<div class="panel panel-default">--%>
			  <%--<!-- Default panel contents -->--%>
		  	<%--<div class="panel-heading"><span class="lead">List of Users </span></div>--%>
			<%--<table class="table table-hover">--%>
	    		<%--<thead>--%>
		      		<%--<tr>--%>
				        <%--<th>Firstname</th>--%>
				        <%--<th>Lastname</th>--%>
				        <%--<th>Email</th>--%>
				        <%--<th>SSO ID</th>--%>
				        <%--<sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">--%>
				        	<%--<th width="100"></th>--%>
				        <%--</sec:authorize>--%>
				        <%--<sec:authorize access="hasRole('ADMIN')">--%>
				        	<%--<th width="100"></th>--%>
				        <%--</sec:authorize>--%>
				        <%----%>
					<%--</tr>--%>
		    	<%--</thead>--%>
	    		<%--<tbody>--%>
				<%--<c:forEach items="${users}" var="user">--%>
					<%--<tr>--%>
						<%--<td>${user.firstName}</td>--%>
						<%--<td>${user.lastName}</td>--%>
						<%--<td>${user.email}</td>--%>
						<%--<td>${user.ssoId}</td>--%>
					    <%--<sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">--%>
							<%--<td><a href="<c:url value='/edit-user-${user.ssoId}' />" class="btn btn-success custom-width">edit</a></td>--%>
				        <%--</sec:authorize>--%>
				        <%--<sec:authorize access="hasRole('ADMIN')">--%>
							<%--<td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">delete</a></td>--%>
        				<%--</sec:authorize>--%>
					<%--</tr>--%>
				<%--</c:forEach>--%>
	    		<%--</tbody>--%>
	    	<%--</table>--%>
		<%--</div>--%>
		<%--<sec:authorize access="hasRole('ADMIN')">--%>
		 	<%--<div class="well">--%>
		 		<%--<a href="<c:url value='/newuser' />">Add New User</a>--%>
			<%--</div>--%>
	 	<%--</sec:authorize>--%>
   	<%--</div>--%>
<%--</body>--%>
<%--</html>--%>