<%@ include file="dbcon.jsp" %>
<%!  int m1=0;
      String s="",s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="",s12="";
      String v1="",v2="",v3="",v4="",v5="",v6="";
   %>

   <%    s=(String)session.getAttribute("room");
        if(s==null)
        {
            response.sendRedirect("login.jsp");
        }
            response.setContentType("text/html");
    %>
    <% 
          s2=request.getParameter("k");
        m1=Integer.parseInt(s2);
         try
        {
            st=con.createStatement();
            rs=st.executeQuery("select name,pic from profile where email='"+s+"'");
            if(rs.next())
            {
              s1=rs.getString(1);
              s2=rs.getString(2);
              
            }
        }
        catch(Exception ep)
        {
        	out.println(ep);
        }

         try
        {
            st1=con.createStatement();
            rs1=st1.executeQuery("select cname,section,subject,submittime,classcode,classpic from classcreate where cid='"+m1+"' ");
            if(rs1.next())
            {
               s3=rs1.getString(1);
               s4=rs1.getString(2);
               s5=rs1.getString(3);
               s6=rs1.getString(4);
               s7=rs1.getString(5);
               s8=rs1.getString(6); 
            }
        }
        catch(Exception ep)
        {
        	out.println(ep);
        }
           session.setAttribute("code",s7);
     
    %>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Welcome in desbox</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		 <link href="assets/css/bootstrap.css" rel="stylesheet" />
  <link rel="stylesheet" href="files/css/bootstrap.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>

    <link rel="stylesheet" href="files/css/stylem.css">
<style type="text/css">
	.pandit 
	{
		height: 40px !important;
		padding-left: 20px !important;
	}
.round
    {
        border-radius: 60% !important;
            width: 40px !important;
            height: 40px !important;
    }
         .g1
         {
          border-radius: 300px;
          background-color:   #DCDCDC;
          margin-bottom: 1px;
         }
