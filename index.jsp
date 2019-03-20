<%@ include file="dbcon.jsp" %>
<%!  int m1=0,count=0,m2=0;
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
        rs=st.executeQuery("select name,email,pic from profile where email='"+s+"' ");
         if(rs.next())

              {

                     
                      s2=rs.getString(1);
                      s3=rs.getString(2);
                      s5=rs.getString(3);
                  
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
	<link rel="stylesheet" href="rahul/css1/main.css" />
		<noscript><link rel="stylesheet" href="rahul/css1/noscript.css" /></noscript>

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

  <link href="loading/css/style.css" rel="stylesheet">
    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

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
    <div class="sidebar"   data-color="purple" >

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="index.jsp" class="simple-text">
                    Desbox
                </a>
            </div>

            <ul class="nav">
                <li class="active">
                    <a href="index.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li>
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
                                    <i class=" 	fa fa-edit"></i>
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
<div id="wrapper">				
					<div id="main">
						<div class="inner">
						<br>
							<section class="tiles">

                                <%
                                int a[]=new int[100],i=0,j=0;
                                String a1[]=new String[100];
                                
                                  try
                                {
                                    st2=con.createStatement();
                                    rs2=st2.executeQuery("select classcode from join1 where email='"+s+"'");
                                    while(rs2.next())
                                    {
                                    	a1[i]=rs2.getString(1);
                                       
                                    	i++;
                                    }
                                }
                                catch(Exception r)
                                {
                                	out.println(r);
                                }
                               
                                for(j=0;j<i;j++)
                                    {
                             try
                             {
                             	
                                st1=con.createStatement();
                                rs1=st1.executeQuery("select cid,cname,subject,classcreate.classcode,classpic from classcreate where classcode='"+a1[j]+"'");
                                 	
                                 
                                while(rs1.next())
                                {
                                   s10=rs1.getString(1);
                                   s6=rs1.getString(2);
                                   s7=rs1.getString(3);
                                   s8=rs1.getString(4);
                                   s9=rs1.getString(5); 
                                  
                                   %>

								<article class="style<%=s9 %>">
									<span class="image">
										<img src="rahul/images/<%=s9 %>.jpg" alt="" />
									</span>
									<a href="class.jsp?k=<%=s10 %>">
										<h5><%=s7 %></h5>
										<div class="content">
											<p><%=s6 %></p>
                                                <p>class code <%=s8%></p>
										</div>
									</a>
								</article>
                                        <%
                                }

                             }
                                 catch(Exception md)
                                 {
                                    out.println(md);
                                 }
                             }
                                 %>
                             <!--   
								<article class="style2">
									<span class="image">
										<img src="rahul/images/2.jpg" alt="" />
									</span>
									<a href="class.jsp">
										<h2>dmw</h2>
										<div class="content">
											<p>Sed nisl arcu euismod sit amet nisi lorem etiam dolor veroeros et feugiat.</p>
										</div>
									</a>
								</article>
								<article class="style4">
									<span class="image">
										<img src="rahul/images/3.jpg" alt="" />
									</span>
									<a href="class.jsp">
										<h2>java</h2>
										<div class="content">
											<p>Sed nisl arcu euismod sit amet nisi lorem etiam dolor veroeros et feugiat.</p>
										</div>
									</a>
								</article>!-->
							</section>
						</div>
					</div>

				
			</div>


        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="user.jsp">
                                User Profile
                            </a>
                        </li>
                        <li>
                            <a href="create.jsp">
                                Create Class
                            </a>
                        </li>
                        <li>
                            <a href="Join.jsp">
                               Join Class
                            </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> Desbox
                </p>
            </div>
        </footer>

    </div>
</div>
	<script src="rahul/js1/jquery.min.js"></script>
			<script src="rahul/js1/browser.min.js"></script>
			<script src="rahul/js1/breakpoints.min.js"></script>
			<script src="rahul/js1/util.js"></script>
			<script src="rahul/js1/main.js"></script>
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

	<script type="text/javascript">
    	$(document).ready(function(){

        	demo.initChartist();

        	$.notify({
            	icon: 'pe-7s-gift',
            	message: "Welcome to Deskbox You Can Share And Join Class"

            },{
                type: 'info',
                timer: 4000
            });

    	});
	</script>
	

</html>
