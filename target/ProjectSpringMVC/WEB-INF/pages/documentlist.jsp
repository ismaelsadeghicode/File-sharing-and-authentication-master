<%@include file="/static/template/footer.jsp"%>
<%--<center><div class="container myrow-container">--%>
    <%--<div class="panel panel-success">--%>
        <%--<div class="panel-heading">--%>
            <%--<h3 class="panel-title">--%>
                <%--<div align="left"><b>Employees List</b> </div>--%>
                <%--<div align="right"><a href="createEmployee">Add New Employee</a></div>--%>
            <%--</h3>--%>
        <%--</div>--%>
        <%--<div class="panel-body">--%>
            <%--&lt;%&ndash;<c:if test="${empty employeeList}">&ndash;%&gt;--%>
                <%--There are no Employees--%>
            <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<c:if test="${not empty employeeList}">&ndash;%&gt;--%>

                <%--<form action="searchEmployee">--%>
                    <%--<div class="row">--%>
                        <%--<div class="col-md-4">Search Employees: <input type='text' name='searchName' id='searchName'/> </div>--%>
                        <%--<div class="col-md-4"><input class="btn btn-success" type='submit' value='Search'/></div>--%>
                    <%--</div>--%>
                <%--</form>--%>

                <%--<table class="table table-hover table-bordered">--%>
                    <%--<thead style="background-color: #bce8f1;">--%>
                    <%--<tr>--%>
                        <%--&lt;%&ndash;<th>Id</th>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<th>Name</th>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<th>Age</th>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<th>Salary</th>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<th>Edit</th>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<th>Delete</th>&ndash;%&gt;--%>
                    <%--</tr>--%>
                    <%--</thead>--%>
                    <%--<tbody>--%>
                    <%--&lt;%&ndash;<c:forEach items="${employeeList}" var="emp">&ndash;%&gt;--%>
                        <%--<tr>--%>
                            <%--&lt;%&ndash;<th><c:out value="${emp.id}"/></th>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<th><c:out value="${emp.name}"/></th>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<th><c:out value="${emp.age}"/></th>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<th><c:out value="${emp.salary}"/></th>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<th><a href="editEmployee?id=<c:out value='${emp.id}'/>">Edit</a></th>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<th><a href="deleteEmployee?id=<c:out value='${emp.id}'/>">Delete</a></th>&ndash;%&gt;--%>
                        <%--</tr>--%>
                    <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
                    <%--</tbody>--%>
                <%--</table>--%>
            <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
<%--</center>--%>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>--%>


<%@include file="/WEB-INF/views/template/header.jsp"%>