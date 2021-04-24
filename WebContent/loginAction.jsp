<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>   	

<%
	String loginemail = request.getParameter("loginemail");
	String loginpassword = request.getParameter("loginpassword");
	if("admin@gmail.com".equals(loginemail) && "admin".equals(loginpassword))
	{
		session.setAttribute("email", loginemail);
		response.sendRedirect("admindashboard.jsp");
	}
	else{
		int flag=0;
		try{
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM customer where Email = '"+loginemail+"' AND Password='"+loginpassword+"'");
			
			while(rs.next()){	
				flag =1;
				session.setAttribute("email", loginemail);
				response.sendRedirect("products.jsp");
			}
			
			if(flag==0){
				response.sendRedirect("account.jsp?msg=notexist");
			}
		}
		catch(Exception e){
			System.out.println(e);
			response.sendRedirect("account.jsp?msg=invalid");
		}
	}
%>	