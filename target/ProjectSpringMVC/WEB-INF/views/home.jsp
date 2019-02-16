<%@include file="template/footer.jsp" %>

<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading">Upload File And Download File</div>
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-6">
                    <center><a href="<c:url value='/Profile-${pageContext.request.userPrincipal.name}' />">
                        <img src="<c:url value="/static/images/005.gif"/>" width="150" height="150"/></a></center>
                    <h2>Upload</h2>
                    <p>Uploading is the transmission of a file from one
                        computer system to another, usually larger computer
                        system. From a network user's point-of-view, to upload
                        a file is to send it to another computer that is set up to receive it.

                    </p>
                    <p><a class="btn btn-primary"
                          href="<c:url value='/Profile-${pageContext.request.userPrincipal.name}' />">Click
                        Here </a></p>
                </div>
                <div class="col-sm-6">
                    <center><a href="/documents"><img src="<c:url value="/static/images/d002.png"/>" width="150" height="150"/></a></center>
                    <h2>Download</h2>
                    <p>Downloading is the transmission of a file from one
                        computer system to another, usually smaller computer
                        system. From the Internet user's point-of-view, to download
                        a file is to request it from another computer (or from a Web
                        page on another computer) and to receive it.</p>
                    <p><a class="btn btn-primary" href="/documents">Click Here </a></p>
                </div>
            </div>
        </div>
        <div class="panel-footer text-center">
            <ul class="list-inline">
                <%--<li><i class="ion-star"></i> {{// stars | number}} stars</li>--%>
                <%--<li><a class="ion-social-instagram" href="https://www.instagram.com/accounts/login/"> instagram</a></li>--%>
                <%--<li><a class="ion-social-linkedin" href="https://www.linkedin.com/uas/login"> linkedin</a></li>--%>
                <%--<li><a class="ion-social-googleplus" href="https://plus.google.com/apps/activities"> googleplus</a></li>--%>
                <%--<li><a class="ion-social-facebook" href="https://en-gb.facebook.com/login/"> facebook</a></li>--%>
                <%--<li><a class="ion-social-yahoo" href="https://login.yahoo.com/?.src=ym&.intl=my&.lang=en-MY&.done=https%3a//mail.yahoo.com"> yahoo</a></li>--%>
                <%--<li><a class="ion-social-twitter" href="https://mobile.twitter.com/session/new"> twitter</a></li>--%>
<%----%>
                <li><a class="ion-social-instagram" href="https://www.instagram.com/accounts/login/"></a></li>
                <li><a class="ion-social-linkedin" href="https://www.linkedin.com/uas/login"></a></li>
                <li><a class="ion-social-googleplus" href="https://plus.google.com/apps/activities"></a></li>
                <li><a class="ion-social-facebook" href="https://en-gb.facebook.com/login/"></a></li>
                <%--<li><a class="ion-social-yahoo" href="https://login.yahoo.com/?.src=ym&.intl=my&.lang=en-MY&.done=https%3a//mail.yahoo.com"></a></li>--%>
                <li><a class="ion-social-twitter" href="https://mobile.twitter.com/session/new"></a></li>
                <%--<li><i class="ion-pull-request"></i> {{issues | number}} issues</li>--%>
            </ul>
        </div>
    </div>
</div>
<div class="text-center">
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <c:if test="${pageContext.request.isUserInRole('ADMIN')}">
            <a class="btn btn-default" href="#"><i class="ion-bug"></i>Users</a>
        </c:if>
    </c:if>
</div>
<%@include file="template/header.jsp" %>
