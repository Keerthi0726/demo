<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@ include file="dbcon.jsp"%>
<%

String uid=null;
uid=(String)session.getAttribute("pageid");
if(uid==null)
{
	 response.sendRedirect("login.jsp");


}

String trainername = request.getParameter("trainername");
String trainerexperience = request.getParameter("trainerexperience");
String institutename = request.getParameter("institutename");
String coursename = request.getParameter("coursename");
String trainermail = request.getParameter("trainermail");
String trainercontact = request.getParameter("trainercontact");
String traineraltercontact = request.getParameter("traineraltercontact");
String trainerweb = request.getParameter("trainerweb");
//String coursename = request.getParameter("coursename");
//out.println(coursename);

String technologies="";
String tech[]=request.getParameterValues("tech");
for(int i=0;i<tech.length;i++){
	technologies+=tech[i]+",";
}


//out.println(coursename);




   

    Connection con = DriverManager.getConnection(url,uname,upass);
   	 Statement st30=con.createStatement();
   	 ResultSet rs30=st30.executeQuery("select * from trainerslist");
   	 if(rs30.next())
		{
			rs30.last();
			String str =rs30.getString(1);
			String str1=str.substring(str.lastIndexOf("_") + 1);
			
			
			
			Integer id2=Integer.valueOf(str1);
			
			int id3=id2++;
			
			String name_id2=trainername+"_"+id2;
			
   	 
   	 int i=st30.executeUpdate("insert into trainerslist(TrainerId,TrainerName,TrainerExperience,CourseName,instname,Uid,mailid,contactnumber,altermobilenumber,web) values('"+name_id2+"','"+trainername+"','"+trainerexperience+"','"+technologies+"','"+institutename+"','"+uid+"','"+trainermail+"','"+trainercontact+"','"+traineraltercontact+"','"+trainerweb+"')");
	 if(i>0)
   	 {
   		
   		response.sendRedirect("inst_addatrainers1.jsp");
        }
   	 else{
   		out.println("No Data Available");
   	
   	 }
		}
   	 else
   	 	{
   	 		int id=1;
   	 		String id1=String.valueOf(id);
   	 		
   	 	    String name_id = trainername+"_"+id1;
   	 	   
   	 	int i=st30.executeUpdate("insert into trainerslist(TrainerId,TrainerName,TrainerExperience,CourseName,instname,Uid,mailid,contactnumber,altermobilenumber,web) values('"+name_id+"','"+trainername+"','"+trainerexperience+"','"+technologies+"','"+institutename+"','"+uid+"','"+trainermail+"','"+trainercontact+"','"+traineraltercontact+"','"+trainerweb+"')");
   	 if(i>0)
   	    	 {
   	    		
   	    		response.sendRedirect("inst_addatrainers1.jsp");
   	         }
   	    	 else{
   	    		out.println("No Data Available");
   	    	
   	    	 }
    }
rs30.close();
st30.close();
con.close();
    
    

%>
</body>
</html>