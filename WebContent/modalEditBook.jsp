<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>

<form action="adminEditBookDetails.jsp" method="post">
<%

		String id = request.getParameter("bookid");
		
		try{
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM books WHERE BookID="+id);
			while(rs.next()){
%>
	<table class="table table-striped table-bordered">
		<input type="hidden" name="bookid" value="<%=id%>">
  		<tr>
    		<th>Book Name</th>
    		<td><input type="text" name="bookname" value="<%=rs.getString("BookName")%>"></td>
  		</tr>
  			
  		<tr>
    		<th>Author</th>
    		<td><input type="text" name="bookauthor" value="<%=rs.getString("Author")%>"></td>
  		</tr>
  				
  		<tr>
    		<th>Publisher</th>
    		<td><input type="text" name="bookpublisher" value="<%=rs.getString("Publisher")%>"></td>
  		</tr>
  					
  		<tr>
    		<th>Genre</th>
    		<td>
    		<select name = "bookgenre" value="<%=rs.getString("Genre")%>">
				<option>Examination</option>
				<option>Guide Book</option>
				<option>Question Paper Set</option>
			</select>
			</td>
  		</tr>
  					
  		<tr>
    		<th>Subject</th>
    		<td>
    		<select name="booksubject" value="<%=rs.getString("Subject")%>">
				<option>Railway</option>
				<option>Defence</option>
				<option>Government</option>
				<option>Medical</option>
				<option>Education</option>
				<option>Banking</option>
				<option>Law</option>
				<option>Engineering</option>
			</select>
    		</td>
  		</tr>
  					
  		<tr>
    		<th>ISBN</th>
    		<td><input type="text" name="bookisbn" value="<%=rs.getString("ISBN")%>"></td>
  		</tr>
  					
  		<tr>
    		<th>Book Price</th>
    		<td><input type="number" name="bookprice" value="<%=rs.getString("BookPrice")%>"></td>
  		</tr>
  		<tr>
  			<td></td>
  			<td><input type="submit" value="Edit Book"></td>
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