<link rel="stylesheet" href="res/Site.css">
<jsp:useBean class="table.Candidate" id="can"/>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="java.util.List"%>
<%@page errorPage="error.jsp" %>
<%@page import="table.Candidate"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>





<head>
        <link rel='stylesheet' href='res/Site.css'/>
        <link rel="stylesheet" href="res/animate_login.css"/>
        <link rel="stylesheet" href="res/style_login.css"/>
        <link rel="stylesheet" href="res/my.css"/>
    </head>
    <body style="background-image:url(res/voterBackground.jpg); background-size:100%;">
        
    <center> 
        <br><br><br>
        <div class= "fadeInUp">
             <fieldset style="width:800px; height:550px; border-radius:30px; opacity:0.7; background-color:#717D7E;"  >
                 <legend>Voting Process For Candidate</legend>


<%
    String cid=request.getParameter("cid");
    String p=request.getParameter("pass");
    org.hibernate.Session s=hib.HibDAOLayer.getHibSession();
    org.hibernate.Transaction t=s.beginTransaction();
    org.hibernate.Criteria c=s.createCriteria(table.Candidate.class);
    c.add(Restrictions.eq("cid",cid));
    c.add(Restrictions.eq("pass",p));
    List<Candidate> data=c.list();
    %>
    
<h2 style="font-size:18px;"><u> Wellcome : <%=cid%> </u> </h2> 

    <%
    if(data.size()>0)
    {
%>
<table width="100%" class="gridrow" align="center" style="border-collapse:collapse" border="1">
    <tr>
        <th>CANDIDATE ID</th>
        <th>CANDIDATE NAME</th>
        <th>SYMBOL </th>
        <th>AGE</th>
        <th>CITY</th>
        <th>SEX</th>
        <th>NO OF VOTES</th>
    </tr>
    <%
        for(Candidate ob: data)
        {
    %>
    <tr>
        <td><%= ob.getCid() %></td>
        <td><%= ob.getCname() %></td>
        <td><%= ob.getSymbol() %></td>
        <td><%= ob.getAge() %></td>
        <td><%= ob.getCity() %></td>
        <td><%= ob.getSex() %></td>
        <td><%= ob.getCount()%></td>
    </tr>
    <% } 
    }
else{
    
    
            request.setAttribute("msg", "ID or Password not match");
            RequestDispatcher rd = request.getRequestDispatcher("loginascan.jsp");
            rd.include(request, response);
    } %>
</table>
    <br>
    <form method="POST" action="logout.jsp">
        <input type="submit" value="Logout" class="button"/>
    </form>
     
             </fieldset>
        </div>
    </center>
    


    
</body>

