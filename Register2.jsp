<%@page import="java.sql.*" %>
<%
   
    String s1=request.getParameter("tx1");
     String s2=request.getParameter("tx2");
      String s3=request.getParameter("tx3");
      
        try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phonebook? useSSL = false","root","root");
                Statement st=con.createStatement();
               st.executeUpdate("insert into user(name,email,password) values('"+s1+"','"+s2+"','"+s3+"')");
               %>
               <html>
                   <script type="text/javascript">
                alert("Registration Successful");
               location='Register.jsp';
                </script>
               </html>
               <%
           
              con.close();
                  }
            catch(Exception e1){
                out.println(e1);
            }
    
    %>