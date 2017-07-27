<link rel="stylesheet" href="res/Site.css">
<%@page import="java.util.List"%>
<%@page import="hib.HibDAOLayer"%>
<%@page errorPage="error.jsp" %>
<%@page import="table.Voter"%>
<%@page import="org.hibernate.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${sessionScope.vid eq null}">
    <c:set var="msg" value="PLEASE LOGIN TO ACCESS"/>
    <jsp:forward page="login.jsp"/>
</c:if>

<head>
        <link rel='stylesheet' href='res/Site.css'/>
        <link rel="stylesheet" href="res/animate_login.css"/>
        <link rel="stylesheet" href="res/style_login.css"/>
        <link rel="stylesheet" href="res/my.css"/>
    </head>
   <body style="background-image:url(res/adminBackground.jpg); background-size:100%;">
        
    <center> 
        <br><br><br>
        <div class= "fadeInUp" style="margin-top:-100px;">
            <pre>
            
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
<%
    Session s=HibDAOLayer.getHibSession();
    Transaction t=s.beginTransaction();
    Criteria c=s.createCriteria(Voter.class);
    List<Voter>data=c.list();
%>
<br><br><br>
<div style="margin-top:-310px;">
<center><h4>Total Candidates=<%=data.size()%> </h4></center>

<table width="70%" class="gridalter">
    <tr>
        <th>VOTER ID</th>
        <th>VOTER NAME</th>
        <th>AGE</th>
        <th>SEX</th>
        <th>CITY</th>
        
    </tr>
    <%
        for(Voter ob: data)
        {
    %>
    <tr>
        <td><%= ob.getVid() %></td>
        <td><%= ob.getVname() %></td>
        <td><%= ob.getAge() %></td>
        <td><%= ob.getSex()%></td>
        <td><%= ob.getCity() %></td>
    </tr>
    <% } %>
</table></div>
</div>
    <br>     
             </fieldset>
       
    </center>
    


    
</body>



