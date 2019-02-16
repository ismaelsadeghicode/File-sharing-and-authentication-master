<%@include file="/static/template/footer.jsp"%>

<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading">Profile</div>
        <div class="panel-body">
            <legend><i class="ion-clipboard"></i> Edit My Profile</legend>
            <form method="post" ng-submit="updateProfile()">
                <div class="form-group">
                    <label class="control-label">Profile Picture</label>
                    <img class="profile-picture" ng-src="{{user.picture || 'https://placehold.it/100x100'}}">
                </div>
                <div class="form-group">
                    <label class="control-label"><i class="ion-person"></i> Display Name</label>
                    <input type="text" class="form-control" ng-model="user.displayName" />
                </div>
                <div class="form-group">
                    <label class="control-label"><i class="ion-at"></i> Email Address</label>
                    <input type="email" class="form-control" ng-model="user.email" />
                </div>
                <button class="btn btn-lg btn-success">Update Information</button>
            </form>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">Accounts</div>
        <div class="panel-body">
            <legend><i class="ion-link"></i> Linked Accounts</legend>
            <div class="btn-group-vertical">
                <button class="btn btn-sm btn-danger" ng-if="user.facebook" ng-click="unlink('facebook')">
                    <i class="ion-social-facebook"></i> Unlink Facebook Account
                </button>
                <button class="btn btn-sm btn-primary" ng-if="!user.facebook" ng-click="link('facebook')">
                    <i class="ion-social-facebook"></i> Link Facebook Account
                </button>

                <button class="btn btn-sm btn-danger" ng-if="user.google" ng-click="unlink('google')">
                    <i class="ion-social-googleplus"></i> Unlink Google Account
                </button>
                <button class="btn btn-sm btn-primary" ng-if="!user.google" ng-click="link('google')">
                    <i class="ion-social-googleplus"></i> Link Google Account
                </button>

                <button class="btn btn-sm btn-danger" ng-if="user.linkedin" ng-click="unlink('linkedin')">
                    <i class="ion-social-linkedin"></i> Unlink LinkedIn Account
                </button>
                <button class="btn btn-sm btn-primary" ng-if="!user.linkedin" ng-click="link('linkedin')">
                    <i class="ion-social-linkedin"></i> Link LinkedIn Account
                </button>

                <button class="btn btn-sm btn-danger" ng-if="user.twitter" ng-click="unlink('twitter')">
                    <i class="ion-social-twitter"></i> Unlink Twitter Account
                </button>
                <button class="btn btn-sm btn-primary" ng-if="!user.twitter" ng-click="link('twitter')">
                    <i class="ion-social-twitter"></i> Link Twitter Account
                </button>

                <button class="btn btn-sm btn-danger" ng-if="user.github" ng-click="unlink('github')">
                    <i class="ion-social-github"></i> Unlink GitHub Account
                </button>
                <button class="btn btn-sm btn-primary" ng-if="!user.github" ng-click="link('github')">
                    <i class="ion-social-github"></i> Link GitHub Account
                </button>

                <button class="btn btn-sm btn-danger" ng-if="user.instagram" ng-click="unlink('instagram')">
                    <i class="ion-social-instagram"></i> Unlink Instagram Account
                </button>
                <button class="btn btn-sm btn-primary" ng-if="!user.instagram" ng-click="link('instagram')">
                    <i class="ion-social-instagram"></i> Link Instagram Account
                </button>

                <button class="btn btn-sm btn-danger" ng-if="user.foursquare" ng-click="unlink('foursquare')">
                    <i class="ion-social-foursquare"></i> Unlink Foursquare Account
                </button>
                <button class="btn btn-sm btn-primary" ng-if="!user.foursquare" ng-click="link('foursquare')">
                    <i class="ion-social-foursquare"></i> Link Foursquare Account
                </button>

                <button class="btn btn-sm btn-danger" ng-if="user.yahoo" ng-click="unlink('yahoo')">
                    <i class="ion-social-yahoo"></i> Unlink Yahoo Account
                </button>
                <button class="btn btn-sm btn-primary" ng-if="!user.yahoo" ng-click="link('yahoo')">
                    <i class="ion-social-yahoo"></i> Link Yahoo Account
                </button>

                <button class="btn btn-sm btn-danger" ng-if="user.live" ng-click="unlink('live')">
                    <i class="ion-social-windows"></i> Unlink Windows Live Account
                </button>
                <button class="btn btn-sm btn-primary" ng-if="!user.live" ng-click="link('live')">
                    <i class="ion-social-windows"></i> Link Windows Live Account
                </button>

                <button class="btn btn-sm btn-danger" ng-if="user.twitch" ng-click="unlink('twitch')">
                    <i class="ion-social-twitch"></i> Unlink Twitch Account
                </button>
                <button class="btn btn-sm btn-primary" ng-if="!user.twitch" ng-click="link('twitch')">
                    <i class="ion-social-twitch"></i> Link Twitch Account
                </button>

                <button class="btn btn-sm btn-danger" ng-if="user.bitbucket" ng-click="unlink('bitbucket')">
                    <i class="fa fa-bitbucket"></i> Unlink Bitbucket Account
                </button>
                <button class="btn btn-sm btn-primary" ng-if="!user.bitbucket" ng-click="link('bitbucket')">
                    <i class="fa fa-bitbucket"></i> Link Bitbucket Account
                </button>

                <button class="btn btn-sm btn-danger" ng-if="user.spotify" ng-click="unlink('spotify')">
                    <i class="fa fa-spotify"></i> Unlink Spotify Account
                </button>
                <button class="btn btn-sm btn-primary" ng-if="!user.spotify" ng-click="link('spotify')">
                    <i class="fa fa-spotify"></i> Link Spotify Account
                </button>

            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/views/template/header.jsp"%>