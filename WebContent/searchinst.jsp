<%@page import="java.sql.*"%>
<%@ include file="dbcon.jsp"%>
<div class="form-group">
<label for="exampleInputPassword1">Trainer Experience:</label> 
<%
String location=request.getParameter("count");  %>

 <%
 //S//tring buffer="<select name='state' class='form-control' onchange='showCity(this.value);'><option value='-1'>Select</option>";  

 Connection con = DriverManager.getConnection(url,uname,upass);  

 Statement stmt61 = con.createStatement();  

 ResultSet rs61= stmt61.executeQuery("Select * from hostademo where address='"+location+"' ");%>
 <div class="col-md-3 form-left-agileits-w3layouts ">
										<label><i class="fa fa-university" aria-hidden="true"></i> Institutes</label>
										<select class="form-control" id="inst">
											<option value="">Search by Institute Name</option>
											
 <%  while(rs61.next()){%>

											<option><%=rs61.getString("institutename")%></option>
										
   
  <% }  %>
 
	
										</select>
								</div>
 <%//response.getWriter().println(buffer); 
rs61.close();
stmt61.close();
con.close();

 %>