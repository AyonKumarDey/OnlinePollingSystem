<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>

<%@page import="java.util.List"%>

<%@page import="table.Candidate"%>
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
            <form action="candidateupdated.jsp" method="POST">
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
    String cid=request.getParameter("cid");
    Session s=hib.HibDAOLayer.getHibSession();
    Transaction t=s.beginTransaction();
    Criteria c=s.createCriteria(table.Candidate.class);
    c.add(Restrictions.eq("cid", cid));
    List<Candidate>data=c.list();
//Candidate temp=(Candidate) s.get(table.Candidate.class, cid);
%>

<%
    for(Candidate ob:data)
    {
%>
<center>
    <h2 style= "margin-top:-250px;"><font color="white">         Enter Update Details Here</h2>
        <pre> 
            <font color="white" size="5.8">    
            <div >
 CANDIDATE ID    :   <input type="text" name="cid" value="<%=ob.getCid()%>" readonly>
            
 UPDATE NAME     :   <input type="text" name="cname" value="<%=ob.getCname()%>">
            
 UPDATE AGE      :    <select name="age">
                                  <option value="<%=ob.getAge()%>"><%=ob.getAge()%></option>
                                <c:forEach var="i" begin="20" end="100">
                                  <option value="${i}">${i}</option>   
                                </c:forEach>
                
                                </select>
            
 UPDATE GENDER   :    <select name="sex">
                                <option value="<%=ob.getSex()%>"><%=ob.getSex()%></option>
                                <option value="M">Male</option>
                                <option value="F">Female</option>
                                </select>
            
 UPDATE CITY     :   <input type="text" name="city" value="<%=ob.getCity()%>">
                
                
  <input type="submit" class="button" value="UPDATE">   <input type="reset" class="button" value="RESET">
                 <h3><font color="green">${requestScope.msg}</font></h3> 
       </div>
                            </font>
        </pre>
    </form>

            <% } %>
</div>

                </fieldset>
            </form>
            </pre>
          </div>
       
        </center>    
   
</center>
