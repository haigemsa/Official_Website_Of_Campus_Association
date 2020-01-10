<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta http-equiv="keywords" content="湖南信息学院办公室,政青春,湖南信息学院办公室政青春学生团队">
<meta http-equiv="keywords" content="湖南信息学院">
<meta http-equiv="keywords" content="湖南信息学院政青春">
<meta name="description" content="湖南信息学院、湖南信息学院办公室、政青春、湖南信息学院办公室政青春学生团队，">
    <meta name="author" content="Ecology Theme">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>信息查询</title>
    <link rel="shortcut icon" href="http://ecologytheme.com/theme/ecostudy/images/favicon.ico" type="image/x-icon">
    <!-- Goole Font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/assets/bootstrap.min.css">
    <!-- Font awsome CSS -->
    <link rel="stylesheet" href="css/assets/font-awesome.min.css">
    <link rel="stylesheet" href="css/assets/flaticon.css">
    <!-- owl carousel -->
    <link rel="stylesheet" href="css/assets/owl.carousel.css">
    <link rel="stylesheet" href="css/assets/owl.theme.css">
    <link rel="stylesheet" href="css/assets/animate.css">
    <!-- Mean Menu-->
    <link rel="stylesheet" href="css/assets/meanmenu.css">
    <link rel="stylesheet" href="css/assets/preloader.css"/>
    <!-- Slick Carousel -->
    <link rel="stylesheet" href="css/assets/slick.css">

    <!-- main style-->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/master.css">
    <link rel="stylesheet" href="css/responsive.css">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="contact_page">
<!-- Preloader -->
<!-- <div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
</div> -->
<!--========={ EcoStudy Nav }========-->
<header id="header" class="courses_details inner_page">
    <div class="header-top">
        <div class="container">
            <div class="row">

			   <div class="col-sm-6 col-xs-12 header-top-left phone-mail">

				</div>
                <div class="col-sm-6 col-xs-12 header-top-left">
                     <ul class="d-flex ">
                        <li class="nav-item"><a href="/Zqc/Login.jsp" ><i class="flaticon-login-button"></i>运营入口</a></li>

                    </ul>
                </div>
            </div>
        </div>

        <div class="eco_nav">
            <div class="container">
                <nav class="navbar navbar-expand-md navbar-light bg-faded">
                    <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="logo"></a>
                    <div class="collapse navbar-collapse main-menu" id="navbarSupportedContent">
                        <ul class="navbar-nav nav ml-auto">
                            <li class="nav-item"><a href="index.html" class="nav-link">首页</a>

                            </li>
                            <li class="nav-item single_nav"><a href="#" class="nav-link">部门</a>
                                <ul class="navbar-nav nav mx-auto">
                                    <li class="nav-item"><a href="courses-1.html" class="nav-link">办公室</a></li>
                                    <li class="nav-item"><a href="courses-2.html" class="nav-link">文秘部</a></li>
                                    <li class="nav-item"><a href="courses-3.html" class="nav-link">行政会务部</a></li>




                                    <li class="nav-item"><a href="courses-4-carousel.html" class="nav-link">宣传组织部</a></li>
                                    <li class="nav-item"><a href="course-details.html" class="nav-link">礼仪模特部</a></li>
                                </ul>
                            </li>
                            <li class="nav-item single_nav"><a href="event-details.html" class="nav-link dropdown_icon">日常工作</a>
                                <ul class="navbar-nav nav mx-auto">

                                </ul>
                            </li>
                            <li class="nav-item single_nav"><a href="#" class="nav-link">交流日常</a>
                                <ul class="navbar-nav nav mx-auto">
                                    <li class="nav-item"><a href="event-list-1.html" class="nav-link">早训</a></li>
                                    <li class="nav-item"><a href="event-list-2.html" class="nav-link">培训</a></li>
                                    <li class="nav-item"><a href="event-list-3.html" class="nav-link">活动</a></li>


                                </ul>
                            </li>

                            <li class="nav-item single_nav"><a href="#" class="nav-link">页面导航</a>
                                <ul class="navbar-nav nav mx-auto">
                                    <li class="nav-item"><a href="#" class="nav-link dropdown_icon">部门</a>
                                        <ul class="navbar-nav nav mx-auto">
                                            <li class="nav-item"><a href="courses-1.html" class="nav-link">办公室</a></li>
                                            <li class="nav-item"><a href="courses-2.html" class="nav-link">文秘部</a></li>
                                            <li class="nav-item"><a href="courses-3.html" class="nav-link">行政会务部</a></li>
                                            <li class="nav-item"><a href="courses-4-carousel.html" class="nav-link">宣传组织部</a></li>
                                            <li class="nav-item"><a href="course-details.html" class="nav-link">礼仪模特部</a></li>
                                        </ul>
                                    </li>

                                    <li class="nav-item"><a href="#" class="nav-link dropdown_icon">交流日常</a> <ul class="navbar-nav nav mx-auto">
                                    <li class="nav-item"><a href="event-list-1.html" class="nav-link">早训</a></li>
                                    <li class="nav-item"><a href="event-list-2.html" class="nav-link">培训</a></li>
                                    <li class="nav-item"><a href="event-list-3.html" class="nav-link">活动</a></li>

                                </ul></li>
                                     <li class="nav-item"><a href="event-details.html" class="nav-link">日常工作</a></li>

                                    <li class="nav-item"><a href="forgot-password.htmll" class="nav-link">联系我们</a></li>
                                    <li class="nav-item"><a href="courses-5.html" class="nav-link">团队资料下载</a></li>
                                    <li class="nav-item"><a href="courses-6.html" class="nav-link">公告栏</a></li>
                                   <li class="nav-item"><a href="courses-7.html" class="nav-link">新闻栏</a></li>
