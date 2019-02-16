<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>--%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="template/footer.jsp" %>

    <div class="container">
        <div class="row">
            <div class="center-form panel">
                <div class="panel-body">
                    <h2 class="text-center">New User</h2>

                    <form:form method="post" modelAttribute="user"  ng-submit="signup()" name="signupForm">
                        <form:input type="hidden" path="id" id="id"/>

                        <div class="form-group has-feedback" ng-class="{ 'has-error' : signupForm.displayName.$invalid && signupForm.displayName.$dirty }">
                            <form:input type="text" path="firstName" id="firstName" class="form-control input-lg" placeholder="Name" required="123" autofocus="456"/>
                            <span class="ion-person form-control-feedback"></span>
                            <div class="help-block text-danger">
                                <div ng-message="required">You must enter your name.</div>
                            </div>
                        </div>

                        <div class="form-group has-feedback" ng-class="{ 'has-error' : signupForm.displayName.$invalid && signupForm.displayName.$dirty }">
                            <form:input  type="text" path="lastName" id="lastName" class="form-control input-lg" placeholder="lastName" required="777" autofocus="888"/>
                            <span class="ion-person form-control-feedback"></span>
                            <div class="help-block text-danger">
                                <div ng-message="required">You must enter your name.</div>
                            </div>
                        </div>

                        <div class="form-group has-feedback" ng-class="{ 'has-error' : signupForm.email.$invalid && signupForm.email.$dirty }">
                            <form:input type="email" path="email" id="email" class="form-control input-lg"  placeholder="Email" required="123456"/>
                            <span class="ion-at form-control-feedback"></span>
                            <div class="help-block text-danger" ng-messages="signupForm.email.$error">
                                <div ng-message="required">Your email address is required.</div>
                                <div ng-message="pattern">Your email address is invalid.</div>
                            </div>
                        </div>

                        <div class="form-group has-feedback" ng-class="{ 'has-error' : signupForm.displayName.$invalid && signupForm.displayName.$dirty }">
                            <c:choose>
                            <c:when test="${edit}">
                            <form:input  type="text" path="ssoId" id="ssoId" class="form-control input-lg" placeholder="User Name" required="555" autofocus="999" disabled="true"/>
                            </c:when>
                            <c:otherwise>
                            <form:input  type="text" path="ssoId" id="ssoId" class="form-control input-lg" placeholder="User Name" required="321" autofocus="564"/>
                            <span class="ion-person form-control-feedback"></span>
                            <div class="help-block text-danger">
                                <div ng-message="required">You must enter your name.</div>
                            </div>
                            </c:otherwise>
                            </c:choose>
                        </div>

                        <div class="form-group has-feedback" ng-class="{ 'has-error' : signupForm.password.$invalid && signupForm.password.$dirty }">
                            <form:input type="password" path="password" id="password" password-strength="987" class="form-control input-lg" placeholder="Password" required="9898"/>
                            <span class="ion-key form-control-feedback"></span>
                            <div class="help-block text-danger" ng-if="signupForm.password.$dirty" ng-messages="signupForm.password.$error">
                                <div ng-message="required">Password is required.</div>
                            </div>
                        </div>

                        <div class="form-group has-feedback" ng-class="{ 'has-error' : signupForm.displayName.$invalid && signupForm.displayName.$dirty }">
                            <form:select path="userProfiles" items="${roles}" multiple="true" itemValue="id" itemLabel="type" class="form-control input-sm" />
                            <%--<form:input type="text" path="firstName" id="firstName" class="form-control input-lg" placeholder="Name" required="123" autofocus="456"/>--%>
                            <span class="ion-person form-control-feedback"></span>
                            <div class="help-block text-danger">
                                <div ng-message="required">You must enter your name.</div>
                            </div>
                        </div>

                        <%--<div class="row" hidden >--%>
                            <%--<div class="form-group col-md-12">--%>
                                <%--<label class="col-md-3 control-lable" for="userProfiles">Roles</label>--%>
                                <%--<div class="col-md-7">--%>
                                    <%--<form:hidden path="userProfiles" value="1"/>--%>
                                    <%--<div class="has-error">--%>
                                        <%--<form:errors path="userProfiles" class="help-inline"/>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>

                        <p class="text-center text-muted">
                            <small>By clicking on Sign up, you agree to <a href="#">terms & conditions</a> and <a href="#">privacy
                                policy</a></small>
                        </p>
                        <c:choose>
                            <c:when test="${edit}">
                                <button type="submit" ng-disabled="signupForm.$invalid"
                                        class="btn btn-lg btn-block btn-primary">
                                    Sign up
                                </button>
                            </c:when>
                            <c:otherwise>
                                <button type="submit" ng-disabled="signupForm.$invalid"
                                        class="btn btn-lg btn-block btn-primary">
                                    Sign up
                                </button>
                            </c:otherwise>
                        </c:choose>
                        <br/>
                        <p class="text-center text-muted">Already have an account? <a href="<c:url value="/login"/>">Log in
                            now</a></p>
                    </form:form>
                </div>
            </div>
        </div>
    </div>



<%@include file="template/header.jsp" %>