<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>

<form action="custNegotiateOffer.jsp" method="post">
<%

		String id = request.getParameter("sellid");
		
		try{
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM sellrequest WHERE SellID="+id);
			while(rs.next()){
%>
	<table class="table table-striped table-bordered">
		<input type="hidden" name="sellid" value="<%=id%>">
		<tr>
    		<th>Sell ID</th>
    		<td><%=rs.getString("SellID")%></td>
  		</tr>
  		
  		<tr>
    		<th>Sell Book Name</th>
    		<td><%=rs.getString("SellBookname")%></td>
  		</tr>
  		
  		<tr>
    		<th>Book Price</th>
    		<td>&#8377;<%=rs.getString("SRBPrice")%></td>
  		</tr>
  		
  		<tr>
    		<th>Admin Selling Offer</th>
    		<td>&#8377;<%=rs.getString("SBookPrice")%></td>
  		</tr>
  		
  		<tr>
    		<th>New Sell Price</th>
    		<td><input type="number" name="sbookprice" required></td>
  		</tr>
  		
  		<tr>
    		<th>Admin Description</th>
    		<td><%=rs.getString("SAdminDesp")%></td>
  		</tr>
  		
  		<tr>
    		<th>Customer Description</th>
    		<td><textarea rows="4" cols="35" name="scustdesp"></textarea></td>
  		</tr>
  		
  		<tr>
  			<td ><a href="custAcceptOffer.jsp?sellid=<%=rs.getString(1) %>" class="btn-logout" style="margin:9px 0">Accept</a></td>
    		<td><input type="submit" style="background:#ff523b; color:#fff; border-radius:10px;" value="Send New Offer"></td>
  		</tr>
	</table>
<%
	}
}
catch(Exception e){
	System.out.println(e);
}
%>
</form>