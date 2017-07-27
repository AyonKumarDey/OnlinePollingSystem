<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${sessionScope.vid eq null}">
    <c:set var="msg" value="PLEASE LOGIN TO ACCESS"/>
    <jsp:forward page="login.jsp"/>
</c:if>


<head>
        <link rel='stylesheet' href='res/Site.css'/>
        <link rel="stylesheet" href="res/animate_login.css"/>
        <link rel="stylesheet" href="res/style_login.css"/>
    </head>
    <body style="background-image:url(res/adminBackground.jpg); background-size:100%;">
        
    <center> 
        <br><br><br>
        <div class= "fadeInUp" style="margin-top:-100px;">
            <pre>
            <form action="voteradded.jsp" method="post">
                <fieldset style="width:1000px; height:600px; border-radius:30px; opacity:0.8; background: #AEB6BF;"  >
                     <legend>Admin Control Panel</legend><div id="sidebar">
		
		<ul><div id="wrapper" style= "float: right;margin-top:-100px;">
                        <li><a href="#" style="color:brown;font-size:18px">--------MENU--------</a></li><font color="red">
            <li><a href="addcandidate.jsp" style="color:#145A32;font-size:18px">Add Candidate</a></li>
            <li><a href="deletecandidate.jsp" style="color:#145A32;font-size:18px">Delete Candidate</a></li>
            <li><a href="updatecandidatebyid.jsp" style="color:#145A32;font-size:18px">Update Candidate</a></li>
            <li><a href="viewcandidate.jsp" style="color:#145A32;font-size:18px">View All Candidate</a></li>
            <li><a href="addvoter.jsp" style="color:#145A32;font-size:18px">Add Voter</a></li>
            <li><a href="deletevoter.jsp" style="color:#145A32;font-size:18px">Delete Voter</a></li>
            <li><a href="updatevoter.jsp" style="color:#145A32;font-size:18px">Update Voter</a></li>
            <li><a href="viewvoter.jsp" style="color:#145A32;font-size:18px">View All Voter</a></li>  
            <li><a href="viewEmalingQuerys.jsp" style="color:#145A32;font-size:18px">E-mailing Query's</a></li>
            <li><a href="logout.jsp" style="color:#145A32;font-size:18px">Logout</a></li>
            <!-- we can add multiple tab whare we want hyper link --></font>
		
		</ul>
		<div id="sidebar-bottom">
			&nbsp;
		</div>
		</div>
	
                    <!-- ADD CONTAINT -->
                   


 <div style="margin-top:-300px;">
     <h2> ADD NEW VOTER DETAILS</h2>
    
<pre>
    VOTER ID    :   <input type="text" name="vid">
            
    VOTER NAME  :   <input type="text" name="vname">
            
    PROVIDE PASS:   <input type="password" name="pass">
            
    AGE          :   <select name="age">
                <option value="0">----select age-------</option>
                <c:forEach var="i" begin="18" end="100">
                    <option value="${i}">${i}</option>   
                </c:forEach>
                                </select>
            
    GENDER       :   <select name="sex">
                                <option value="0">-----gender-----</option>
                                <option value="M">Male</option>
                                <option value="F">Female</option>
                                </select>
            
    CITY        :   <input type="text" name="city">
                
                                <input type="hidden" name="role" value="user">
                    <input type="submit" class="button" value="ADD">   <input type="reset" class="button" value="RESET">
        </pre>
    </form>

    <h3><font color="green">${requestScope.msg}</font></h3>
  </div>

                </fieldset>
            </form>
            </pre>
          </div>
       
        </center>
</body>

