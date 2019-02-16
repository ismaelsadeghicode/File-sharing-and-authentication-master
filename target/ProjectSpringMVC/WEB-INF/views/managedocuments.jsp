<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="template/footer.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<div align="left"><h1><b>Profile </b></h1></div>
<div align="left"><h6><b>Upload and Download, Delete File </b></h6></div>
</h3>
</div>
    <div class="panel-body">

<%----%>
    <form:form method="POST" modelAttribute="fileBucket" enctype="multipart/form-data" class="form-horizontal">

    <div class="row">
        <div class="form-group col-md-12">
            <label class="col-md-3 control-lable" for="file">Upload a document</label>
            <div class="col-md-7">
                <form:input type="file" path="file" id="file" class="form-control input-sm"/>
                <div class="has-error">
                    <form:errors path="file" class="help-inline"/>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group col-md-12">
            <label class="col-md-3 control-lable" for="file">Description</label>
            <div class="col-md-7">
                <form:input type="text" path="description" id="description" class="form-control input-sm"/>
            </div>

        </div>
    </div>

    <div class="row">
        <div class="form-actions floatRight">
            <center><input type="submit" value="Upload" class="btn btn-primary btn-sm"></center>
        </div>
    </div>

    </form:form>

    <div class="panel panel-success">
        <%--<div class="panel-heading">--%>
            <%--<h3 class="panel-title">--%>
                <%--<div align="center"><h4><b>List of Documents </b></h4></div>--%>
            <%--</h3>--%>
        <%--</div>--%>



    <%--<form action="searchDocument">--%>
                <%--<div class="row">--%>
                    <%--<div align="center">Search Documents: <input type='text' name='searchName' id='searchName'/><input class="btn btn-success" type='submit' value='Search'/></div>--%>
                <%--</div>--%>
            <%--</form>--%>

            <table class="table table-hover table-bordered">
                <thead style="background-color: #bce8f1;">
                <tr>
                    <th>No</th>
                    <th>File Name</th>
                    <th>Type</th>
                    <th>Description</th>
                    <th>Download</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach items="${documents}" var="doc" varStatus="counter">
                    <tr>
                        <td>${counter.index + 1}</td>
                        <td>${doc.name}</td>
                        <td>${doc.type}</td>
                        <td>${doc.description}</td>
                        <td><a href="<c:url value='/download-document-${user.id}-${doc.id}' />" class="btn btn-success custom-width">download</a></td>
                        <td><a href="<c:url value='/delete-document-${user.id}-${doc.id}' />" class="btn btn-danger custom-width">delete</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

    </div>
        </div>
</div>
</div>
</center>

<%@include file="template/header.jsp"%>