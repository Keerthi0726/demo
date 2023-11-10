<div class="tab-1 resp-tab-content">
			
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ include file="dbcon.jsp"%>

<%


        Connection con = DriverManager.getConnection(url,uname,upass); 

	//Executing a query
	Statement st15= con.createStatement();
	ResultSet rs15=st15.executeQuery("select * from hostademo ");
%>
<TABLE cellpadding="10"  >
	     <TR>
<TD><b>demoname</b></TD>
<TD><b>institutename</b></TD>
<TD><b>trainername</b></TD>
<TD><b>trainerexperience</b></TD>
<TD><b>date</b></TD>
<TD><b>Duration</b></TD>
<TD><b>contactemail</b></TD>
<TD><b>contactnumber</b></TD>
<TD><b>ContactPerson</b></TD>
<TD><b>No Of Seats</b></TD>
<TD><b>address</b></TD>

</TR>
	<%
    while (rs15.next()) 
    {
     %>

     
     
     <TR>
<TD><%=rs15.getString(1)%></TD>
<TD><%=rs15.getString(2)%></TD>
<TD><%=rs15.getString(3)%></TD>
<TD><%=rs15.getString(4)%></TD>
<TD><%=rs15.getString(5)%></TD>
<TD><%=rs15.getString(6)%></TD>
<TD><%=rs15.getString(7)%></TD>
<TD><%=rs15.getString(8)%></TD>
<TD><%=rs15.getString(9)%></TD>
<TD><%=rs15.getString(10)%></TD>
<TD><%=rs15.getString(11)%></TD>
<% } %>
     </TR>



<% 	
	
rs15.close();
st15.close();
con.close();	
	

%>
			
			</div>