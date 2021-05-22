<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>

<form action="AdminAddBooks" method="post" enctype="multipart/form-data">
	<table class="table table-striped table-bordered">
  		<tr>
    		<th>Book Name</th>
    		<td><input type="text" name="bookname" placeholder="Enter Book Name" required></td>
  		</tr>
  			
  		<tr>
    		<th>Author</th>
    		<td><input type="text" name="bookauthor" placeholder="Enter Book Author" required></td>
  		</tr>
  				
  		<tr>
    		<th>Publisher</th>
    		<td><input type="text" name="bookpublisher" placeholder="Enter Book Publisher" required></td>
  		</tr>
  					
  		<tr>
    		<th>Genre</th>
    		<td>
    		<select name = "bookgenre" required>
				<option>Examination</option>
				<option>Guide Book</option>
				<option>Question Paper Set</option>
			</select>
			</td>
  		</tr>
  					
  		<tr>
    		<th>Subject</th>
    		<td>
    		<select name="booksubject" required>
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
    		<td><input type="text" name="bookisbn" placeholder="Enter Book ISBN" pattern="^(?:ISBN(?:-1[03])?:? )?(?=[0-9X]{10}$|(?=(?:[0-9]+[- ]){3})[- 0-9X]{13}$|97[89][0-9]{10}$|(?=(?:[0-9]+[- ]){4})[- 0-9]{17}$)(?:97[89][- ]?)?[0-9]{1,5}[- ]?[0-9]+[- ]?[0-9]+[- ]?[0-9X]$" title="Enter Correct ISBN" required></td>
  		</tr>
  					
  		<tr>
    		<th>Book Price</th>
    		<td><input type="number" name="bookprice" placeholder="Enter Book Price" required></td>
  		</tr>
  		
  		<tr>
    		<th>Book Image</th>
    		<td><input type="file" name="bookimage" required></td>
  		</tr>
  		
  		<tr>
    		<th>Active</th>
    		<td><select name="bookactive">
					<option>Yes</option>
					<option>No</option>
				</select>
			</td>
  		</tr>
  		
  		<tr>
  			<td></td>
  			<td><input type="submit" value="Add Book"></td>
  		</tr>
  				
  	</table>
</form>