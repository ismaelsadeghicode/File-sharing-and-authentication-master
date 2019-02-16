<%@include file="/static/template/footer.jsp"%>

<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading">Home Page</div>
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Upload</h2>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus,
                        tellus ac cursus commodo, tortor mauris condimentum nibh, ut
                        fermentum massa justo sit amet risus. Etiam porta sem malesuada
                        magna mollis euismod. Donec sed odio dui.</p>
                    <p><a class="btn btn-primary" href="#">View details »</a></p>
                </div>
                <div class="col-sm-6">
                    <h2>Download</h2>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus,
                        tellus ac cursus commodo, tortor mauris condimentum nibh, ut
                        fermentum massa justo sit amet risus. Etiam porta sem malesuada
                        magna mollis euismod. Donec sed odio dui.</p>
                    <p><a class="btn btn-primary" href="#">View details »</a></p>
                </div>
            </div>
        </div>
        <div class="panel-footer text-center">
            <ul class="list-inline">
                <li><i class="ion-star"></i> {{stars | number}} stars</li>
                <li><i class="ion-fork-repo"></i> {{forks | number}} forks</li>
                <li><i class="ion-pull-request"></i> {{issues | number}} issues</li>
            </ul>
        </div>
    </div>
</div>
<div class="text-center">
    <a class="btn btn-default" href="#"><i class="ion-social-github"></i>#####</a>
    <a class="btn btn-default" href="#"><i class="ion-bug"></i>#####</a>
</div>
<%@include file="/WEB-INF/views/template/header.jsp"%>
