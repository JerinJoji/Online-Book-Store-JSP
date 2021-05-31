<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>
<!DOCTYPE html>
<head>
    <title>Order Summary | PustaakShala</title>
    <style>
        tbody{
            display: table-row-group; 
            vertical-align: middle; 
            border-color: inherit;
        }

        tr{
            display:table-row;
            vertical-align: inherit;
            border-color: inherit;
        }

        td{
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: small;
        }

        .sans{
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: medium;
        }

        center{
            display: block;
            text-align: -webkit-center;
        }
        
        table{
             display: table;
             border-collapse: separate;
             box-sizing: border-box;
             text-indent: initial;
             border-spacing: 2px;
             border: grey;
        }

        .displayAddressDiv{
            vertical-align: top;
            padding-bottom: 0.5em;
        }

        .displayAddressUL{
            list-style-type: none;
            padding: 0%;
            margin-left: 0%;
            margin-top: 0%;
            margin-bottom: 0%;
            vertical-align: top;
        }

        .displayAddressDiv .displayAddressLI {
            width: 100%;
        }
    </style>
</head>
<html>
    <body>
    	<%
    	String cusid = session.getAttribute("CusID").toString();
    	int total = 0;
    	
    	Connection conn = ConnectionProvider.getCon();
		Statement stt = conn.createStatement();
		ResultSet rs3 = stt.executeQuery("select sum(Price) from cart where cart.CusID='"+ cusid +"' and cart.Status='Bill';");
		if(rs3.next()){
			total = rs3.getInt(1);
		}
		%>
       <img src="assets/logo.png" width="91" height="91" border="0">
       <br clear="\"all\"">
       <center style="display: block;">
            <b style="color: #E47911; font-size: xx-large; font-family: Verdana, Arial, Helvetica, sans-serif;">
                PUSTAAKSHALA   
            </b>
            <br>
            <p style=" font-size: large; font-family: Verdana, Arial, Helvetica, sans-serif;">Order Summary</p>
       </center> 
       <br>
       
       <% 
       	Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from cart join customer on cart.CusID=customer.CustomerId join books on books.BookID=cart.Book_ID where cart.CusID='"+ cusid +"' and cart.Status='Bill';");
		if(rs.next()){
		%>
       
       <table width="90%" border="0" cellspacing="0" cellpadding="0" bgcolor="#ffffff" align="center">
           <tbody>
                <tr>
                    <td>
                        <table width="100%" border="0" align="center" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td valign="top" align="left">
                                        <b>Order Placed</b>: <%=rs.getString("OrderDate") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" align="left">
                                        <b>Expected Delivery Date</b>: <%=rs.getString("DeliverDate") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" align="left">
                                        <b>Order Total</b>: &#8377;<%= total %>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
        <%} %>
                        
                        
                        <br>
                        <table width="100%" border="0" align="center" cellspacing="0" cellpadding="0" bgcolor="#000000">
                            <tbody>
                                <tr bgcolor="#000000">
                                    <td>
                                        <table width="100%" border="0" align="center" cellspacing="3" cellpadding="0" bgcolor="#000000">
                                            <tbody>
                                                <tr bgcolor="#ffffff">
                                                    <td valign="top" colspan="2">
                                                        <table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                            <tbody>
                                                                <tr bgcolor="#ffffff">
                                                                    <td>
                                                                        <b class="sans">
                                                                            <center></center>
                                                                        </b>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr bgcolor="#000000">
                                    <td bgcolor="#ffffff" valign="top" colspan="2">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="2">
                                            <tbody>
                                                <tr valign="top">
                                                    <td width="100%">
                                                        <table align="right" border="0" cellspacing="0" cellpadding="2">
                                                            <tbody>
                                                                <tr valign="top">
                                                                    <td align="right">&nbsp;</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                        <table border="0" cellspacing="2" cellpadding="0" width="100%">
                                                            <tbody>
                                                                <tr valign="top">
                                                                    <td valign="top">
                                                                        <b>Items Ordered</b>
                                                                    </td>
                                                                    <td align="right" valign="top">
                                                                        <b>Price</b>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr></tr>
                                                                <tr></tr>
                                                                <%
                                                                int i = 1;
                                                                ResultSet rs1 = st.executeQuery("select * from cart join customer on cart.CusID=customer.CustomerId join books on books.BookID=cart.Book_ID where cart.CusID='"+ cusid +"' and cart.Status='Bill';");
                                                                while(rs1.next()){                                                                
                                                                %>
                                                                <tr>
                                                                    <td colspan="1" valign="top"><%=i%>. <%=rs1.getString("BookName") %><br></td>
                                                                    <td align="right" colspan="2" valign="top">&#8377;<%=rs1.getString("BookPrice") %><br></td>
                                                                </tr>
                                                                
                                                                <%
                                                                i=i+1;
                                                                } %>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        
        <% 
		ResultSet rs2 = st.executeQuery("select * from cart join customer on cart.CusID=customer.CustomerId join books on books.BookID=cart.Book_ID where cart.CusID='"+ cusid +"' and cart.Status='Bill';");
		if(rs2.next()){
		%>
                        <br>
                        <table width="100%" border="0" align="center" cellspacing="0" cellpadding="0" bgcolor="#000000">
                            <tbody>
                                <tr bgcolor="#000000">
                                    <td>
                                        <table width="100%" border="0" align="center" cellspacing="0" cellpadding="0" bgcolor="#000000">
                                            <tbody>
                                                <tr bgcolor="#ffffff">
                                                    <td valign="top" colspan="2">
                                                        <table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                            <tbody>
                                                                <tr bgcolor="#ffffff">
                                                                    <td><b class="sans"><center>Payment Information</center></b></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td bgcolor="#ffffff" valign="top" colspan="2">
                                                        <table width="100%" border="0" cellspacing="0" cellpadding="2">
                                                            <tbody>
                                                                <tr valign="top">
                                                                    <td width="100%">
                                                                        <table border="0" cellspacing="0" cellpadding="2" align="right">
                                                                            <tbody>
                                                                                <tr valign="top">
                                                                                    <td align="right">
                                                                                        <table border="0" cellpadding="0" cellspacing="1">
                                                                                            <tbody>
                                                                                                <tr valign="top">
                                                                                                    <td nowrap="nowrap" align="right">Item(s) Subtotal:</td>
                                                                                                    <td nowrap="nowrap" align="right">
                                                                                                        <span style="text-decoration: inherit; white-space: nowrap;"><%= total %></span>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr valign="top">
                                                                                                    <td nowrap="nowrap" align="right">Shipping:</td>
                                                                                                    <td nowrap="nowrap" align="right">
                                                                                                        <span style="text-decoration: inherit; white-space: nowrap;">0</span>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr valign="top">
                                                                                                    <td nowrap="nowrap" align="right">&nbsp;</td>
                                                                                                    <td nowrap="nowrap" align="right">-----</td>                                                                                                   </td>
                                                                                                </tr>
                                                                                                <tr valign="top">
                                                                                                    <td nowrap="nowrap" align="right">Total:</td>
                                                                                                    <td nowrap="nowrap" align="right">
                                                                                                        <span style="text-decoration: inherit; white-space: nowrap;"><%= total %></span>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr valign="top">
                                                                                                    <td nowrap="nowrap" align="right">&nbsp;</td>
                                                                                                    <td nowrap="nowrap" align="right">-----</td>                                                                                                   </td>
                                                                                                </tr>
                                                                                                <tr valign="top">
                                                                                                    <td nowrap="nowrap" align="right"><b>Grand Total:</b></td>
                                                                                                    <td nowrap="nowrap" align="right">
                                                                                                        <b><span style="text-decoration: inherit; white-space: nowrap;">&#8377;<%= total %></span></b>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </tbody>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                        <b>Payment Method:</b>
                                                                        <br>
                                                                        <%=rs2.getString("PaymentMethod") %>
                                                                        <br>
                                                                        <br>
                                                                        <b>Shipping Address:</b>
                                                                        <div class="displayAddressDiv">
                                                                            <ul class="displayAddressUL">
                                                                                <li class="displayAddressLI displayAddressFullName"><%=rs2.getString("ShipCName") %></li>
                                                                                <li class="displayAddressLI displayAddressFullName"><%=rs2.getString("ShipCPhone") %></li>
                                                                                <li class="displayAddressLI displayAddressFullName"><%=rs2.getString("ShipCAdr") %></li>
                                                                                <li class="displayAddressLI displayAddressFullName"><%=rs2.getString("ShipCCity") %>, <%=rs2.getString("ShipCState") %> - <%=rs2.getString("ShipCPin") %></li>
                                                                            </ul>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
               <%} %>
                    </td>
                </tr>
           </tbody>
       </table>
       <br>
       <br>
       <center>
        <a href="" onclick="window.print();">Print this page for your records.</a>
           <p>
            To continue buying, return to <a href="continueshopping.jsp">Homepage</a>
           </p>
       </center>
       <br>
       <br>
       <center>
        <p>
            &#169;2021 Pustaakshala
        </p>
    </center>
    </body>
</html>