<li class="nav-item"><a href="sign.jsp" class="nav-link">招新报名</a></li>
                                    <li class="nav-item"><a href="contact.jsp" class="nav-link">招新报名信息查询</a></li>

                                </ul>
                            </li>
                             <li class="nav-item single_nav"><a href="forgot-password.html" class="nav-link">联系我们</a>

                            </li>
                        </ul>
                    </div>
                    <div class="mr-auto sign-in-option">
                        <ul class="navbar-nav mx-auto">

                            <li class="nav-item"><i class="btn-demo" data-toggle="modal" data-target="#myModal2"><img src="images/menu_icon.png" alt=""></i></li>
                        </ul>
                    </div>
                </nav><!-- END NAVBAR -->
            </div>
        </div>
    </div>
</header>  <!-- End Header -->




<section class="login_signup_option">
    <div class="l-modal is-hidden--off-flow js-modal-shopify">
        <div class="l-modal__shadow js-modal-hide"></div>
        <div class="login_popup login_modal_body">
            <div class="Popup_title d-flex justify-content-between">
                <h2 class="hidden">&nbsp;</h2>
                <!-- Nav tabs -->
                <div class="row">
                    <div class="col-12 col-lg-12 col-md-12 col-lg-12 login_option_btn">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#login" role="tab">Login</a></li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#panel2" role="tab">Register</a></li>
                        </ul>
                    </div>
                    <div class="col-12 col-lg-12 col-md-12 col-lg-12">
                        <!-- Tab panels -->
                        <div class="tab-content card">
                            <!--Login-->
                            <div class="tab-pane fade in show active" id="login" role="tabpanel">
                                <form action="#">
                                    <div class="row">
                                        <div class="col-12 col-lg-12 col-md-12 col-lg-12">
                                            <div class="form-group">
                                                <label class="control-label">Email</label>
                                                <input type="email" class="form-control" placeholder="Username">
                                            </div>
                                        </div>
                                        <div class="col-12 col-lg-12 col-md-12 col-lg-12">
                                            <div class="form-group">
                                                <label class="control-label">Password</label>
                                                <input type="password" class="form-control" placeholder="Password">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 col-lg-12 col-md-12 col-lg-12 d-flex justify-content-between login_option">
                                            <a href="" title="" class="forget_pass">Forget Password ?</a>
                                            <button type="submit" class="btn btn-default login_btn">Login</button>
                                        </div>
                                        <div class="col-12 col-lg-12 col-md-12 col-lg-12">
                                            <div class="social_login">
                                                <div class="social_items">
                                                    <button class="google_login google">Login Google</button>
                                                    <button class="google_login facebook">Login Facebook</button>
                                                    <button class="google_login twitter">Login Twitter</button>
                                                    <button class="google_login linkdin">Login Linkdin</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!--/.Panel 1-->
                            <!--Panel 2-->
                            <div class="tab-pane fade" id="panel2" role="tabpanel">
                                <form action="#" class="register">
                                    <div class="row">
                                        <div class="col-12 col-lg-12 col-md-12 col-lg-12">
                                            <div class="form-group">
                                                <label  class="control-label">Name</label>
                                                <input type="text" class="form-control" placeholder="Username">
                                            </div>
                                        </div>
                                        <div class="col-12 col-lg-12 col-md-12 col-lg-12">
                                            <div class="form-group">
                                                <label  class="control-label">Email</label>
                                                <input type="email" class="form-control" placeholder="Email">
                                            </div>
                                        </div>
                                        <div class="col-12 col-lg-12 col-md-12 col-lg-12">
                                            <div class="form-group">
                                                <label  class="control-label">Password</label>
                                                <input type="password" class="form-control" placeholder="Password">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 col-lg-12 col-md-12 col-lg-12 d-flex justify-content-between login_option">
                                            <button type="submit" class="btn btn-default login_btn">Register</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        <!--/.Panel 2-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>



