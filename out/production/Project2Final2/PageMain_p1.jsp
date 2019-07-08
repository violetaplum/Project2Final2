<%@page import="java.util.Calendar"%>
<%@page import="gamevo.GameVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="gamefile.GameStar"%>
<%@page import="gamefile.GameImg"%>
<%@page import="gamefile.GameName"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="icon" href="favicon.ico">
		<title>GameBoard</title>
		<!-- Bootstrap core CSS -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<!-- Custom styles for this template -->
		<link href="css/owl.carousel.css" rel="stylesheet">
		<link href="css/owl.theme.default.min.css"  rel="stylesheet">
		<link href="css/animate.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
		<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		
		
		
		<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
		
	</head>
	<script type="text/javascript">
function moreinfo(){
	var input = document.getElementById("search").value;


	alert(input);
	/* window.location.href="FreeChart.jsp?name="+input;
	 */
	
}




</script>
<%

GameName gn=new GameName();
GameImg gi=new GameImg();
GameStar gs=new GameStar();
gi.imgarr.clear();
gs.stararr.clear();
System.out.println(gi.imgarr.size());
System.out.println(gs.stararr.size());
String src="free";
String imgsrc="free_img";
String starsrc="free_star";

gn.create(src);
gi.create(imgsrc);
gs.create(starsrc);
System.out.println(gi.imgarr.size());
System.out.println(gs.stararr.size());
ArrayList<String> al=new ArrayList<String>();
ArrayList<GameVO> gl=new ArrayList<GameVO>();
for(int i=0;i<300;i++) {
GameVO gv=new GameVO();
gl=(ArrayList)request.getAttribute("alist1");
gv=gl.get(i);
al.add(gv.getName());

}
%>
	<style>
	
    .searchbar{
    margin-bottom: auto;
    margin-top: auto;
    height: 60px;
    background: #ffd700 !important;
    border-radius: 30px;
    padding: 10px;
    /* width:600px;
     */}

    .search_input{
    color: black;
    border: 0;
    outline: 0;
    font-size:20px;
    background: none;
    width: 0;
    height:100%;
    caret-color:transparent;
    line-height: 40px;
    transition: width 0.4s linear;
    }

    .searchbar:hover > .search_input{
    padding: 0 10px;
    width: 390px;/*450px*/
    caret-color:red;
    transition: width 0.4s linear;
    }

    .searchbar:hover > .search_icon{
    background: white;
    color: #e74c3c;
    }

    .search_icon{
    height: 40px;
    width: 40px;
    float: right;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
    color:white;
    }
    @media (min-width:320px) {
	.intro-heading {
		margin-top:15%;
		font-weight: 800;
		line-height: 95px;
		font-size: 30px;
		margin-bottom: 50px;
	}
	.intro-lead-in{
		margin-top:15%;
		font-weight: 800;
		line-height: 95px;
		font-size: 15px;
		margin-bottom: 50px;
	}
	
	#c1{
	margin-left:25%;
	}
	td{
	font-size:20px;
	}
	#tdimg{
	width:150px;
	height:110px;
	}
	#bgimg{
	width:auto;
	height:435px;
	margin-top:auto;
	}
	table{
	
	margin-top:45%;margin-left:10%;
	}
	#tdnum{
	font-size:40px;
	}
	#ih{
	font-size:30px;
	
	}
	#starrating{
	CLEAR: both;	PADDING-RIGHT: 0px;	PADDING-LEFT: 0px;	BACKGROUND: url(images/icon_star2_16.png) 0px 0px;	FLOAT: left;	PADDING-BOTTOM: 0px;	MARGIN: 0px;	WIDTH: 80px;	PADDING-TOP: 0px;	HEIGHT: 16px;
	
	}
	#starrating1{
	 PADDING-RIGHT:0px;	PADDING-LEFT:0px;	BACKGROUND: url(images/icon_star_16.png) 0px 0px;	PADDING-BOTTOM: 0px;	MARGIN: 0px;	PADDING-TOP: 0px;	HEIGHT: 16px;
	}
	#stardiv{
	margin-top:8%; margin-left:10%;
	
	}
	#item_{
	
	width:auto; 
	height:435px;
	margin-top:auto;
	
	}
	}
	@media (min-width:720px) {
	.intro-heading {
		margin-top:8%;
		font-weight: 800;
		line-height: 95px;
		font-size: 50px;
		margin-bottom: 50px;
		
	}
	#c1{
	margin-left:28%;
	}
	td{
	font-size:25px;
	px;
	}
	#tdimg{
	width:100px;
	height:100px;
	}
	table{
	
	margin-top:-7%;left:20%;
	}
	#tdnum{
	font-size:70px;
	}
	#ih{
	font-size:50px;
	
	}
	#starrating{
	CLEAR: both;	PADDING-RIGHT: 0px;	PADDING-LEFT: 0px;	BACKGROUND: url(images/icon_star2_16.png) 0px 0px;	FLOAT: left;	PADDING-BOTTOM: 0px;	MARGIN: 0px;	WIDTH:80px;	PADDING-TOP: 0px;	HEIGHT: 16px;
	}
	#starrating1{
	 PADDING-RIGHT:0px;	PADDING-LEFT:0px;	BACKGROUND: url(images/icon_star_16.png) 0px 0px;	PADDING-BOTTOM: 0px;	MARGIN: 0px;	PADDING-TOP: 0px;	HEIGHT: 16px;
	}
	#stardiv{
	margin-top:8%; margin-left:8%;
	
	}
	#bgimg{
	width:auto;
	height:435px;
	margin-top:auto;
	
	}
	}
	@media (min-width:1024px) {
	.intro-heading {
		margin-top:-8%;
		letter-spacing:50px;
		font-size: 80px;
		
		font-weight: 800;
		line-height: 95px;
		font-size: 150px;
		margin-bottom: 100px;
	}
	#c1{
		margin-left:10%;
	}
	td{
		font-size:60px;
	}
	#tdimg{
	width: 200px;
	height:auto;
	}
	table{
	
	margin-top:-7%;margin-left:30%;
	}
	#tdnum{
	font-size:100px;
	}
	#ih{
	font-size:80px;
	margin-top:-3%;
	}
	#il{
	margin-top:-5%;
	
	}
	#starrating{
	CLEAR: both;	PADDING-RIGHT: 0px;	PADDING-LEFT: 0px;	BACKGROUND: url(images/icon_star2_16.png) 0px 0px;	FLOAT: left;	PADDING-BOTTOM: 0px;	MARGIN: 0px;	WIDTH: 80px;	PADDING-TOP: 0px;	HEIGHT: 16px;
	}
		#starrating1{
	 PADDING-RIGHT:0px;	PADDING-LEFT:0px;	BACKGROUND: url(images/icon_star_16.png) 0px 0px;	PADDING-BOTTOM: 0px;	MARGIN: 0px;	PADDING-TOP: 0px;	HEIGHT: 16px;
	}
	#stardiv{
	margin-top:8%; margin-left:30%;
	
	}
	#bgimg{
	margin-top:auto;
	width:auto;
	height:435px;

	
	}
	}
}

	</style>
	<style type="text/css">
        /* carousel */

