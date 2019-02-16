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
                <div align="left"><h1><b>List of Documents</b></h1></div>
                <%--<sec:authorize access="hasRole('ADMIN')">--%>
                    <%--<div class="well">--%>
                        <%--<div align="right"><a href="<c:url value='/newuser'/>">Add New Documents</a></div>--%>
                    <%--</div>--%>
                <%--</sec:authorize>--%>
                <%--<div align="right"><a href="<c:url value='/newuserLogin'/>">Add New Documents</a></div>--%>
            </h3>
        </div>
        <div class="panel-body">
            <c:if test="${empty documents}">
                There are no Documents
            </c:if>
            <c:if test="${not empty documents}">

                <form action="searchDocument">
                    <div class="row">
                        <div align="center">Search Documents: <input type='text' name='searchName' id='searchName'/>
                            <a> </a><input class="btn btn-success" type='submit' value='Search'/></div>
                    </div>
                </form>

                <table class="table table-hover table-bordered">
                    <thead style="background-color: #bce8f1;">
                    <tr>
                        <th>Name And Description</th>
                        <th>File / Type</th>
                        <th>Download</th>
                        <sec:authorize access="hasRole('ADMIN')">
                            <th width="100">Delet</th>
                        </sec:authorize>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${documents}" var="doc">
                        <tr>
                            <td><c:out value="${doc.description}"/></td>
                            <td><c:out value="${doc.name}"/></td>
                            <td><a href="<c:url value='/download-document-${doc.id}-${doc.id}' />" class="btn btn-success custom-width">download</a></td>
                            <sec:authorize access="hasRole('ADMIN')">
                            <td><a href="<c:url value='/delete-documentlist-${doc.id}-${doc.id}' />" class="btn btn-danger custom-width">delete</a></td>
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