<section class="demo">
    <!-- Modal -->
    <div class="modal right fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="flaticon-close"></i></span></button>
                    <h2 class="modal-title" id="myModalLabel2"><a href="#"><img src="images/logo.png" alt=""></a><span class="disabled"></span></h2>
                </div>
                <div class="modal-body">
                    <div class="bar-nav">
                        <div class="bar-top">
                            <h2>友情链接</h2>
                            <ul>
                                <li><a href="sign.jsp">政青春团队招新报名<i class="flaticon-angle-arrow-pointing-to-right"></i></a></li>
                                <li><a href="http://hnisc.com" target="_blank">湖南信息学院
<i class="flaticon-angle-arrow-pointing-to-right"></i></a></li>
                                <li><a href="http://jwc.hniit.edu.cn/" target="_blank"> 湖南信息学院教务处<i class="flaticon-angle-arrow-pointing-to-right"></i></a></li>
                    <li><a href="http://jwgl.hnisc.com:8810" target="_blank">湖南信息学院教务青果网<i  class="flaticon-angle-arrow-pointing-to-right"></i></a></li>
                       <li><a href="http://zsb.hnisc.com/" target="_blank">湖南信息学院招生处<i class="flaticon-angle-arrow-pointing-to-right"></i></a></li>
                                <li><a href="http://hnxxy.bysjy.com.cn/" target="_blank">毕业生就业网<i class="flaticon-angle-arrow-pointing-to-right"></i></a></li>
                                <li><a href="http://hr.hniit.edu.cn/" target="_blank" >湖南信息学院人事处<i class="flaticon-angle-arrow-pointing-to-right"></i></a></li>

                                <li><a href="http://bwc.hniit.edu.cn/" target="_blank">湖南信息学院保卫处<i class="flaticon-angle-arrow-pointing-to-right"></i></a></li>




                            </ul>
                        </div>
                    </div>
                    <div class="bar-contact">
                        <span>联系我们</span>
                        <span>QQ：1952219401</span>
                        <span>1952219401@qq.com</span>
                    </div>

                    <div class="bar-icon">
                        <div class="serach_option widget_single">
                            <form>
                                <input type="text" name="名字" class="input-c" placeholder="名字">
                                <button type="submit"><i class="fas fa-paper-plane"></i></button>
                            </form>
                        </div>
                        <ul class="social_items d-flex">
                            <li><a href="#"><i class="fab fa-facebook-f fb-icon"></i></a></li>
                            <li><a href="#"><i class="fab fa-twitter twitt-icon"></i></a></li>
                            <li><a href="#"><i class="fab fa-linkedin-in link-icon"></i></a></li>
                            <li><a href="#"><i class="fab fa-instagram ins-icon"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div><!-- modal-content -->
        </div><!-- modal-dialog -->
    </div><!-- modal -->
</section>


