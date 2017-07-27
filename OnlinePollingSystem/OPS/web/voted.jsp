
<%@page import="table.*"%>
<%@page errorPage="error.jsp"%>
<%@page import="org.hibernate.Transaction"%>    
<jsp:include page="vote.jsp"/>

<%    
     String cid=request.getParameter("cid");
     String vid=request.getParameter("vid");
     org.hibernate.Session s1=hib.HibDAOLayer.getHibSession();
     Transaction t1=s1.beginTransaction();
     org.hibernate.Session s2=hib.HibDAOLayer.getHibSession();
     Transaction t2=s2.beginTransaction();
     Candidate can=(Candidate)s1.get(Candidate.class, cid);
     Voter v=(Voter)s2.get(Voter.class, vid);
     int count=can.getCount();
     if(v.getFlag()==0)
     {
        count++; 
        can.setCount(count);
        s1.save(can);
        t1.commit();
        v.setFlag(1);
        s2.save(v);
        t2.commit();
     
%>
<center><h3><font style="font-size: 20px; color: #D98880;">You Have Successfully voted<br> Please Logout.</font></h3></center>

    <% }
    else if(v.getFlag()==1)
        {
    %>
    
    <center><h3><font style="font-size: 20px; color: #D98880;">You Have Already Voted</font></h3></center>
    <% } %>