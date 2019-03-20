<%@ include file="dbcon.jsp" %>
<%!  int m1=0;
      String s="",s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="",s12="";
   %>

   <%    s=(String)session.getAttribute("room");
        if(s==null)
        {
            response.sendRedirect("login.jsp");
        }
            response.setContentType("text/html");
    %>
    <%
     s6=request.getParameter("k");
try
    {
        st=con.createStatement();
        rs=st.executeQuery("select * from profile where email='"+s+"' ");
         if(rs.next())

              {

                     
                      s2=rs.getString(2);
                      s3=rs.getString(3);
                      s4=rs.getString(4);
                      s5=rs.getString(5);
                  
                    }
    }
    catch(Exception e)
    {
        out.println(e);
    }

    %>


<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>DesBox</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

                  <style type="text/css">
    .round
    {
        border-radius: 60% !important;
            width: 60px !important;
            height: 60px !important;
    }
    .ss1
    {
    height: 200px !important;
    }
</style>
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <link rel="stylesheet" href="mail/css/bootstrap.min.css">
    <link rel="stylesheet" href="mail/mails.css">
    <link rel="stylesheet" href="mail/css/responsive.css">
 
    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="loading/css/style.css" rel="stylesheet">
    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">

    <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="http://www.creative-tim.com" class="simple-text">
                  DesBox
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="index.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li >
                    <a href="user.jsp">
                        <i class="pe-7s-user"></i>
                        <p>User Profile</p>
                    </a>
                </li>
                <li>
                    <a href="create.jsp">
                        <i class="pe-7s-note"></i>
                        <p>Create Class</p>
                    </a>
                </li>
                <li>
                    <a href="join.jsp">
                        <i class="pe-7s-link"></i>
                        <p>Join Class</p>
                    </a>
                </li>
                 <li>
                    <a href="table.jsp">
                        <i class="pe-7s-science"></i>
                        <p>connections</p>
                    </a>
                </li>
                <li >
                    <a href="mail.jsp">
                        <i class="fa fa-envelope"></i>
                        <p>Sent Mail</p>
                    </a>
                </li>
                <li>
                    <a href="cal.jsp">
                        <i class="fa fa-calendar"></i>
                        <p>Calender</p>
                    </a>
                </li>
                
            </ul>
        </div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                                   <%if(s5==null) {%>
 <img src="images/m1.jpg" class="navbar-brand round" alt="" />
  <% } else { %>
 <img src="profilepic/<%= s5 %>" class="navbar-brand round" alt="" />
 <% } %>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Hello Mr.<%= s2 %></a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
                                <p class="hidden-lg hidden-md">Dashboard</p>
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="  fa fa-edit"></i>
                                    <b class="caret hidden-sm hidden-xs"></b>
                                   
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="create.jsp">Create Class</a></li>
                                <li><a href="join.jsp">Join Class</a></li>
                                
                              </ul>
                        </li>
                        
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="user.jsp">
                               <p>Account</p>
                            </a>
                        </li>
                    
                        <li>
                            <a href="logout.jsp">
                                <p>Log out</p>
                            </a>
                        </li>
                        <li class="separator hidden-lg hidden-md"></li>
                    </ul>
                </div>
            </div>
        </nav>

<br><br>
<div class="all-content-wrapper">

     
        <div class="mailbox-compose-area mg-b-15">
            <div class="container-fluid">
              
                    <div class="col-md-9 col-md-9 col-sm-9 col-xs-12">
                    	 <div class="hpanel shadow-inner responsive-mg-b-30">
                            <div class="panel-body">
                                <a href="mail.jsp" class="btn btn-success compose-btn btn-block m-b-md">Compose</a>
                            </div>
                        </div>
                        <div class="hpanel email-compose">
                            <div class="panel-heading hbuilt">
                                <div class="p-xs h4">
                                    New message
                                </div>
                            </div>
                            <div class="panel-heading hbuilt">
                                <div class="p-xs">
                                    <form method="post" class="form-horizontal" id="form1" action="sendmail.jsp">
                                        <div class="form-group">
                                            <label class="col-lg-1 control-label text-left">To:</label>
                                            <div class="col-lg-11 col-md-12 col-sm-12 col-xs-12">
                                                <input  type="text" class="form-control input-sm"  name="p1" value="<%= s6 %>">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-1 control-label text-left">Cc:</label>
                                            <div class="col-lg-11 col-md-12 col-sm-12 col-xs-12">
                                                <input id="recipient_email" type="text" class="form-control input-sm" name="p2">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-1 control-label text-left">Subject: </label>
                                            <div class="col-lg-11 col-md-12 col-sm-12 col-xs-12" >
                                                <input type="text" class="form-control input-sm ss1" placeholder="Subject" name="p3" >
                                            </div>
                                        </div>

                            <div class="panel-footer">
                               
                                <button class="btn btn-primary ft-compse" form="form1">Send email:</button>
                                <div class="btn-group active-hook mail-btn-sd">
                                    </div>
                            </div>
                                    </form>
                                </div>
                            </div>
                     
                        </div>
                    </div>
                </div>
            </div>
        </div>
     
    </div>



        <footer class="footer">
            <div class="container-fluid">
               
                <p class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> DesBox
                </p>
            </div>
        </footer>

    </div>
</div>


  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <div id="preloader"></div>

  <!-- JavaScript Libraries -->
  <script src="loading/lib/jquery/jquery.min.js"></script>
  <script src="loading/lib/jquery/jquery-migrate.min.js"></script>
  
  <script src="loading/lib/scrollreveal/scrollreveal.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="loading/contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="loading/js/main.js"></script>
</body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

    <!--  Charts Plugin -->
    <script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
    <script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

    <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
    <script src="assets/js/demo.js"></script>

</html>