section {
    padding-top: 100px;
    padding-bottom: 100px;
}

.quote {
    color: rgba(0,0,0,.1);
    text-align: center;
    margin-bottom: 30px;
}

/*-------------------------------*/
/*    Carousel Fade Transition   */
/*-------------------------------*/

#fade-quote-carousel.carousel {
  padding-bottom: 60px;
}
#fade-quote-carousel.carousel .carousel-inner .item {
  opacity: 0;
  -webkit-transition-property: opacity;
      -ms-transition-property: opacity;
          transition-property: opacity;
}
#fade-quote-carousel.carousel .carousel-inner .active {
  opacity: 1;
  -webkit-transition-property: opacity;
      -ms-transition-property: opacity;
          transition-property: opacity;
}
#fade-quote-carousel.carousel .carousel-indicators {
  bottom: 10px;
}
#fade-quote-carousel.carousel .carousel-indicators > li {
  background-color: #e84a64;
  border: none;
}
#fade-quote-carousel blockquote {
    text-align: center;
    border: none;
}
#fade-quote-carousel .profile-circle {
    width: 150px;
    height: 150px;
    margin: 0 auto;
    border-radius: 100px;
}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<head>
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
	</head>
	<body id="page-top">
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-fixed-top"  style="background-color:#eaeaea;">
			<div class="container" >
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header page-scroll">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand page-scroll" href="#page-top"><img src="images/logo.png" alt="Sanza theme logo"></a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right" style="display:inline-block;">
						<li class="hidden">
							<a href="#page-top"></a>
						</li>
						<li>
							<a class="page-scroll" href="#page-top">Home</a>
						</li>
						<li>
							<a class="page-scroll" href="#category">Category</a>
						</li>
						<li>
							<a class="page-scroll" href="#features">sign in</a>
						</li>
						
						<li>
							<a class="page-scroll" href="#portfolio">sign up</a>
						</li>
						<li>
							<a class="page-scroll" href="#partners">my page</a>
						</li>
						<li>
							<a class="page-scroll" href="#team">Team</a>
						</li>
						<!-- <li>
							<a class="page-scroll" href="#contact">Contact</a>
						</li> --></ul>
					</div></div>

				
				<!-- /.navbar-collapse -->
			
			<!-- /.container-fluid -->
		</nav>
	<div style="float:right;">
	<div class="box">
    <div class="container h-100" >
      <div class="d-flex justify-content-center h-100">
        <div class="searchbar">
          <input class="search_input" type="text" id="search" name="search" placeholder="Search..." >
          <a href="#" class="search_icon"><i class="fas fa-search" onclick="moreinfo()"></i></a>
        </div>
        </div>
      </div>
    </div>
    </div><br>					
		<!-- Header -->
		<header  id="carousel" style="height:500px; background-color:black;">
			<br><br><br>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
			    <%
    Calendar t = Calendar.getInstance();

    String month = Integer.toString((t.get(Calendar.MONTH) + 1));

   String WeekDay = Integer.toString(t.get(Calendar.WEEK_OF_MONTH));

    %>
    
               
				<div class="carousel slide" id="fade-quote-carousel" data-ride="carousel" data-interval="3000">
				  <!-- Carousel indicators -->
                  <ol class="carousel-indicators">
				    <li data-target="#fade-quote-carousel" data-slide-to="0" class="active"></li>
				    <li data-target="#fade-quote-carousel" data-slide-to="1"></li>
				    <li data-target="#fade-quote-carousel" data-slide-to="2"></li>
                    <li data-target="#fade-quote-carousel" data-slide-to="3"></li>
                    <li data-target="#fade-quote-carousel" data-slide-to="4"></li>
 
				  </ol>

				  <!-- Carousel items -->
				  <div class="carousel-inner">
				  
				    <div class="active item">
						<img id="bgimg" src="images/FIRST.png" class="img-responsive">
						
				    </div>
				    <div class="item">
				    <img class="img-responsive" src="images/BGI.png">
				    <div class="quote" ><img src="images/trophy.png"><h1 style="color:black;"><%=month%>월 <%=WeekDay%>주차 Top 5 - 1위</h1></div>
				 
                        <img class="profile-circle" src="<%=gi.imgarr.get(0)%>"><br>
                        
				    	<blockquote>
				    		<p style="font-size:25px; display:inline-block;"><strong><%=al.get(0)%></strong></p>
				    		<div style="display:inline-block; margin-left:10px;margin-top:5px;">
				    		<div id="starrating" >
												
							<p id="starrating1" style="WIDTH: <%=Double.parseDouble(gs.stararr.get(0))*20%>%;"></p>
												
							</div>&nbsp;&nbsp;<%=gs.stararr.get(0)%></div> 
							
				    		<p>지하철이나 버스에서 하기 좋은 게임! 재밌어요</p>
				    		<small>김민정</small>
						
				    	</blockquote>	
				    </div>
				    <div class="item" id="item_">
                      <div class="quote" ><img src="images/top-rated.png"><h1 style="color:black;"><%=month%>월 <%=WeekDay%>주차 Top 5 - 2위</h1></div>
				 
                        <img class="profile-circle" src="<%=gi.imgarr.get(1)%>"><br>
				    	<blockquote>
				    		<p style="font-size:25px; display:inline-block;"><strong><%=al.get(1)%></strong></p>
				    		<div style="display:inline-block; margin-left:10px;margin-top:5px;">
				    		<div id="starrating" style="display:inline-block;">
												
							<p id="starrating1" style="WIDTH: <%=Double.parseDouble(gs.stararr.get(1))*20%>%;font-size:10px;"></p>
												
							</div>&nbsp;&nbsp;<%=gs.stararr.get(1)%></div> 
							
				    		<p>지하철이나 버스에서 하기 좋은 게임! 재밌어요</p>
				    		<small>김민정</small>
						
				    	</blockquote>
				    </div>
				    <div class="item">
                    <div class="quote" ><img src="images/top-rated.png"><h1 style="color:black;"><%=month%>월 <%=WeekDay%>주차 Top 5 - 3위</h1></div>
				 
                        <img class="profile-circle" src="<%=gi.imgarr.get(2)%>"><br>
				    	<blockquote>
				    	<p style="font-size:25px; display:inline-block;"><strong><%=al.get(2)%></strong></p>
				    		<div style="display:inline-block; margin-left:10px;margin-top:5px;">
				    		<div id="starrating" >
												
							<p id="starrating1" style="WIDTH: <%=Double.parseDouble(gs.stararr.get(2))*20%>%;"></p>
												
							</div>&nbsp;&nbsp;<%=gs.stararr.get(2)%></div> 
							
				    		<p>지하철이나 버스에서 하기 좋은 게임! 재밌어요</p>
				    		<small>김민정</small>
						
				    	</blockquote>
				    </div>
                    <div class="item">
                     <div class="quote" ><img src="images/top-rated.png"><h1 style="color:black;"><%=month%>월 <%=WeekDay%>주차 Top 5 - 4위</h1></div>
				 
                        <img class="profile-circle" src="<%=gi.imgarr.get(3)%>"><br>
    			    	<blockquote>
				    	<p style="font-size:25px; display:inline-block;"><strong><%=al.get(3)%></strong></p>
				    		<div style="display:inline-block; margin-left:10px;margin-top:5px;">
				    		<div id="starrating" >
												
							<p id="starrating1" style="WIDTH: <%=Double.parseDouble(gs.stararr.get(3))*20%>%;"></p>
												
							</div>&nbsp;&nbsp;<%=gs.stararr.get(3)%></div> 
							
				    		<p>지하철이나 버스에서 하기 좋은 게임! 재밌어요</p>
				    		<small>김민정</small>
						
				    	</blockquote></div>
                    <div class="item">
                    <div class="quote" ><img src="images/top-rated.png"><h1 style="color:black;"><%=month%>월 <%=WeekDay%>주차 Top 5 - 5위</h1></div>
				 
                        <img class="profile-circle" src="<%=gi.imgarr.get(4)%>"><br>
    			    	<blockquote>
				    	<p style="font-size:25px; display:inline-block;"><strong><%=al.get(4)%></strong></p>
				    		<div style="display:inline-block; margin-left:10px;margin-top:5px;">
				    		<div id="starrating" >
												
							<p id="starrating1" style="WIDTH: <%=Double.parseDouble(gs.stararr.get(4))*20%>%;"></p>
												
							</div>&nbsp;&nbsp;<%=gs.stararr.get(4)%></div> 
							
				    		<p>지하철이나 버스에서 하기 좋은 게임! 재밌어요</p>
				    		<small>김민정</small>
						
				    	</blockquote>
				    </div>

				    </div>
				  </div>
				</div>
			</div>							
		
	</div>

