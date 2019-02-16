<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="template/footer.jsp" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container">
    <div class="row">
        <div class="center-form panel">
            <div class="panel-body">
                <h2 class="text-center">Sign up</h2>
                <form:form method="POST" modelAttribute="user" >
                    <form:input type="hidden" path="id" id="id"/>

                    <div class="form-group has-feedback"
                         ng-class="{ 'has-error' : signupForm.displayName.$invalid && signupForm.displayName.$dirty }">
                        <form:input path="firstName" id="firstName" type="text"  class="form-control input-lg"
                           name="name" ng-model="" placeholder="name"/>
                           <%--name="displayName" ng-model="user.displayName" placeholder="name"/>--%>
                        <span class="ion-person form-control-feedback"></span>
                        <div class="help-block text-danger" ng-if="signupForm.displayName.$dirty"
                             ng-messages="signupForm.displayName.$error">
                            <div ng-message="required">You must enter your name.</div>
                        </div>
                    </div>


                    <div class="form-group has-feedback"
                         ng-class="{ 'has-error' : signupForm.displayName.$invalid && signupForm.displayName.$dirty }">
                        <form:input path="lastName" id="lastName" class="form-control input-lg"
                         type="text" name="" ng-model="" placeholder="family"/>
                         <%--type="text" name="displayName" ng-model="user.displayName" placeholder="family"/>--%>
                        <span class="ion-person form-control-feedback"></span>
                        <div class="help-block text-danger" ng-if="signupForm.displayName.$dirty"
                             ng-messages="signupForm.displayName.$error">
                            <div ng-message="required">You must enter your family.</div>
                        </div>
                    </div>
                    <div class="form-group has-feedback"
                         ng-class="{ 'has-error' : signupForm.email.$invalid && signupForm.email.$dirty }">
                        <form:input path="email" class="form-control input-lg" type="email" id="email" name="email" ng-model="user.email"
                               placeholder="Email" />
                        <span class="ion-at form-control-feedback"></span>
                        <div class="help-block text-danger" ng-if="signupForm.email.$dirty"
                             ng-messages="signupForm.email.$error">
                            <div ng-message="required">Your email address is required.</div>
                            <div ng-message="pattern">Your email address is invalid.</div>
                        </div>
                    </div>
                    <div class="form-group has-feedback"
                         ng-class="{ 'has-error' : signupForm.displayName.$invalid && signupForm.displayName.$dirty }">
                        <c:choose>
                            <c:when test="${edit}">
                                <form:input type="text" path="ssoId"  id="ssoId" class="form-control input-lg" name="displayName"
                                       ng-model="user.displayName" placeholder="family " disabled="true"/>
                            </c:when>
                            <c:otherwise>
                                <form:input type="text" path="ssoId"  id="ssoId" class="form-control input-lg" name="displayName"
                                       ng-model="user.displayName" placeholder="UserName "/>
                                <span class="ion-person form-control-feedback"></span>
                                <div class="help-block text-danger" ng-if="signupForm.displayName.$dirty"
                                     ng-messages="signupForm.displayName.$error">
                                    <div ng-message="required">You must enter your UserName.</div>
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </div>
                    <div class="form-group has-feedback"
                         ng-class="{ 'has-error' : signupForm.password.$invalid && signupForm.password.$dirty }">
                        <form:input path="password" class="form-control input-lg" type="password" name="password"
                               ng-model="user.password" placeholder="Password" />
                        <span class="ion-key form-control-feedback"></span>
                        <div class="help-block text-danger" ng-if="signupForm.password.$dirty"
                             ng-messages="signupForm.password.$error">
                            <div ng-message="required">Password is required.</div>
                        </div>
                    </div>
                    <%----%>
                    <%--<div class="form-group has-feedback"--%>
                    <%--ng-class="{ 'has-error' : signupForm.confirmPassword.$invalid && signupForm.confirmPassword.$dirty }">--%>
                    <%--<input password-match="user.password" class="form-control input-lg" type="password"--%>
                    <%--id="password" name="confirmPassword" ng-model="confirmPassword"--%>
                    <%--placeholder="Confirm Password">--%>
                    <%--<span class="ion-key form-control-feedback"></span>--%>
                    <%--<div class="help-block text-danger" ng-if="signupForm.confirmPassword.$dirty"--%>
                    <%--ng-messages="signupForm.confirmPassword.$error">--%>
                    <%--<div ng-message="compareTo">Password must match.</div>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%----%>
                    <div class="row" hidden>
                        <div class="form-group col-md-12">
                            <label class="col-md-3 control-lable" for="userProfiles">Roles</label>
                            <div class="col-md-7">
                                <form:hidden path="userProfiles" value="1"/>
                                    <%--<form:select path="userProfiles" items="${roles}" multiple="true" itemValue="id" itemLabel="type" class="form-control input-sm" />--%>
                                <div class="has-error">
                                    <form:errors path="userProfiles" class="help-inline"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%----%>
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

