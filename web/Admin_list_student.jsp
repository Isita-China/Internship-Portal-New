<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="sheet.css">
        <script src="validation.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="header">

                <div class="header_left">
                    <div class="header_text">
                        <a href="index.html">Intern House</a>
                    </div>
                </div>

                <div class="header_center">
                    <ul>
                        <li><a href="Admin_list_student.jsp">List of Students</a></li>
                        <li><a href="Admin_list_employer.jsp">List of Employers</a></li>
                        <li><a href="Admin_list_internship.jsp">List of Internships</a></li>
                    </ul>
                </div>

                <div class="header_right">
                    <div class="box">
                        <div class="logout">
                            <a href="logout.jsp">Logout</a>
                        </div>
                    </div>
                </div>

            </div>

            <div class="display">
                <div class="report">
                    <p class="text">List of Students</p>
                    <table class="report_table" border="1" cellspacing="0" cellpadding="0">
                        <tr>
                            <th>Student User ID</th>
                            <th>Student Name</th>
                            <th>Student Email</th>
                            <th>Student Mobile No.</th>
                            <th>Gender</th>
                            <th>State</th>
                            <th>City</th>
                        </tr>
        <%
            Connection con = null;
            Statement stm = null;
            ResultSet rs = null;
            String admin_id = null;
            try 
            {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Internship_Portal?useSSL=false", "root", "root");
                admin_id = (String)session.getAttribute("admin_id");
                stm = con.createStatement();
                String sql = "select * from student,student_pd where student.std_email=student_pd.std_email";
                rs = stm.executeQuery(sql);

                while (rs.next())
                {
        %>
        
                        <tr>
                            <td><%=rs.getString("std_email")%></td>
                            <td><%=rs.getString("std_name")%></td>
                            <td><%=rs.getString("std_email")%></td>
                            <td><%=rs.getString("std_mob_no")%></td>
                            <td><%=rs.getString("std_gender")%></td>
                            <td><%=rs.getString("std_state")%></td>
                            <td><%=rs.getString("std_city")%></td>
                        </tr>
                        
        <%                        
                }
                
                rs.close();
                stm.close();
                con.close();
            }            
            catch(SQLException e)
            {
                out.print("Throw e" + e);
            }
        %>
        
                    </table>
                </div>
            </div>

            <!--Footer-->
            
            <%@include file="includes/footer.jsp"%>

        </div>
    </body>
</html>