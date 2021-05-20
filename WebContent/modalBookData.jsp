<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>

<%

		String id = request.getParameter("bookid");
		
		try{
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM books WHERE BookID="+id);
			while(rs.next()){
%>
				<table class="table table-striped table-bordered">
  					<tr>
    					<th>Book ID</th>
    					<td><%=rs.getString("BookID")%></td>
  					</tr>
  					
  					<tr>
    					<th>Book Name</th>
    					<td><%=rs.getString("BookName")%></td>
  					</tr>
  					
  					<tr>
    					<th>Author</th>
    					<td><%=rs.getString("Author")%></td>
  					</tr>
  					
  					<tr>
    					<th>Publisher</th>
    					<td><%=rs.getString("Publisher")%></td>
  					</tr>
  					
  					<tr>
    					<th>Genre</th>
    					<td><%=rs.getString("Genre")%></td>
  					</tr>
  					
  					<tr>
    					<th>Subject</th>
    					<td><%=rs.getString("Subject")%></td>
  					</tr>
  					
  					<tr>
    					<th>ISBN</th>
    					<td><%=rs.getString("ISBN")%></td>
  					</tr>
  					
  					<tr>
    					<th>Book Price</th>
    					<td><%=rs.getString("BookPrice")%></td>
  					</tr>
  				</table>
<%
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
%>