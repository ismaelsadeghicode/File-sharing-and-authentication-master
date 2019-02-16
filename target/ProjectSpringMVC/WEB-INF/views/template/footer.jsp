<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: iSmael
  Date: 7/29/2017
  Time: 7:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html ng-app="MyApp">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Uploader File</title>
    <link href="<c:url value="/static/images/002.png"/> " rel="shortcut icon">
    <link href="//fonts.googleapis.com/css?family=Roboto|Montserrat:400,700|Open+Sans:400,300,600" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="//code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="//cdn.jsdelivr.net/animatecss/3.2.0/animate.css" rel="stylesheet">
    <link href="<c:url value="/static/stylesheets/angular-toastr.css"/> " rel="stylesheet">
    <link href="<c:url value="/static/stylesheets/styles.css"/> " rel="stylesheet">
</head>
<body>
<div ng-controller="NavbarCtrl" class="navbar navbar-default navbar-static-top">
    <div class="navbar-header">
        <a class="navbar-brand" href="<c:url value="/"/>"><i class="ion-ios7-pulse-strong"></i> Home</a>
    </div>
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <ul class="nav navbar-nav">
            <c:if test="${pageContext.request.isUserInRole('USER')}">
                <li><a> User: ${pageContext.request.userPrincipal.name}</a></li>
            </c:if>
            <c:if test="${pageContext.request.isUserInRole('ADMIN')}">
                <li><a> Admin: ${pageContext.request.userPrincipal.name}</a></li>
                <li><a href="/list"> User's</a></li>
                <li><a href="/newuser"> New User</a></li>
            </c:if>
            <li><a href="<c:url value='/Profile-${pageContext.request.userPrincipal.name}' />">Profile</a></li>
        </ul>
        <ul class="nav navbar-nav pull-right">
            <li><a href="<c:url value="/logout"/>">Logout  </a></li>
        </ul>
    </c:if>
    <ul class="nav navbar-nav">
        <li><a href="/documents"> Download</a></li>
    </ul>
    <ul ng-if="!isAuthenticated()" class="nav navbar-nav pull-right">
        <c:if test="${pageContext.request.userPrincipal.name == null}">
            <li><a href="<c:url value="/login"/>">Login  </a></li>
            <li><a href="<c:url value='/newuserLogin'/>"> Sign up  </a></li>
        </c:if>
    </ul>

</div>

<div ui-view></div>