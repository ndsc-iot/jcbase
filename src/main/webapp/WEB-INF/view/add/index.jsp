<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<% System.setProperty("no_visible_elements", "false"); %>
<%@ include file="common/header.jsp" %>

<div>
    <ul class="breadcrumb">
        <li>
            <a href="#">主页</a>
        </li>
        <li>
            <a href="#">信息概览</a>
        </li>
    </ul>
</div>
<div class=" row">
    <div class="col-md-3 col-sm-3 col-xs-6">
        <a data-toggle="tooltip" title="6 new members." class="well top-block" href="#">
            <i class="glyphicon glyphicon-user blue"></i>

            <div>用户数量</div>
            <div>507</div>
            <span class="notification">6</span>
        </a>
    </div>

    <div class="col-md-3 col-sm-3 col-xs-6">
        <a data-toggle="tooltip" title="4 new pro members." class="well top-block" href="#">
            <i class="glyphicon glyphicon-star green"></i>

            <div>告警</div>
            <div>228</div>
            <span class="notification green">4</span>
        </a>
    </div>

    <div class="col-md-3 col-sm-3 col-xs-6">
        <a data-toggle="tooltip" title="$34 new sales." class="well top-block" href="#">
            <i class="glyphicon glyphicon-shopping-cart yellow"></i>

            <div>传感器数量</div>
            <div>1330</div>
            <span class="notification yellow">30</span>
        </a>
    </div>

    <div class="col-md-3 col-sm-3 col-xs-6">
        <a data-toggle="tooltip" title="12 new messages." class="well top-block" href="#">
            <i class="glyphicon glyphicon-envelope red"></i>

            <div>门禁锁</div>
            <div>30</div>
            <span class="notification red">3</span>
        </a>
    </div>
</div>

