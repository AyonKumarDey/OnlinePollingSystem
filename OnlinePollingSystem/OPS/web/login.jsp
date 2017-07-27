<head>
        <link rel='stylesheet' href='res/Site.css'/>
        <link rel="stylesheet" href="res/animate_login.css"/>
        <link rel="stylesheet" href="res/style_login.css"/>
        <link rel="stylesheet" href="res/my.css"/>
    </head>

<body style="background-image:url(res/voterBackground.jpg); background-size:100%;">
<center>  
        <div class="top">
	  <h1 id="title" class="hidden"><span id="logo">Login <span>Here</span></span></h1>
	</div>
        <br><br><br>
        <div class="animated fadeInUp">
            <pre>
            <form action="check.jsp" method="POST">
                <fieldset style="width:550px;height:300px; border-radius:30px;  opacity:0.7; background-color:#717D7E; "  >
                    <center><img src="res/login.png" height="50" width="50"/></center>
 Enter Login Id <input type="text" name="vid" placeholder="Enter Login Id " required=""/><br>
 Password       <input type="password" name="pass" placeholder="Enter Password" required=""/><br>
           <input type="submit" value="login" class="button" />      &nbsp;&nbsp;<input type="reset" value="reset" class="button"/>
                       <center>             <span>${requestScope.msg} </span>
                <a href="home.jsp"><font style="font-size: 20px; color: #ECF0F1  ;">Click To Home</font></center>
                </fieldset>
                </form>
            </pre>
          </div>
            <br>
        </center>
    
  
    
    
    </body>    
</html>
