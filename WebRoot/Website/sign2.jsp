<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!doctype html>
<html lang="zh">
<head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <<meta http-equiv="keywords" content="湖南信息学院办公室,政青春,湖南信息学院办公室政青春学生团队">
<meta http-equiv="keywords" content="湖南信息学院">
<meta http-equiv="keywords" content="湖南信息学院政青春">
<meta name="description" content="湖南信息学院、湖南信息学院办公室、政青春、湖南信息学院办公室政青春学生团队，">
    <meta name="author" content="Ecology Theme">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>政青春-招新报名</title>
    <link rel="shortcut icon" href="http://ecologytheme.com/theme/ecostudy/images/favicon.ico" type="image/x-icon">
    <!-- Goole Font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/assets/bootstrap.min.css">
    <!-- Font awsome CSS -->
    <link rel="stylesheet" href="css/assets/font-awesome.min.css">
    <link rel="stylesheet" href="css/assets/flaticon.css">
    <link rel="stylesheet" href="css/assets/magnific-popup.css">
    <!-- owl carousel -->
    <link rel="stylesheet" href="css/assets/owl.carousel.css">
    <link rel="stylesheet" href="css/assets/owl.theme.css">
    <link rel="stylesheet" href="css/assets/animate.css">
    <!-- Slick Carousel -->
    <link rel="stylesheet" href="css/assets/slick.css">
    <link rel="stylesheet" href="css/assets/preloader.css"/>

    <!-- Revolution Slider -->
    <link rel="stylesheet" href="css/assets/revolution/layers.css">
    <link rel="stylesheet" href="css/assets/revolution/navigation.css">
    <link rel="stylesheet" href="css/assets/revolution/settings.css">
    <!-- Mean Menu-->
    <link rel="stylesheet" href="css/assets/meanmenu.css">
    <!-- main style-->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/master.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>



    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="http://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>        .right-btn:link #joinus{
            color: black;
        }
        .right-btn:visited #joinus{
            color: black;
        }
        .right-btn:hover #joinus{
            color: white;
        }
        .right-btn:active #joinus{
            color: black;
        }
    </style>
</head>
<body>
<!-- Preloader -->
<!-- <div id="loader-wrapper">
     <div id="loader"></div>
  <div class="loader-section section-left"></div>
  <div class="loader-section section-right"></div>
</div> -->
<header id="header" class="header_1 header_2">
    <div class="header-top">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-xs-12 header-top-left phone-mail">

                </div>
                <div class="col-sm-6 col-xs-12 header-top-left">

                </div>
            </div>
        </div>

        <div class="eco_nav">
            <div class="container">
                 <nav class="navbar navbar-expand-md navbar-light bg-faded">
                    <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="logo"></a>
                    <div class="collapse navbar-collapse main-menu" id="navbarSupportedContent">
                        <ul class="navbar-nav nav lavalamp ml-auto menu">
                            <li class="nav-item menu-item current-menu-item"><a href="index.html" class="nav-link active">首页</a>

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

                                    <li class="nav-item"><a href="forgot-password.html" class="nav-link">联系我们</a></li>
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
</header> <!-- End nav -->
<!--注册表单-->
<div class="container">
    <div class="row">
        <div id="divForm" class="col-md-6 col-sm-10">
            <form action="/Zqc/AlipayServlet" method="post">
                <div class="form-group">
                    <h3 style="text-align: center">招新报名信息表</h3>
                </div>


                <div class="form-group">
                    <div class="input-group">
                        <label for="name">姓 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</label>
                        <input type="text" name="name" class="form-control input-md" required style="border-radius: 5px;" placeholder="请输入姓名" />
                    </div>
                </div>


                <div class="form-group">
                    <div class="input-group">
                        <label for="name">性 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <label class="radio-inline">
                            <input type="radio" name="sex" id="optionsRadios3"  value="男" checked> 男
                        </label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <label class="radio-inline">
                            <input type="radio" name="sex" id="optionsRadios4"  value="女"> 女
                        </label>
                    </div>
                </div>


                <div class="form-group">
                    <label for="name" >学 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;院</label>
                    <select class="form-control" name="college">
                        <option>电子信息学院</option>
                        <option>商学院</option>
                        <option>管理学院</option>
                        <option>人文艺术学院</option>
                    </select>
                </div>


                <div class="form-group">
                    <div class="input-group">
                        <label for="name">班 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;级</label>
                        <input type="text" name="classes" class="form-control input-md" required style="border-radius: 5px;" placeholder="请输入班级（如：16软件本5班）" />
                    </div>
                </div>

                <div class="form-group">
                    <label for="name" >意向部门</label>
                    <select class="form-control" name="department">
                        <option value="办公室">办公室</option>
                        <option value="文秘部">文秘部</option>
                        <option value="行政会务部">行政会务部</option>
                        <option value="宣传组织部">宣传组织部</option>
                        <option value="礼仪模特部">礼仪模特部</option>
                    </select>
                </div>


                <div class="form-group">
                    <div class="input-group">
                        <label for="name">Q&nbsp;&nbsp;&nbsp;&nbsp;Q</label>
                        <input type="text" name="qq" class="form-control input-md" style="border-radius: 5px;" required placeholder="请输入QQ号码" />
                    </div>
                </div>


                <div class="form-group">
                    <div class="input-group">
                        <label for="name">联系电话</label>
                        <input type="tel" name="telphone" class="form-control input-md" style="border-radius: 5px;" required placeholder="请输入手机号码" />
                    </div>
                </div>


                <div class="form-group">
                    <div class="input-group">
                        <img src="images/Alipaylogo.png" style="width: 50px;height: 50px;display: inline-block"><h4 style="display: inline-block;margin-left: 20px;">点击提交,支付报名费用5.00元</h4>
                    </div>
                </div>


                <div class="form-group">
                    <button type="submit" class="btn btn-warning col-md-12 btn-lg">提交报名信息</button>
                </div>
            </form>
        </div>
    </div>
</div>

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



<!--============= { Ccroll Top} ===========-->
<section id="scroll-top" class="scroll-top">
    <h2>&nbsp;</h2>
    <div class="to-top pos-rtive">
        <a href="#"><i class = "flaticon-up-arrow"></i></a>
    </div>
</section>


<!-- JavaScript -->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/jquery.meanmenu.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>