<div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well">
                <h2><i class="glyphicon glyphicon-info-sign"></i> Introduction</h2>

                <div class="box-icon">
                    <a href="#" class="btn btn-setting btn-round btn-default"><i
                            class="glyphicon glyphicon-cog"></i></a>
                    <a href="#" class="btn btn-minimize btn-round btn-default"><i
                            class="glyphicon glyphicon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round btn-default"><i
                            class="glyphicon glyphicon-remove"></i></a>
                </div>
            </div>
            <div class="box-content row">
                <div class="col-lg-7 col-md-12">
                    <h1>维护中... <br>
                        <small>后续将根据原定设计完善，敬请期待.</small>
                    </h1>
                    <p></p>

                    <p><b></b></p>

                    <!-- <p class="center-block download-buttons">
                        <a href="http://usman.it/free-responsive-admin-template/" class="btn btn-primary btn-lg" ><i
                                class="glyphicon glyphicon-chevron-left glyphicon-white"></i> Back to article</a>
                        <a href="http://usman.it/free-responsive-admin-template/" class="btn btn-default btn-lg"><i
                                class="glyphicon glyphicon-download-alt"></i> Download Page</a>
                    </p> -->
                </div>
               

            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="box col-md-4">
        <div class="box-inner homepage-box">
            <div class="box-header well">
                <h2><i class="glyphicon glyphicon-th"></i> 展示1</h2>

                <div class="box-icon">
                    <a href="#" class="btn btn-setting btn-round btn-default"><i
                            class="glyphicon glyphicon-cog"></i></a>
                    <a href="#" class="btn btn-minimize btn-round btn-default"><i
                            class="glyphicon glyphicon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round btn-default"><i
                            class="glyphicon glyphicon-remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <ul class="nav nav-tabs" id="myTab">
                    <li class="active"><a href="#info">Info</a></li>
                    <li><a href="#custom">Custom</a></li>
                    <li><a href="#messages">Messages</a></li>
                </ul>

                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane active" id="info">
                        <h3>Charisma
                            <small>a full featured template</small>
                        </h3>
                        <p>It's a full featured, responsive template for your admin panel. It's optimized for tablets
                            and mobile phones.</p>

                        <p>Check how it looks on different devices:</p>
                        <a href="http://www.responsinator.com/?url=usman.it%2Fthemes%2Fcharisma"
                           target="_blank"><strong>Preview on iPhone size.</strong></a>
                        <br>
                        <a href="http://www.responsinator.com/?url=usman.it%2Fthemes%2Fcharisma"
                           target="_blank"><strong>Preview on iPad size.</strong></a>
                    </div>
                    <div class="tab-pane" id="custom">
                        <h3>Custom
                            <small>small text</small>
                        </h3>
                        <p>Sample paragraph.</p>

                        <p>Your custom text.</p>
                    </div>
                    <div class="tab-pane" id="messages">
                        <h3>Messages
                            <small>small text</small>
                        </h3>
                        <p>Sample paragraph.</p>

                        <p>Your custom text.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/span-->

    <div class="box col-md-4">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-user"></i> 展示2</h2>

                <div class="box-icon">
                    <a href="#" class="btn btn-minimize btn-round btn-default"><i
                            class="glyphicon glyphicon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round btn-default"><i
                            class="glyphicon glyphicon-remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <div class="box-content">
                    <ul class="dashboard-list">
                        <li>
                            <a href="#">
                                <img class="dashboard-avatar" alt="Usman"
                                     src="http://www.gravatar.com/avatar/f0ea51fa1e4fae92608d8affee12f67b.png?s=50"></a>
                            <strong>Name:</strong> <a href="#">Usman
                            </a><br>
                            <strong>Since:</strong> 17/05/2014<br>
                            <strong>Status:</strong> <span class="label-success label label-default">Approved</span>
                        </li>
                        <li>
                            <a href="#">
                                <img class="dashboard-avatar" alt="Sheikh Heera"
                                     src="http://www.gravatar.com/avatar/3232415a0380253cfffe19163d04acab.png?s=50"></a>
                            <strong>Name:</strong> <a href="#">Sheikh Heera
                            </a><br>
                            <strong>Since:</strong> 17/05/2014<br>
                            <strong>Status:</strong> <span class="label-warning label label-default">Pending</span>
                        </li>
                        <li>
                            <a href="#">
                                <img class="dashboard-avatar" alt="Abdullah"
                                     src="http://www.gravatar.com/avatar/46056f772bde7c536e2086004e300a04.png?s=50"></a>
                            <strong>Name:</strong> <a href="#">Abdullah
                            </a><br>
                            <strong>Since:</strong> 25/05/2014<br>
                            <strong>Status:</strong> <span class="label-default label label-danger">Banned</span>
                        </li>
                        <li>
                            <a href="#">
                                <img class="dashboard-avatar" alt="Sana Amrin"
                                     src="http://www.gravatar.com/avatar/hash"></a>
                            <strong>Name:</strong> <a href="#">Sana Amrin</a><br>
                            <strong>Since:</strong> 17/05/2014<br>
                            <strong>Status:</strong> <span class="label label-info">Updates</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--/span-->

    <div class="box col-md-4">
        <div class="box-inner homepage-box">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-list-alt"></i> 展示3</h2>

                <div class="box-icon">
                    <a href="#" class="btn btn-minimize btn-round btn-default"><i
                            class="glyphicon glyphicon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round btn-default"><i
                            class="glyphicon glyphicon-remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <h3>Stay updated with my projects and blog posts</h3>
                <!-- Begin MailChimp Signup Form -->
                <div class="mc_embed_signup">
                    <form action="//halalit.us3.list-manage.com/subscribe/post?u=444b176aa3c39f656c66381f6&amp;id=eeb0c04e84" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
                        <div>
                            <label>Please enter your email</label>
                            <input type="email" value="" name="EMAIL" class="email" placeholder="Email address" required>

                            <div class="power_field"><input type="text" name="b_444b176aa3c39f656c66381f6_eeb0c04e84" tabindex="-1" value=""></div>
                            <div class="clear"><input type="submit" value="Subscribe" name="subscribe" class="button"></div>
                        </div>
                    </form>
                </div>

                <!--End mc_embed_signup-->
                <br/>

                <p>You may like my other open source work, check my profile on <a href="http://github.com/usmanhalalit"
                                                                                  target="_blank">GitHub</a>.</p>

            </div>
        </div>
    </div>
    <!--/span-->
</div><!--/row-->



<%@ include file="common/footer.jsp" %>