</header>

<%--  <div class="container">
  <div class="row">
    <div class='col-md-offset-2 col-md-8 text-center'>
    <%
    Calendar t = Calendar.getInstance();

    String month = Integer.toString((t.get(Calendar.MONTH) + 1));

   String WeekDay = Integer.toString(t.get(Calendar.WEEK_OF_MONTH));

    %>
    <h1><%=month%>월 <%=WeekDay%>주차 Top 5</h1>
    </div>
  </div>
  <div class='row'>
    <div class='col-md-offset-1 col-md-12'>
      <div class="carousel slide" data-ride="carousel" id="quote-carousel">
        <!-- Bottom Carousel Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#quote-carousel" data-slide-to="0" class="active"></li>
          <li data-target="#quote-carousel" data-slide-to="1"></li>
          <li data-target="#quote-carousel" data-slide-to="2"></li>
          <li data-target="#quote-carousel" data-slide-to="3"></li>
          <li data-target="#quote-carousel" data-slide-to="4"></li>
        </ol>
        
        <!-- Carousel Slides / Quotes -->
        <div class="carousel-inner">
        
          <!-- Quote 1 -->
          <div class="item active">
            <blockquote>
              <div class="row ">
                <div class="col-sm-3 text-center">
                  <img class="img-circle" src="<%=gi.imgarr.get(0) %>">
                  <!--<img class="img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/kolage/128.jpg" style="width: 100px;height:100px;">-->
                </div>
                <div>
                  <p>중간중간 짧게 플레이하기 좋은 게임</p>
                  <p>재밌다. 시간가는줄 모르고 할 만큼 지루함이 없는 게임이다</p>
                </div>
                <div class="col-sm-9">
                <%
								
								double sd=Double.parseDouble(gs.stararr.get(0))*20;
								int si=(int)sd;
								
								%>
                  
                  <h3><%=al.get(0)%></h3>
                  							
										
												<div id="starrating">
												<h1 id="starrating1" style="WIDTH: <%=sd%>%;"></h1>
												</div>
                </div>
              </div>
            </blockquote>
          </div>
          <!-- Quote 2 -->
          <div class="item">
            <blockquote>
              <div class="row">
                <div class="col-sm-3 text-center">
                  <img class="img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/mijustin/128.jpg" style="width: 100px;height:100px;">
                </div>
                <div class="col-sm-9">
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor nec lacus ut tempor. Mauris.</p>
                  <small>Someone famous</small>
                </div>
              </div>
            </blockquote>
          </div>
          <!-- Quote 3 -->
          <div class="item">
            <blockquote>
              <div class="row">
                <div class="col-sm-3 text-center">
                  <img class="img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/keizgoesboom/128.jpg" style="width: 100px;height:100px;">
                </div>
                <div class="col-sm-9">
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut rutrum elit in arcu blandit, eget pretium nisl accumsan. Sed ultricies commodo tortor, eu pretium mauris.</p>
                  <small>Someone famous</small>
                </div>
              </div>
            </blockquote>
          </div>
        </div>
        
        <!-- Carousel Buttons Next/Prev -->
        <a data-slide="prev" href="#quote-carousel" class="left carousel-control"><i class="fa fa-chevron-left"></i></a>
        <a data-slide="next" href="#quote-carousel" class="right carousel-control"><i class="fa fa-chevron-right"></i></a>
      </div>                          
    </div>
  </div>
