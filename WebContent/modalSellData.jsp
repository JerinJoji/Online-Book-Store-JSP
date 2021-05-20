<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>

<%

		String id = request.getParameter("sellid");
		
		try{
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM sellrequest WHERE SellID="+id);
			while(rs.next()){
%>
				<table class="table table-striped table-bordered">
  					<tr>
    					<th>Sell ID</th>
    					<td><%=rs.getString("SellID")%></td>
  					</tr>
  					
  					<tr>
    					<th>Book Name</th>
    					<td><%=rs.getString("SellBookname")%></td>
  					</tr>
  					
  					<tr>
    					<th>Author</th>
    					<td><%=rs.getString("SBookAuthor")%></td>
  					</tr>
  					
  					<tr>
    					<th>Publisher</th>
    					<td><%=rs.getString("SBookPublisher")%></td>
  					</tr>
  					
  					<tr>
    					<th>Genre</th>
    					<td><%=rs.getString("SBookGenre")%></td>
  					</tr>
  					
  					<tr>
    					<th>Subject</th>
    					<td><%=rs.getString("SBookSubject")%></td>
  					</tr>
  					
  					<tr>
    					<th>ISBN</th>
    					<td><%=rs.getString("SBookISBN")%></td>
  					</tr>
  					
  					<tr>
    					<th>Book Price</th>
    					<td><%=rs.getString("SRBPrice")%></td>
  					</tr>
  					
  					<tr>
    					<th>Expected Price</th>
    					<td><%=rs.getString("SBookPrice")%></td>
  					</tr>
  					
  					<tr>
    					<th>Number Of Years Used</th>
    					<td><%=rs.getString("SYearsUsed")%></td>
  					</tr>
  					
  					<tr>
    					<th>Sell Status</th>
    					<td><%=rs.getString("SellStatus")%></td>
  					</tr>
  				</table>
<%
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
%>