<!--========={ Title Header }========-->
<section class="sub_header_banner">
    <div class="container">
        <div class="row">
            <div class="col-sm-10 col-md-12 col-lg-12">
                <div class="intro_text">
                    <h1>招新报名信息查询</h1>

                </div>
            </div>
        </div>
    </div>
</section>  <!-- End title header -->


<!--========={ Contact Info }========
<section class="contact_info_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-12 col-sm-12 col-md-12 col-lg-8 p-0">
               <div class="event_details">
                    <div class="details_title">
                        <h3>Get In Touch</h3>
                    </div>
                    <div class="event_location_info">
                        <ul class="list-unstyled">
                            <li><p class="hall_location">Location</p></li>
                            <li><p>12/A New street jercy</p><span>Campus Way NE Bothell<br> Kingtown, United Kingdom</span></li>
                            <li><p>Email</p><span>ecostudynews@gmail.com</span></li>
                            <li><p>Phone</p><span>+77 0251 215 1235</span><br><span>+77 0251 215 1235</span></li>
                        </ul>
                        <img src="images/shape/contact.png" alt="" class="contact__info_shpae">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="info_banner">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 col-sm-12 col-md-12 col-lg-6 ml-auto p-0">
                   <img src="images/contact1.png" alt="" class="img-fluid">
               </div>
            </div>
        </div>
    </div>
</section> <!-- End Contact Info -->


<!--========={ Contact Form }========-->
<section class="contact_form">

   <%--  <div class="leave_comment_wrapper" align="center">
        <div class="container" align="center">
            <div class="row" align="center">
               <!--  <div class="col-12 col-sm-12 col-md-12 col-lg-6 ml-auto p-0" align="center"> -->
                     <div class="leave_comment" align="center">
                        <h3 class="title">信息查询</h3>
                        <div id="message"></div>
                        <form method="post" action="FreshmanQueryServlet" name="contactform" id="contactform">
                            <div class="row">
                                <div class="col-12 col-sm-12 col-md-12 form-group">
                                   <input type="text" class="form-control" placeholder="填写电话号码" name="telphone" id="name">
                                </div>
                                <div class="col-12 col-sm-12 col-md-12 form-group">

                                </div>
                                <div class="col-12 col-sm-12 col-md-12 form-group">
                                    <input type="text" class="form-control"  placeholder="为您查询到以下信息" disabled="disabled" name="subject" id="subject">
                                </div>
                                <div class="col-12 col-sm-12 col-md-12 form-group">
                                    <textarea class="form-control" placeholder="Message" name="comments" id="comments">${stu.name},${stu.sex},${stu.college},${stu.classes},${stu.department}</textarea>
                                </div>

                                 <div class="col-12 col-sm-12 col-md-12 submit-btn">
                                    <input type="submit" class="text-center" value="提交"/>
                                </div>
                            </div>
                        </form>
                    </div>
               <!--  </div> -->
            </div>
        </div>
    </div> --%>
    <div class="container">
    <div class="row">
        <div id="divForm" class="col-md-12 col-sm-12">
            <form action="/Zqc/FreshmanQueryServlet" method="post">

                <div class="form-group">
                    <div class="input-group">
                        <h1 class="col-md-12 col-sm-12 text-center tab-h1" style="text-align: center;display: inline-block;">信息查询</h1>
                    </div>
                </div>
  <div class="row">
                                <div class="col-12 col-sm-12 col-md-12 form-group">
                                   <input type="text" class="form-control" placeholder="填写电话号码" name="telphone" id="name">
                                </div>

                                </div>

   <div class="form-group">
                    <div class="input-group">
                        <h1 class="col-md-12 col-sm-12 text-center tab-h1" style="text-align: center;display: inline-block;margin-top: 30px">
                            <input type="submit" class="backa" value="查询">
                        </h1>
                    </div>
                </div>


                <div class="form-group">
                    <div class="input-group">
                        <table class="table" style="text-align: center;margin-top: 30px;">
                            <thead>
                            <tr style="font-weight: bold">
                                <td>姓名</td>
                                <td>${stu.name}</td>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>性别</td>
                                <td>${stu.sex}</td>
                            </tr>
                            <tr>
                                <td>学院</td>
                                <td>${stu.college}</td>
                            </tr>
                            <tr>
                                <td>班级</td>
                                <td>${stu.classes}</td>
                            </tr>
                            <tr>
                                <td>QQ</td>
                                <td>${stu.qq}</td>
                            </tr>
                            <tr>
                                <td>电话</td>
                                <td>${stu.telphone}</td>
                            </tr>
                            <tr>
                                <td>意向部门</td>
                                <td>${stu.department}</td>
                            </tr>
                             <tr>
                                <td>报名时间</td>
                                <td>${stu.datetime}</td>
                            </tr>
                            <tr>
                                <td>报名状态</td>
                                <td>${stu.status1}</td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                </div>






            </form>
        </div>
    </div>
