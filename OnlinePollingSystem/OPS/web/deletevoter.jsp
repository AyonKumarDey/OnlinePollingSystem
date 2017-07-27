
<%@page import="table.Voter"%>
<link rel="stylesheet" href="res/Site.css">
<jsp:useBean class="table.Candidate" id="can"/>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="java.util.List"%>
<%@page errorPage="error.jsp" %>
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
    org.hibernate.Session s=hib.HibDAOLayer.getHibSession();
    org.hibernate.Transaction t=s.beginTransaction();
    org.hibernate.Criteria c=s.createCriteria(table.Voter.class);
    List<Voter> data=c.list();
%>
    <pre>
<form action="delvoter.jsp" align="center" method="post">
    <span style="margin-top:-800px;" >
    <font color="#FFFFFF"><h1>CHOOSE THE VOTER ID FOR DELITING</h1></font>
     VOTER ID   : <select name="vid">
                        <option value="0">--------------------select-----------------------------</option>
                        <%
                            for(Voter ob:data)
                            {
                        %>
                        <option value="<%=ob.getVid()%>"><%=ob.getVid()%>---------------<%=ob.getVname()%>---------------<%=ob.getAge()%></option>  
                        <% } %>
                        </select>

                  <input type="submit" class="button red" value="SELECT ID" name="submit">
    </span>
    </pre>
</form>
                        
                        
<c:if test="${requestScope.msg ne null}">
    <script>
        alert('${requestScope.msg}')
    </script>    
</c:if>
             </table>
<br>
  </fieldset>
            </form>
            </pre>
          </div>
       
        </center>  