</div>
<script type="text/javascript">
// When the DOM is ready, run this function
$(document).ready(function() {
  //Set the carousel options
  $('#quote-carousel').carousel({
    pause: true,
    interval: 8000,
  });
});
</script>
 
 
 
 
 
 
 
 
  --%>
 </header>

		
		<section id="category" class="light-bg">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>Category</h2>
						<p>Those game are included in the game category of each market and is the basic service of the game.<br><strong>Click to go to the appropriate page you selected.</strong></p>
						 </div>
					</div>
				</div><br><br>
				<div class="container" id="c1" >
					<!--  module -->
					
					<div class="col-md-3 text-center" style="width:33.33333%;height:auto;">
						<div class="mz-module">
							<div class="mz-module-" style="background-color:#eaeaea;"><br>
								<i class="glyphicon glyphicon-equalizer color2 fa-5x ot-circle"></i><br>
                            <h3>순위</h3>
                            <!--<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis</p>-->
                        </div>
                        <a href="getAllInfo.do?src=PageMain_p1" class="mz-module-button">more..</a>
                    </div>
                </div>
					<!-- end  module -->
					<!--  module -->
					<div class="col-md-3 text-center" style="width:33.33333%;height:auto;">
						<div class="mz-module">
							<div class="mz-module-" style="background-color:#eaeaea;"><br>
                            <i class="glyphicon glyphicon-hand-right color1 fa-5x ot-circle"></i><br>   <!--fa fa-photo color2 ot-circle-->
                            <h3>리뷰</h3>
                            <!--<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>-->
                        </div>
                        <a href="#" class="mz-module-button">more..</a>
                    </div>
                </div>
					<!-- end  module -->
					<!--  module -->
					<div class="col-md-3 text-center" style="width:33.33333%;height:auto;">
						<div class="mz-module">
							<div class="mz-module-" style="background-color:#eaeaea;"><br>
                            <i class="glyphicon glyphicon-list color4 fa-5x ot-circle"></i><br>
                            <h3>게시판</h3>
                            <!--<p>Accusamus et iusto odio dignissimos ducimus qui blanditiis</p>-->
                        </div>
							<a href="#" class="mz-module-button">read more</a>
						</div>
					</div>
					<!-- end  module -->
					<!--  module -->

					<!-- end  module -->
				
			</div>
			</div>
			<!-- /.container -->
		</section>

		<section id="features" class="section-features">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 text-center">
						<div class="section-title" style="display:inline-block">
							<h2>최근 게시글</h2>
						</div>
						
					
				
				<div class="row row-gutter">
					<div class="container">
					<table class="table table-striped table-hover" style="width:100%;height:auto; margin:auto;margin-left:auto;font-size:20px;">
					<thead ><tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>조회수</th></tr>
					</thead>
					<tbody >
					<tr >
					<td style="font-size:20px;">1</td>
					<td style="font-size:20px;">Hello World</td>
					<td style="font-size:20px;">Kim</td>
					<td style="font-size:20px;">2019-7-6</td>
					<td style="font-size:20px;">13</td>
					
					</tr>
						<tr >
					<td style="font-size:20px;">1</td>
					<td style="font-size:20px;">Hello World</td>
					<td style="font-size:20px;">Kim</td>
					<td style="font-size:20px;">2019-7-6</td>
					<td style="font-size:20px;">13</td>
					
					</tr>
						<tr >
					<td style="font-size:20px;">1</td>
					<td style="font-size:20px;">Hello World</td>
					<td style="font-size:20px;">Kim</td>
					<td style="font-size:20px;">2019-7-6</td>
					<td style="font-size:20px;">13</td>
					
					</tr>
						<tr >
					<td style="font-size:20px;">1</td>
					<td style="font-size:20px;">Hello World</td>
					<td style="font-size:20px;">Kim</td>
					<td style="font-size:20px;">2019-7-6</td>
					<td style="font-size:20px;">13</td>
					
					</tr>
						<tr >
					<td style="font-size:20px;">1</td>
					<td style="font-size:20px;">Hello World</td>
					<td style="font-size:20px;">Kim</td>
					<td style="font-size:20px;">2019-7-6</td>
					<td style="font-size:20px;">13</td>
					
					</tr>
					</tbody>
					
					</table>
						<!-- <div class="featured-item">
							<div class="featured-icon"><i class="fa fa-television"></i></div>
							<div class="featured-text">
								<h4>Fully Responsive Design</h4>
								<p>INFRA theme looks awesome at any size, be it a Laptop screen, Mobile or Tablet.</p>
							</div>
						</div>
						<div class="featured-item">
							<div class="featured-icon"><i class="fa fa-cogs"></i></div>
							<div class="featured-text">
								<h4>Advanced Control Panel</h4>
								<p>You can take full control of your theme with our powerful yet easy-to-use theme options panel from setting to styling.</p>
							</div>
						</div>
						<div class="featured-item">
							<div class="featured-icon"><i class="fa fa-newspaper-o"></i></div>
							<div class="featured-text">
								<h4>Custom Page Templates</h4>
								<p>Our themes come packaged with multiple pages templates including Authors Team, Full Width, and more to enhance your site.</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-gutter">
						<div class="featured-item">
							<div class="featured-icon"><i class="fa fa-indent"></i></div>
							<div class="featured-text">
								<h4>Unlimited Widget Areas</h4>
								<p>We include just the right amount of useful widget areas and sidebars so you can place your content.</p>
							</div>
						</div>
						<div class="featured-item">
							<div class="featured-icon"><i class="fa fa-paste"></i></div>
							<div class="featured-text">
								<h4>Custom Widgets</h4>
								<p>We include our own widgets for Reviews, Social, Advertising and additional custom widgets to enhance your site.</p>
							</div>
						</div>
						<div class="featured-item">
							<div class="featured-icon"><i class="fa fa-dollar"></i></div>
							<div class="featured-text">
								<h4>AD Management</h4>
								<p>You can place various size of banner images in your sidebar and banners to other ad positions with ease.</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-gutter">
						<div class="featured-item">
							<div class="featured-icon"><i class="fa fa-font"></i></div>
							<div class="featured-text">
								<h4>Icons and Fonts</h4>
								<p>We include FontAwesome Icons &amp; Hundreds of Google Fonts to Choose from to customize your site.</p>
							</div>
						</div>
						<div class="featured-item">
							<div class="featured-icon"><i class="fa fa-wordpress"></i></div>
							<div class="featured-text">
								<h4>Compatible with Latest WordPress</h4>
								<p>We continuously test our themes so you will know they are always compatible with the latest version of WordPress.</p>
							</div>
						</div>
						<div class="featured-item">
							<div class="featured-icon"><i class="fa fa-file-code-o"></i></div>
							<div class="featured-text">
								<h4>Bootstrap Framework</h4>
								<p>The theme is based on Bootstrap framework. We use default row/col- Bootstrap grid system.</p>
							</div>
						</div> -->
					</div>
				</div>
				</div>
				<div class="col-lg-6 text-center">
				<div class="section-title" style="display:inline-block">
							<h2>최근 리뷰</h2>
						</div>
				<div class="row row-gutter">
					<div class="container">
					<table class="table table-striped table-hover" style="width:100%;height:auto; margin:auto;margin-left:auto;font-size:20px;">
					<thead ><tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>조회수</th></tr>
					</thead>
					<tbody >
					<tr >
					<td style="font-size:20px;">1</td>
					<td style="font-size:20px;">Hello World</td>
					<td style="font-size:20px;">Kim</td>
					<td style="font-size:20px;">2019-7-6</td>
					<td style="font-size:20px;">13</td>
					
					</tr>
						<tr >
					<td style="font-size:20px;">1</td>
					<td style="font-size:20px;">Hello World</td>
					<td style="font-size:20px;">Kim</td>
					<td style="font-size:20px;">2019-7-6</td>
					<td style="font-size:20px;">13</td>
					
					</tr>
						<tr >
					<td style="font-size:20px;">1</td>
					<td style="font-size:20px;">Hello World</td>
					<td style="font-size:20px;">Kim</td>
					<td style="font-size:20px;">2019-7-6</td>
					<td style="font-size:20px;">13</td>
					
					</tr>
						<tr >
					<td style="font-size:20px;">1</td>
					<td style="font-size:20px;">Hello World</td>
					<td style="font-size:20px;">Kim</td>
					<td style="font-size:20px;">2019-7-6</td>
					<td style="font-size:20px;">13</td>
					
					</tr>
						<tr >
					<td style="font-size:20px;">1</td>
					<td style="font-size:20px;">Hello World</td>
					<td style="font-size:20px;">Kim</td>
					<td style="font-size:20px;">2019-7-6</td>
					<td style="font-size:20px;">13</td>
					
					</tr>
					</tbody>
					
					</table>
						<!-- <div class="featured-item">
							<div class="featured-icon"><i class="fa fa-television"></i></div>
							<div class="featured-text">
								<h4>Fully Responsive Design</h4>
								<p>INFRA theme looks awesome at any size, be it a Laptop screen, Mobile or Tablet.</p>
							</div>
						</div>
						<div class="featured-item">
							<div class="featured-icon"><i class="fa fa-cogs"></i></div>
							<div class="featured-text">
								<h4>Advanced Control Panel</h4>
								<p>You can take full control of your theme with our powerful yet easy-to-use theme options panel from setting to styling.</p>
							</div>
						</div>
						<div class="featured-item">
							<div class="featured-icon"><i class="fa fa-newspaper-o"></i></div>
							<div class="featured-text">
								<h4>Custom Page Templates</h4>
								<p>Our themes come packaged with multiple pages templates including Authors Team, Full Width, and more to enhance your site.</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-gutter">
						<div class="featured-item">
							<div class="featured-icon"><i class="fa fa-indent"></i></div>
							<div class="featured-text">
								<h4>Unlimited Widget Areas</h4>
								<p>We include just the right amount of useful widget areas and sidebars so you can place your content.</p>
							</div>
						</div>
						<div class="featured-item">
							<div class="featured-icon"><i class="fa fa-paste"></i></div>
							<div class="featured-text">
								<h4>Custom Widgets</h4>
								<p>We include our own widgets for Reviews, Social, Advertising and additional custom widgets to enhance your site.</p>
							</div>
						</div>
						<div class="featured-item">
							<div class="featured-icon"><i class="fa fa-dollar"></i></div>
							<div class="featured-text">
								<h4>AD Management</h4>
								<p>You can place various size of banner images in your sidebar and banners to other ad positions with ease.</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-gutter">
						<div class="featured-item">
							<div class="featured-icon"><i class="fa fa-font"></i></div>
							<div class="featured-text">
								<h4>Icons and Fonts</h4>
								<p>We include FontAwesome Icons &amp; Hundreds of Google Fonts to Choose from to customize your site.</p>
							</div>
						</div>
						<div class="featured-item">
							<div class="featured-icon"><i class="fa fa-wordpress"></i></div>
							<div class="featured-text">
								<h4>Compatible with Latest WordPress</h4>
								<p>We continuously test our themes so you will know they are always compatible with the latest version of WordPress.</p>
							</div>
						</div>
						<div class="featured-item">
							<div class="featured-icon"><i class="fa fa-file-code-o"></i></div>
							<div class="featured-text">
								<h4>Bootstrap Framework</h4>
								<p>The theme is based on Bootstrap framework. We use default row/col- Bootstrap grid system.</p>
							</div>
						</div> -->
					</div>
				</div>
			</div></div>
			</div>
		</section>

