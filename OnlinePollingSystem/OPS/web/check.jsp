<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="table.Voter"%>
<%@page import="org.hibernate.Session"%>
<%@page import="hib.HibDAOLayer"%>

<%

        String q = request.getParameter("vid");
        String p = request.getParameter("pass");
        Session s = hib.HibDAOLayer.getHibSession();
        Criteria c = s.createCriteria(Voter.class);
        c.add(Restrictions.eq("vid", q));
        c.add(Restrictions.eq("pass", p));
        List<Voter> l = c.list();

        HttpSession sg = request.getSession();
        sg.setAttribute("vid",q);
        sg.getAttribute("vid");
        //sg.setAttribute("vid",q);
        
   if(sg.getAttribute("vid")==q)
   {

        if (l.size() > 0) {
            
                     
                if (l.get(0).getRole().equalsIgnoreCase("admin")) {
                   
                    // request.setAttribute("msg","LOGIN AS ADMIN");
                    RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
                    rd.include(request, response);

                } else {
                   
                    RequestDispatcher rd = request.getRequestDispatcher("vote.jsp");
                    rd.include(request, response);
                    //out.print("Welcome Voter.");
                }
            
        } else {
            request.setAttribute("msg", "ID or Password not match");
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.include(request, response);
            // out.print("<center><font color='red'>Wrong Id OR password</center>");
        }
   }
   else{
       
   }


%>                   
