<link rel="stylesheet" href="res/Site.css">
<%@page import="java.util.List"%>
<%@page import="hib.HibDAOLayer"%>
<%@page import="table.Candidate"%>
<%@page import="org.hibernate.*"%>
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
                 <legend>Voting Process</legend>

    <%
        HttpSession se=request.getSession(false);
        if(se!=null && se.getAttribute("vid")!=null){
        String vid = request.getParameter("vid");
        Session s = HibDAOLayer.getHibSession();
        Transaction t = s.beginTransaction();
        Criteria c = s.createCriteria(Candidate.class);
        List<Candidate> data = c.list();
    %>    
 <pre> 
<h2 style="font-size:18px;"><u> Wellcome : <%=vid%> </u>    Total Candidates:<%=data.size()%> </h2> </pre>
<table width="100%" align="center">
    <tr>
        <th>CANDIDATE ID</th>
        <th>CANDIDATE NAME</th>
        <th>SYMBOL </th>
        <th>AGE</th>
        <th>CITY</th>
        <th>SEX</th>
        <th>ACTION</th>
    </tr>
    <%
        for (Candidate ob : data) {
    %>
    <tr>
        <td><%= ob.getCid()%></td>
        <td><%= ob.getCname()%></td>
        <td><%= ob.getSymbol()%></td>
        <td><%= ob.getAge()%></td>
        <td><%= ob.getCity()%></td>
        <td><%= ob.getSex()%></td>
        <td><a href="voted.jsp?cid=<%=ob.getCid()%>&vid=<%=vid%>" onclick="return confirm('Are You Sure you Want To Vote')"><img src="res/vote.png" width="100" height="20" class="button" ></a></td>
    </tr>
    
    <% }
    
    }
        else{
            request.setAttribute("msg", "Please Login");
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.include(request, response);
        }
    %>
</table>
    <br>
    <form method="POST" action="logout.jsp">
        <input type="submit" value="Logout" class="button"/>
    </form>
     
             </fieldset>
        </div>
    </center>
    


    
</body>