<!-- 		<section id="portfolio" class="light-bg" >
			<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="section-title">
						<h2>Portfolio</h2>
						<p>Our portfolio is the best way to show our work, you can see here a big range of our work. Check them all and you will find what you are looking for.</p>
					</div>
				</div>
			</div>
			end portfolio item
			</div>
			end container
		</section>
 -->


		<section id="partners">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>신규 인기 게임</h2>
							<p>오늘의 신작</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="owl-partners owl-carousel">
						<%for(int p=0;p<15;p++){ %>
							<div class="item">
								<div class="partner-logo"><img src="<%=gi.imgarr.get(p) %>" alt="partners"></div><br>
								<div class="partner-logo" style="font-size:15px;text-align:left;"><%=gs.stararr.get(p)%>★</div>
							</div>
							<%} %>
							
						</div>
					</div>
				</div>
			</div>
		</section>
		
				<section class="dark-bg short-section stats-bar">
			<div class="container text-center">
				<div class="row">
					<div class="col-md-3 mb-sm-30">
						<div class="counter-item">
							<h2 class="stat-number" data-n="9">0</h2>
							<h6>Member</h6>
						</div>
					</div>
					<div class="col-md-3 mb-sm-30">
						<div class="counter-item">
							<h2 class="stat-number" data-n="167">0</h2>
							<h6>Visitor</h6>
						</div>
					</div>
					<div class="col-md-3 mb-sm-30">
						<div class="counter-item">
							<h2 class="stat-number" data-n="6">0</h2>
							<h6>Board</h6>
						</div>
					</div>
					<div class="col-md-3 mb-sm-30">
						<div class="counter-item">
							<h2 class="stat-number" data-n="34">0</h2>
							<h6>Review</h6>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		
		<section id="team" class="light-bg">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>Our Team</h2>
						<!-- 	<p>A creative agency based on Candy Land, ready to boost your business with some beautifull templates. MOOZ Agency is one of the best in town see more you will be amazed.</p>
						 --></div>
					</div>
				</div>
				<div class="row-0-gutter">
				<!-- start portfolio item -->
				<div class="col-md-4 col-0-gutter" style="width:25%;">
					<div class="ot-portfolio-item">
						<figure class="effect-bubba">
							<img src="images/demo/portfolio-1.jpg" alt="img02" class="img-responsive"/>
							<figcaption>
								<h2>김민정</h2>
								<p>Branding, Design</p>
							<!-- 	<a href="#" data-toggle="modal" data-target="#Modal-1">View more</a>
							 --></figcaption>
						</figure>
					</div>
				</div>
				<!-- end portfolio item -->
				<!-- start portfolio item -->
				<div class="col-md-4 col-0-gutter" style="width:25%;">
					<div class="ot-portfolio-item">
						<figure class="effect-bubba">
							<img src="images/demo/portfolio-2.jpg" alt="img02" class="img-responsive" />
							<figcaption>
								<h2>장희수</h2>
								<p>Branding, Web Design</p>
							<!-- 	<a href="#" data-toggle="modal" data-target="#Modal-2">View more</a>
							 --></figcaption>
						</figure>
					</div>
				</div>
				<!-- end portfolio item -->
				<!-- start portfolio item -->
				<div class="col-md-4 col-0-gutter" style="width:25%;">
					<div class="ot-portfolio-item">
						<figure class="effect-bubba">
							<img src="images/demo/portfolio-3.jpg" alt="img02" class="img-responsive" />
							<figcaption>
								<h2>황상호</h2>
								<p>Branding, Web Design</p>
							<!-- 	<a href="#" data-toggle="modal" data-target="#Modal-3">View more</a>
							 --></figcaption>
						</figure>
					</div>
				</div>
				<div class="col-md-4 col-0-gutter" style="width:25%;">
					<div class="ot-portfolio-item">
						<figure class="effect-bubba">
							<img src="images/demo/portfolio-4.jpg" alt="img02" class="img-responsive" />
							<figcaption>
								<h2>김시원</h2>
								<p>Branding, Design</p>
							<!-- 	<a href="#" data-toggle="modal" data-target="#Modal-4">View more</a>
							 --></figcaption>
						</figure>
					</div>
				</div>
				<!-- end portfolio item -->
			</div>
		
				</div>
		</section>

		
		<section id="contact" class="dark-bg">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>Mid Project</h2>
							
						</div>
					</div>
				</div>
				<div class="row" style="margin-left:10%">
					<div class="col-lg-6">
						<div class="section-text">
							<h4>KGITBANK</h4>
							<p>서울특별시 종로구 돈화문로 26, 5층(묘동, 단성사)</p>
							<p><i class="fa fa-phone"></i>1566-8497</p>
							<p><i class="fa fa-envelope"></i>FAX : 02-3672-5615</p>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="section-text">
							<h4>Business Hours</h4>
							<p><i class="fa fa-clock-o"></i> <span class="day">Weekdays:</span><span>3pm to 10pm</span></p>
							<p><i class="fa fa-clock-o"></i> <span class="day">Saturday:</span><span>Closed</span></p>
							<p><i class="fa fa-clock-o"></i> <span class="day">Sunday:</span><span>Closed</span></p>
						</div>
					</div>

				</div>
			</div>
		</section>
		<p id="back-top">
			<a href="#top"><i class="fa fa-angle-up"></i></a>
		</p>
		<footer>
			<div class="container text-center">
				 <p>This Homepage is powered by <span class="text-primary">2조</span> / Designed by <span class="text-primary">김민정 장희수 황상호 김시원</span></p>
			</div>
		</footer>

		<!-- Modal for portfolio item 1 -->
		<div class="modal fade" id="Modal-1" tabindex="-1" role="dialog" aria-labelledby="Modal-label-1">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-1">김민정</h4>
					</div>
					<div class="modal-body">
						<img src="images/demo/portfolio-1.jpg" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>Branding</span><span>Web Design</span></div>
						<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal for portfolio item 2 -->
		<div class="modal fade" id="Modal-2" tabindex="-1" role="dialog" aria-labelledby="Modal-label-2">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-2">장희수</h4>
					</div>
					<div class="modal-body">
						<img src="images/demo/portfolio-2.jpg" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>Branding</span><span>Web Design</span></div>
						<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal for portfolio item 3 -->
		<div class="modal fade" id="Modal-3" tabindex="-1" role="dialog" aria-labelledby="Modal-label-3">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-3">황상호</h4>
					</div>
					<div class="modal-body">
						<img src="images/demo/portfolio-3.jpg" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>Branding</span><span>Web Design</span></div>
						<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal for portfolio item 4 -->
		<div class="modal fade" id="Modal-4" tabindex="-1" role="dialog" aria-labelledby="Modal-label-4">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-4">김시원</h4>
					</div>
					<div class="modal-body">
						<img src="images/demo/portfolio-4.jpg" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>Branding</span><span>Web Design</span></div>
						<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal for portfolio item 5 -->
		<div class="modal fade" id="Modal-5" tabindex="-1" role="dialog" aria-labelledby="Modal-label-5">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-5">Fast People</h4>
					</div>
					<div class="modal-body">
						<img src="images/demo/portfolio-5.jpg" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>Branding</span><span>Web Design</span></div>
						<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
					</div>

				</div>
			</div>
		</div>
<script>
var arr = [];
<%


for(int i=0;i<300;i++){%>
arr[<%=i%>]="<%=al.get(i)%>";
<%
}
%>
var uniqueNames = [];
$.each(arr, function(i, el){
        if($.inArray(el, uniqueNames) === -1) uniqueNames.push(el);
});


$("#search").autocomplete({

    source: uniqueNames,

    select: function(event, ui) {

        console.log(ui.item);

    },

    focus: function(event, ui) {

        return false;

        //event.preventDefault();

    }

});



</script>
		<!-- Bootstrap core JavaScript
			================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/cbpAnimatedHeader.js"></script>
		<script src="js/jquery.appear.js"></script>
		<script src="js/SmoothScroll.min.js"></script>
		<script src="js/theme-scripts.js"></script>
	</body>
</html>