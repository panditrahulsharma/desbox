<%@ page import="java.io.*,java.sql.*" %>
<%@  include file="dbcon.jsp" %>
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
        <style type="text/css">
    .round
    {
        border-radius: 60% !important;
            width: 60px !important;
            height: 60px !important;
    }
</style>
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


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
    <div class="sidebar" data-color="purple">

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
                <li>

                	 <li class="active">
                    <a href="user.jsp">
                        <i class="pe-7s-user"></i>
                        <p>User Profile</p>
                    </a>
                </li>
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
                    <a class="navbar-brand" href="#">Hello Mr.<%=s2 %></a>
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

        <div class="content">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-md-4">
                        <div class="card card-user">
                            <div class="image">
                                  </div>
                            <div class="content">
                                <div class="author">
                                     <a href="#">
                                     	<%if(s5==null) {%>
                                    <img class="avatar border-gray" src="assets/img/faces/p1.jpg" alt="..."/>
                                    <% } else { %>
                                      <img class="avatar border-gray" src="profilepic/<%= s5 %>" alt="..."/>
                                  <% } %>

                                      <h4 class="title"><%=s2 %><br />
                                        
                                                                          </h4>
                                    </a>
                                </div>
                                <p class="description text-center"> <%= s3%><br>
                                                  
                                </p>
                            </div>
                            <hr>
                            <div class="text-center">
                                <button href="#" class="btn btn-simple"><i class="fa fa-facebook-square"></i></button>
                                <button href="#" class="btn btn-simple"><i class="fa fa-twitter"></i></button>
                                <button href="#" class="btn btn-simple"><i class="fa fa-google-plus-square"></i></button>

                            </div>
                        </div>
                    </div>
<div class="col-md-8">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Edit Profile</h4>
                            </div>
                            <div class="content">
                                <form>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>First Name</label>
                                                <input type="text" class="form-control" placeholder="Company" value="<%= s2 %>">
                                            </div>
                                        </div>
                                        
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Email Address</label>
                                                <input type="email" class="form-control" placeholder="" value="<%= s3 %>">
                                            </div>
                                        </div>
                                    </div>
                                     <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Password</label>
                                                <input type="password" class="form-control" placeholder="ndnejdj" value="<%= s4 %>">
                                            </div>
                                        </div>
                                    </div>

                                

                                    
                                    <button type="submit" class="btn btn-info btn-fill pull-right">Update Profile</button>
                                    <div class="clearfix"></div>
                                </form>
                                
                            </div>

                            <div class="content">
                            <form action="uploadpic.jsp" method="post" enctype = "multipart/form-data">
                                 <input type="file" name="file" value="fileupload" id="fileupload">
                               <label for="fileupload"> Select a file to upload</label>
                           
                            <button type="submit" class="btn btn-info btn-fill pull-right">Update Image</button>
                             <div class="clearfix"></div>
                                    </form>    
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