</div>
</section> <!-- End Contact Form -->


<!--========={ Footer }========-->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-12 col-sm-12 col-md-6 col-lg-3">
                <div class="footer_single">
                    <img src="images/logo2.png" alt="" class="footer_logo img-fluid">
                    <ul class="list-unstyled contact_info">
                        <li>1952219401@qq.com</li>
                        <li>QQ: 1952219401</li>
                    </ul>
                    <div class="social_wraper">

                    </div>
                </div>
            </div>

            <div class="col-12 col-sm-12 col-md-6 col-lg-3">
                <div class="footer_single footer_signle_item_2">
                    <h3 class="footer_item_title">部门</h3>
                    <ul class="list-unstyled">
                      <li><a href="courses-1.html">办公室</a></li>
                        <li><a href="courses-2.html">文秘部</a></li>
                        <li><a href="courses-3.html">行政会务部</a></li>
                        <li><a href="courses-4-carousel.html">宣传组织部</a></li>
                        <li><a href="course-details.html">礼仪模特部</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-12 col-sm-12 col-md-6 col-lg-3">
                <div class="footer_single footer_signle_item_3">
                    <h3 class="footer_item_title">办公地点</h3>
                    <ul class="list-unstyled">

                        <li><a href="#">求实楼会议室</a></li>
                        <li><a href="#">求实楼1108</a></li>
                        <li><a href="#">求实楼1401</a></li>
                        <li><a href="#">孔子讲堂</a></li>
                        <li><a href="#">鲁迅讲堂</a></li>

                    </ul>
                </div>
            </div>

            <div class="col-12 col-sm-12 col-md-6 col-lg-3">
                <div class="footer_single footer_signle_item_4">
                    <h3 class="footer_item_title">团队荣誉</h3>
                    <ul class="list-unstyled">

                        <li><a href="#">湘信院2017-2018优秀大学生社会实践行政服务基地</a></li>
                        <li><a href="#">湘信院2018-2019大学生社会实践行政服务基地</a></li>
                        <li><a href="#">全国大学生防艾滋病优秀协办单位</a></li>
                        <li><a href="#">全国大学生环保知识竞赛优秀协办单位</a></li>


                    </ul>
                </div>
            </div>

        </div>
    </div>
   <div class="copytight_info">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-12 col-lg-12 d-flex justify-content-between">
                    <p>  Copyright 2019-2020 湖南信息学院政青春团队 &nbsp;湘ICP备19015551号-1 2019</p>

                <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=43012102000653" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><img src="images/blog/blog110.jpg" style="float:left;"/><p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">湘公网安备 43012102000653号</p></a>

                    <ul class="nav navbar list-unstyled">
                        <li><a href="#">站长统计</a></li>
                        <li><a href="#">投诉建议</a></li>

                    </ul>

                </div>
            </div>
        </div>
    </div>
</footer><!-- Footer-->

 <!--============= { Ccroll Top} ===========-->
<section id="scroll-top" class="scroll-top">
    <h2>&nbsp;</h2>
    <div class="to-top pos-rtive">
        <a href="#"><i class = "flaticon-up-arrow"></i></a>
    </div><!-- Scroll to top button end-->
</section>


    <!--  JavaScript -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>

    <script src="http://ditu.google.cn/maps/api/js?key=AIzaSyBJnKEvlwpyjXfS_h-J1Cne2fPMqeb44Mk&callback=initMap"></script>
    <script src="js/map-helper.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/jquery.meanmenu.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/custom.js"></script>
</body>
</html>
