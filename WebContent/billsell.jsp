<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>
<!DOCTYPE html>
<head>
    <title>Sell Bill | PustaakShala</title>
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
       	String sellid = request.getParameter("id");	
       	Connection conn = ConnectionProvider.getCon();
		Statement stt = conn.createStatement();
		ResultSet rs1 = stt.executeQuery("SELECT * FROM sellrequest join customer on sellrequest.CustID=customer.CustomerId where SellID ="+sellid);
		while(rs1.next()){
     %>
       <img src="assets/logo.png" width="91" height="91" border="0">
       <br clear="\"all\"">
       <center style="display: block;">
            <b style="color: #E47911; font-size: medium; font-family: Verdana, Arial, Helvetica, sans-serif;">
                PUSTAAKSHALA   
            </b>
            <br>
       </center> 
       <br>       
       
       <table width="90%" border="0" cellspacing="0" cellpadding="0" bgcolor="#ffffff" align="center">
           <tbody>
                <tr>
                    <td>
                        <table width="100%" border="0" align="center" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td valign="top" align="left">
                                        <b>Sell ID</b>: <%=sellid %>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" align="left">
                                        <b>Sell Date</b>: <%=rs1.getString("SellDate") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" align="left">
                                        <b>Final Price</b>: &#8377;<%=rs1.getString("SBookPrice") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" align="left">
                                        <b>Customer Name</b>: <%=rs1.getString("FirstName") %> <%=rs1.getString("LastName") %>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
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
                                                                        <b>Sell Book</b>
                                                                    </td>
                                                                    <td align="right" valign="top">
                                                                        <b>Price</b>
                                                                    </td>
                                                                </tr>
                                                                
                                                                <tr></tr>
                                                                <tr></tr>
                                                               	<tr>
                                                                    <td colspan="1" valign="top"><%=rs1.getString("SellBookname") %><br></td>
                                                                    <td align="right" colspan="2" valign="top">&#8377;<%=rs1.getString("SBookPrice") %><br></td>
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
                                                                                                    <td nowrap="nowrap" align="right">Book Final Price</td>
                                                                                                    <td nowrap="nowrap" align="right">
                                                                                                        <span style="text-decoration: inherit; white-space: nowrap;"><%=rs1.getString("SBookPrice") %></span>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr valign="top">
                                                                                                    <td nowrap="nowrap" align="right">&nbsp;</td>
                                                                                                    <td nowrap="nowrap" align="right">-----</td>                                                                                                   </td>
                                                                                                </tr>
                                                                                                <tr valign="top">
                                                                                                    <td nowrap="nowrap" align="right"><b>Grand Total:</b></td>
                                                                                                    <td nowrap="nowrap" align="right">
                                                                                                        <b><span style="text-decoration: inherit; white-space: nowrap;">&#8377;<%=rs1.getString("SBookPrice") %></span></b>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </tbody>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                        <b>Payment Status:</b>
                                                                        <br>
                                                                        <%=rs1.getString("SellStatus") %>
                                                                        <br>
                                                                        <br>
                                                                        <b>Billing Address:</b>
                                                                        <div class="displayAddressDiv">
                                                                            <ul class="displayAddressUL">
                                                                                <li class="displayAddressLI displayAddressFullName"><%=rs1.getString("FirstName") %> <%=rs1.getString("LastName") %></li>
                                                                                <li class="displayAddressLI displayAddressFullName"><%=rs1.getString("HouseBuilding") %>, <%=rs1.getString("Location") %></li>
                                                                                <li class="displayAddressLI displayAddressFullName"><%=rs1.getString("StreetName") %></li>
                                                                                <li class="displayAddressLI displayAddressFullName"><%=rs1.getString("City") %>, <%=rs1.getString("State") %> - <%=rs1.getString("Pincode") %></li>
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
                    </td>
                </tr>
           </tbody>
       </table>
       <%}%>
       <br>
       <br>
       <center>
        <a href="" onclick="window.print();">Print this page for your records.</a>
           <p>
            To continue buying, <a href="orders.jsp">Click Here</a>
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