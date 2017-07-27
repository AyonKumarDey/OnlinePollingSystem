<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="table.Voter"%>
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
   <body style="background-image:url(res/adminBackground.jpg); background-size:100%;">
        
    <center> 
        <br><br><br>
        <div class= "fadeInUp" style="margin-top:-100px;">
            <pre>
            
                <fieldset style="width:1000px; height:600px; border-radius:30px; opacity:0.8; background: #AEB6BF;"  >
                     <legend>Winer Detail</legend><div id="sidebar">
		
		<ul><div id="wrapper" style= "float: right;margin-top:-100px;">
                       
		
		</ul>
		<div id="sidebar-bottom">
			&nbsp;
		</div>
		</div>
<%
    Session s=HibDAOLayer.getHibSession();
    Transaction t=s.beginTransaction();
    Criteria c=s.createCriteria(Candidate.class);
    List<Candidate>data=c.list();
%>
<br><br><br>
    <div style="margin-top:-250px;">
<center><h4>Total Number of Candidates=<%=data.size()%> </h4></center>

<table  class="gridalter" align="center" style="border-collapse:collapse" border="1">
    <tr>
        <th>CANDIDATE ID</th>
        <th>CANDIDATE NAME</th>
        <th>SYMBOL </th>
        <th>AGE</th>
        <th>CITY</th>
        <th>SEX</th>
        <th>VOTE COUNTS</th>
    </tr>
    <%
    int max=0;
    String id="";
        for(Candidate ob: data)
        {
           if(max<ob.getCount()){
              max=ob.getCount();
              id=ob.getCid();
           }
        }
    
        Criteria cs = s.createCriteria(Candidate.class);
        cs.add(Restrictions.eq("count",max));
        cs.add(Restrictions.eq("cid",id));
        List<Candidate> l = cs.list();    
        
    %>
    <tr>
        <td><%= l.get(0).getCid() %></td>
        <td><%= l.get(0).getCname() %></td>
        <td><%= l.get(0).getSymbol() %></td>
        <td><%= l.get(0).getAge() %></td>
        <td><%= l.get(0).getCity() %></td>
        <td><%= l.get(0).getSex() %></td>
        <td><%= l.get(0).getCount() %></td>
    </tr>
    <%  %>
</table>
</div>
    <br>     
             </fieldset>
        </div>
    </center>
    


    
</body>

