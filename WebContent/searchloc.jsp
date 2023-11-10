<%@page import="java.sql.*"%>
<%@ include file="dbcon.jsp"%>
<div class="form-group">
<label for="exampleInputPassword1">Trainer Experience:</label> 
<%
String tech=request.getParameter("count");  %>

 <%
 //S//tring buffer="<select name='state' class='form-control' onchange='showCity(this.value);'><option value='-1'>Select</option>";  

 Connection con = DriverManager.getConnection(url,uname,upass);  

 Statement stmt61 = con.createStatement();  

 ResultSet rs61= stmt61.executeQuery("Select * from hostademo where demoname='"+tech+"' ");%>
 <div class="col-md-3 form-date-w3-agileits">
										<label><i class="fa fa-map-marker" aria-hidden="true"></i> Location</label>
										<select class="form-control" id="venue" onchange="showCity(this.value)">
											<option value="">Search by Location</option>
 <%  while(rs61.next()){%>

											<option><%=rs61.getString("address")%></option>
										
   
  <% }  %>
 
	
										</select>
								</div>
 <%//response.getWriter().println(buffer); 
rs61.close();
stmt61.close();
con.close();

 %>