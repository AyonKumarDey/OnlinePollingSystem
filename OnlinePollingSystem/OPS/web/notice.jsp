

<head>
  <title>Online National Polling System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  
  
  
  <style>
  body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #FAFAFA;
	  background-color: #777b79
  }
  
		
  
  
  h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 10px;      
      font-size: 20px;
      color: #FAFAFA;
  }
  .container {
      padding: 80px 120px;
  }
  .person {
      border: 10px solid transparent;
      margin-bottom: 25px;
      width: 80%;
      height: 80%;
      opacity: 0.7;
  }
  .person:hover {
      border-color: #f1f1f1;
  }
  .carousel-inner img {
      -webkit-filter: grayscale(90%);
      filter: grayscale(90%); /* make all photos black and white */ 
      width: 100%; /* Set width to 97% */
	  
      margin: auto;
  }
  .carousel-caption h3 {
      color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
  }
  .bg-1 h3 {color: #FAFAFA;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
  }
  .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail p {
      margin-top: 15px;
      color: #555;
  }
  .btn {
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
  }
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
  }
  .modal-header, h4, .close {
      background-color: #333;
      color: #fff !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-header, .modal-body {
      padding: 40px 50px;
  }
  .nav-tabs li a {
      color: #777;
  }
  #googleMap {
      width: 100%;
      height: 400px;
      -webkit-filter: grayscale(100%);
      filter: grayscale(100%);
  }  
  .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  .open .dropdown-toggle {
      color: #fff;
      background-color: #555 !important;
  }
  .dropdown-menu li a {
      color: #000 !important;
  }
  .dropdown-menu li a:hover {
      background-color: red !important;
  }
  footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }  
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
  </style>
 
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">Online National Polling System</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
       <li><a href="#" onclick="document.location.href='home.jsp'">HOME</a></li>
        <li><a id="login" href="login.jsp">LOGIN</a></li>
        <li><a href="#" onclick="document.location.href='notice.jsp'">NOTICE</a></li>
        
      </ul>
    </div>
  </div>
</nav>



<!-- Container (The Band Section) -->
<div id="band" class="container text-center">
  <h4>INTRODUCTION</h4>
  <p><em>INTRODUCTION TO ONLINE VOTING SYSTEM </em></p>
  <p>
-Online voting system is an online voting technique.In this system people who are citizens and whose age is above 18 years of age and any sex can give his\her vote online without going to any physical polling station.

-In online voting system a voter can use his/her voting right online without any difficulty.He/she has to be registered  first for him/her to vote manually.Registration is mainly done by the system administrator for security reasons.

-After registration,the voter is assigned a secret login ID and password with which he/she can use to log into the system and enjoy services provided by the system such as voting.If invalid/wrong details are submitted,then the citizen is not registered to vote. 
  </p>
  <br>
</div>


<div id="band" class="container text-center">
  <h4>ELECTIONS</h4>
  <p><em>LIFELINE OF DEMOCRACY !</em></p>
  <p>An election is a formal decision-making process by which a population chooses an individual to hold public office.[1] Elections have been the usual mechanism by which modern representative democracy has operated since the 17th century.[1] Elections may fill offices in the legislature, sometimes in the executive and judiciary, and for regional and local government. This process is also used in many other private and business organizations, from clubs to voluntary associations and corporations</p>
  <br>
</div>  

<div id="band" class="container text-center">
  <h4>RULES</h4>
  <p><em>FEATURES OF THE PROJECT :-</em></p>
  <p>
 -Secured login procedure.
-Knowing nominees of respective wards.
-profiles can be modified.
-Nominies can post their vision.
-Casting vote is possible only with authentication of voter.
-Inspection is performed on both voter and nominees.
-Suspected user can be reported against.
-Abused user can be verified and blocked if necessary.  
  </p>
  <br>
</div>  


 

  

  
  <br>
  


<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>WE ARE INDIAN</p> 
</footer>

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Prevent default anchor click behavior
    event.preventDefault();

    // Store hash
    var hash = this.hash;

    // Using jQuery's animate() method to add smooth page scroll
    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
    $('html, body').animate({
      scrollTop: $(hash).offset().top
    }, 900, function(){
   
      // Add hash (#) to URL when done scrolling (default click behavior)
      window.location.hash = hash;
    });
  });
})
</script>
 <script language="JavaScript" type="text/javascript">
  $(document).ready(function(){
    $('.carousel').carousel({
      interval: 2000
    })
  });
  document.getElementById("login").onclick=function()
  {
      location.href="Loginpage.jsp"
  }
</script>


