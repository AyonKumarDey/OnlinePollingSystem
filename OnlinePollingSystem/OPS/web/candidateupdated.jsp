<%@page import="java.util.List"%>
<%@page errorPage="error.jsp" %>

<%@page import="table.Candidate"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
    String cid=request.getParameter("cid");
    String cname=request.getParameter("cname");
    String age=request.getParameter("age");
    String sex=request.getParameter("sex");
    String city=request.getParameter("city");
    org.hibernate.Session s=hib.HibDAOLayer.getHibSession();
    org.hibernate.Transaction t=s.beginTransaction();
    Candidate ob=(Candidate)s.get(Candidate.class,cid);
    ob.setCname(cname);
    ob.setAge(Integer.parseInt(age));
    ob.setCity(city);
    ob.setSex(sex);
    s.update(ob);
    t.commit();
%>

<%
request.setAttribute("msg", "Update Sucessfully !!!");
 RequestDispatcher rd = request.getRequestDispatcher("updatecandidatebyid.jsp");
 rd.include(request, response);
%>
