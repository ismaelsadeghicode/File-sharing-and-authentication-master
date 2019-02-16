<%@include file="template/footer.jsp"%>

<div class="container">
	<div class="row">
		<div class="center-form panel">
			<div class="panel-body">
				<h2 class="text-center">Log in</h2>
				<form method="post" action="${loginUrl}" ng-submit="login()" name="loginForm">
					<c:if test="${param.error != null}">
						<div class="alert alert-danger">
							<p>Invalid username and password.</p>
						</div>
					</c:if>
					<c:if test="${param.logout != null}">
						<div class="alert alert-success">
							<p>You have been logged out successfully.</p>
						</div>
					</c:if>                    <div class="form-group has-feedback">
					<%--<input class="form-control input-lg" type="text" name="email" ng-model="user.email" placeholder="Email" required autofocus>--%>
					<input class="form-control" type="text" name="ssoId" ng-model="user.email" id="username" placeholder="Name" required autofocus>
					<span class="ion-at form-control-feedback"></span>
				</div>
					<div class="form-group has-feedback">
						<%--<input class="form-control input-lg" type="password" name="password" ng-model="user.password" placeholder="Password" required>--%>
						<input class="form-control" type="password" name="password" ng-model="user.password" id="password" placeholder="Password" required>
						<span class="ion-key form-control-feedback"></span>
					</div>

					<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />

					<button type="submit" ng-disabled="loginForm.$invalid" class="btn btn-lg  btn-block btn-success">Log in</button>
					<br/>
					<p class="text-center text-muted">
						<small>Don't have an account yet? <a href="<c:url value='/newuserLogin' />">Sign up</a></small>
					</p>
					<%--<div class="signup-or-separator">--%>
					<%--&lt;%&ndash;<h6 class="text">or</h6>&ndash;%&gt;--%>
					<%--<hr>--%>
					<%--</div>--%>
				</form>
				<%--<button class="btn btn-block btn-facebook" ng-click="authenticate('facebook')">--%>
				<%--<i class="ion-social-facebook"></i> Sign in with Facebook--%>
				<%--</button>--%>
				<%--<button class="btn btn-block btn-google-plus" ng-click="authenticate('google')">--%>
				<%--<span class="ion-social-googleplus"></span>Sign in with Google--%>
				<%--</button>--%>
				<%--<button class="btn btn-block btn-linkedin" ng-click="authenticate('linkedin')">--%>
				<%--<i class="ion-social-linkedin"></i> Sign in with LinkedIn--%>
				<%--</button>--%>
				<%--<button class="btn btn-block btn-instagram" ng-click="authenticate('instagram')">--%>
				<%--<i class="ion-social-instagram"></i> Sign in with Instagram--%>
				<%--</button>--%>
				<%--<button class="btn btn-block btn-twitter" ng-click="authenticate('twitter')">--%>
				<%--<i class="ion-social-twitter"></i> Sign in with Twitter--%>
				<%--</button>--%>
				<%--<button class="btn btn-block btn-foursquare" ng-click="authenticate('foursquare')">--%>
				<%--<i class="fa fa-foursquare"></i> Sign in with Foursquare--%>
				<%--</button>--%>
				<%--<button class="btn btn-block btn-github" ng-click="authenticate('github')">--%>
				<%--<i class="ion-social-github"></i> Sign in with GitHub--%>
				<%--</button>--%>
				<%--<button class="btn btn-block btn-bitbucket" ng-click="authenticate('bitbucket')">--%>
				<%--<i class="fa fa-bitbucket"></i> Sign in with Bitbucket--%>
				<%--</button>--%>
				<%--<button class="btn btn-block btn-yahoo" ng-click="authenticate('yahoo')">--%>
				<%--<i class="ion-social-yahoo"></i> Sign in with Yahoo--%>
				<%--</button>--%>
				<%--<button class="btn btn-block btn-live" ng-click="authenticate('live')">--%>
				<%--<i class="ion-social-windows"></i> Sign in with Windows Live--%>
				<%--</button>--%>
				<%--<button class="btn btn-block btn-twitch" ng-click="authenticate('twitch')">--%>
				<%--<i class="ion-social-twitch"></i> Sign in with Twitch--%>
				<%--</button>--%>
				<%--<button class="btn btn-block btn-spotify" ng-click="authenticate('spotify')">--%>
				<%--<i class="fa fa-spotify"></i> Sign in with Spotify--%>
				<%--</button>--%>
			</div>
		</div>
	</div>
</div>

<%@include file="template/header.jsp"%>