.p1
{

          border-radius: 3000px !important;
}
.p0
{
	margin-bottom: -2px;
}
body {font-family: Arial, Helvetica, sans-serif;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

/* The Close Button */
.close {
  color: blue;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

</style>


<script>
var d = new Date();
document.getElementById("rahul").innerHTML = d;
</script>

	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
					
						<nav class="main">
							<ul>
							
								<li class="menu">
									<a class="fa-bars" href="#menu">Menu</a>
								</li>
							</ul>
						</nav>
					</header>

				<!-- Menu -->
					<section id="menu">

						<!-- Search -->
							<section>
								<form class="search" method="get" action="#">
									<input type="text" name="query" placeholder="Search" />
								</form>
							</section>

						<!-- Links -->
							<section>
								<ul class="links">
									<li>
										<a href="index.jsp">
											<h3>Dashboard</h3>
											<p>Goto Home Directory</p>
										</a>
									</li>
									<li>
										<a href="user.jsp">
											<h3>User Profile</h3>
											<p>Goto Profile Directory</p>
										</a>
									</li>
									<li>
										<a href="create.jsp">
											<h3>Create Class</h3>
											<p>Goto Create Class</p>
										</a>
									</li>
									<li>
										<a href="join.jsp">
											<h3>Join class</h3>
											<p>Goto Join Class Directory</p>
										</a>
									</li>
									<li>
										<a href="mail.jsp">
											<h3>Compose Email</h3>
											<p>Goto Compose Email Directory</p>
										</a>
									</li>
								</ul>
							</section>

						<!-- Actions -->
							<section>
								<ul class="actions stacked">
									<li><a href="logout.jsp" class="button large fit">Log Out</a></li>
								</ul>
							</section>

					</section>

				<!-- Main -->
					<div id="main">

						<!-- Post -->
							<article class="post">
								<header>
									<div class="title">
										<h2><a href="#">class <%=s3 %></a></h2>
										<p>subject <%=s5 %> </p>
											
									</div>
									<div class="meta">
										<time class="published" datetime="2015-11-01"></time>


										<a href="#" class="author"><span class="name"><%=s1 %></span><img class="round" src="profilepic/<%=s2 %>" alt="" /></a>
									</div>
								</header>
								<a href="#" class="image featured"><img src="images/<%=s8%>.jpg" alt="" /></a>
								<h5>section-<%=s4 %> subject-<%=s5 %></h5>
								<footer>
									
                                
									<ul class="stats p1">
										<li><h5><a href="#">Class code</a></h5></li>
										<li><h5><a href="#"><%=s7 %></a><i id="myBtn" class='fas fa-expand'></i></h5></li>
										
									</ul>

								</footer>

							</article>
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close"><i class="fas fa-compress-arrows-alt"></i></span>
    <h1>class code= <%=s7 %></h1>
  </div>

</div>

<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

						
							
<div class="col-md-20 p1">
        <div class="panel panel-info">
            <div class="panel-heading">
                RECENT CHAT HISTORY
            </div>
        </div>
    </div>
                                  <% 
                         try
                         {
                          st2=con.createStatement();
                          rs2=st2.executeQuery("select mid,message,pic,pic1,dat,name from message where classcode='"+s7+"'");
                          while(rs2.next())
                          {
                           v6=rs2.getString(1);
                           v1=rs2.getString(2);
                           v2=rs2.getString(3);
                            v3=rs2.getString(4);
                            v4=rs2.getString(5);
                            v5=rs2.getString(6);
                              boolean k1 = v3.endsWith(".jpg");
                              boolean k2 = v3.endsWith(".pdf");
                              boolean k3 = v3.endsWith("null");
                           %>

                           <%    if(k3) { %>  
  <div class="col-md-20" class="p1">
        <div class="panel panel-info">
            <div class="panel-body">
                      <ul class="media-list">

                                    <li class="media">

                                        <div class="media-body">

                                            <div class="media">
                                                <a class="pull-left" href="#">
                                                    <img class="media-object img-circle round" src="profilepic/<%=v2%>.jpg" />
                                                </a>
                                                <div class="media-body" >
                                                   <%=v1%>
              
                                                     <br />
                                                   <small class="text-muted"><%=v5%>  <%=v4%></small>
                                                    <hr />
                                                </div>
                                            </div>
                                        </div>
                                    </li>
            </div>
        </div>
    </div>
<% } else if(k1){ %>
<div class="col-md-20" class="p1">
        <div class="panel panel-info">
            <div class="panel-body">
                      <ul class="media-list">

                                    <li class="media">

                                        <div class="media-body">

                                            <div class="media">
                                                <a class="pull-left" href="#">
                                                    <img class="media-object img-circle round" src="profilepic/<%=v2%>.jpg" />
                                                </a>
                                                <div class="media-body" >
                                                  
              
                                                     <br />
                                                   <small class="text-muted"><%=v5%>  <%=v4%></small>
                                                    <hr />
                                                </div>
                                            </div>
                                                  <a href="document/<%= v3%>" download>
                                                   <img src="files/p3.png"  width="104" height="142">
                                                    Download file,</a>
                                                    <a href="deletefile.jsp?file=<%= v6 %>" >
                                            delete</a>
                                        </div>
                                    </li>
            </div>
        </div>
    </div>
                        <% } else if(k2){ %>
                        <div class="col-md-20" class="p1">
        <div class="panel panel-info">
            <div class="panel-body">
                      <ul class="media-list">

                                    <li class="media">

                                        <div class="media-body">

                                            <div class="media">
                                                <a class="pull-left" href="#">
                                                    <img class="media-object img-circle round" src="profilepic/<%=v2%>.jpg" />
                                                </a>
                                                <div class="media-body" >
                                                  
              
                                                     <br />
                                                   <small class="text-muted"><%=v5%>  <%=v4%></small>
                                                    <hr />
                                                </div>
                                            </div>
                                                  <a href="document/<%= v3%>" download>
                                                   <img src="files/p1.png"  width="104" height="142">
                                                    Download file,</a>
                                                    <a href="deletefile.jsp?file=<%= v6 %>" >
                                            delete</a>
                                        </div>
                                    </li>
            </div>
        </div>
    </div>
                        <% } %>

              <%
                          }
                         }
                         catch(Exception p)
                         {
                         	out.println(p);
                         }
                      %>
            <div class="col-md-20" class="p1">
        <div class="panel panel-info">
            <div class="panel-footer">
            
                             

                              	<form action="msg.jsp" id="form1" method="post" class="p0">
                              		<input type="hidden" name="k1" value="<%=s7 %>">
                                    <input type="text" class="form-control n1 col-md-20" placeholder="Write Something" name="k2" />

                                     </form>
                                    
                              

                                   <div class="input-group">
               <table class="g1">
                 <tr>
            	 <td ><a href="upload.jsp"><span class="fa fa-paperclip" aria-hidden="true"></span></a></td> &nbsp &nbsp
              <td><a href="upload.jsp"> <span class="fa fa-image" aria-hidden="true"></span></a></td> &nbsp &nbsp
               <td><a href="upload.jsp"><span class="fa fa-file-video-o" aria-hidden="true"></span></a> </td>&nbsp &nbsp
               <td><a href="upload.jsp"><span class="fa fa-align-left" aria-hidden="true"></span></a> </td>&nbsp &nbsp
                          <td><a href="upload.jsp"><span class="fa fa-file-pdf-o" aria-hidden="true"></span></a></td>

                          </tr>
                       </table>
                       <span class="input-group-btn">
                        <button class="btn btn-info pandit" type="submit" form="form1" value="submit">post</button>
                                    
                         </span>
            </div>
                           
            </div>
        </div>
    </div>
       
					</div>
			</div>
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>