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
                        <a href="index_(login)_emp.html">Intern House</a>
                    </div>
                </div>

                <div class="header_center">

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

                <div class="left_pane">
                    <div class="menu">
                        <ul>
                            <li><a href="home_emp.jsp">Home</a></li>
                            <li><a href="employer_profile.jsp">Edit Profile</a></li>
                            <li><a href="post_internship.jsp">Post New Internship</a></li>
                            <li><a href="list_internship.jsp">List Posted Internship</a></li>
                            <li><a href="view_applicants_emp.jsp">View Applicants</a></li>
                            <li><a href="selected_applicants_emp.jsp">Selected Applicant</a></li>
                        </ul>
                    </div>
                </div>
                    
                <div class="right_pane">
                    <div class="list_applicants_detail">  
                        <p class="text">Selected Applicants</p>
                        <table class="list_applicants_table" border="1" cellspacing="0" cellpadding="0">
                            <tr>
                                <th>Internship profile</th>
                                <th>Applicants Email</th>
                                <th>Applicants Name</th>
                                <th>Applicants Mobile No.</th>
                                <th>Status</th>
                            </tr>
        <%
            Connection con = null;
            Statement stm = null;
            ResultSet rs = null;
            String emp_mail = null;
            String in_id[]=null;
            in_id= request.getParameterValues("inter");
            try 
            {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Internship_Portal?useSSL=false", "root", "root");
                emp_mail = (String)session.getAttribute("emp_mail");
                stm = con.createStatement();
                String sql = "select * from applicant where status ='selected' and com_email='"+emp_mail+"'";
                rs = stm.executeQuery(sql);
                while (rs.next())
                {          
        %>            
                            <tr>
                                <td><%=rs.getString("internship_profile")%></td>
                                <td><%=rs.getString("std_email")%></td>
                                <td><%=rs.getString("std_name")%></td>
                                <td><%=rs.getString("std_mob_no")%></td>
                                <td style="color:red;font-weight: bold;"><%=rs.getString("status")%></td>
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
                
            </div>

            <div class="footer">

                <div class="footer_left">
                    <div class="footer_about_list">
                        <ul class="about_list">
                            <li class="top">Intern House</li>
                            <li><a href="about_us_(login)_emp.html">About us</a></li>
                            <li><a href="terms&condition_(login).html">Terms & Conditions</a></li>
                            <li><a href="contact_us_(login)_emp.html">Contact us</a></li>
                        </ul>
                    </div>
                </div>

                <div class="footer_center">
                    <div class="footer_stream_list">
                        <ul class="stream_list">
                            <li class="top">Internship by Stream</li>
                            <li><a href="">Computer Science Internship</a></li>
                            <li><a href="">Marketing Internship</a></li>
                            <li><a href="">Finance Internship</a></li>
                        </ul>
                    </div>
                </div>

                <div class="footer_right">
                    <div class="footer_text">&copy; Copyright 2019 Intern House</div>
                </div>

            </div>

        </div>
    </body>
</html>
