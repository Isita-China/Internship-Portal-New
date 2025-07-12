<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="sheet.css">
    </head>
    <body>
        <div class="container">
            <div class="header">

                <div class="header_left">
                    <div class="header_text">
                        <a href="index_(login).html">Intern House</a>
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
        
        <%    
            Connection con = null;
            Statement stm = null;
            ResultSet rs = null;
            String stu_mail=null;
            String nm=null;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Internship_Portal?useSSL=false","root","root");
                stu_mail=(String)session.getAttribute("stu_mail");
                stm = con.createStatement();
                String sql="select std_name from Student where std_email='"+stu_mail+"'";
                rs=stm.executeQuery(sql);
                
                if(rs.next())
                {
                    nm=rs.getString("std_name"); 
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
            
            <div class="display">
                
                <div class="left_pane">
                    <p class="msg"><%=nm%></p>
                    <div class="menu">
			<ul>
                            <li><a class="active" href="home.jsp">Home</a></li>
                            <li><a href="edit_profile-PD.jsp">Edit Profile</a></li>
                            <li><a href="applied_internship.jsp">Applied Internship</a></li>
                            <li><a href="apply_internship.jsp">Apply Internship</a></li>
                            <li><a href="upload_resume.jsp">Resume Upload</a></li>
                            <li><a href="change_email.jsp">Change Email-id</a></li>
			</ul>
                    </div>
                </div>
                
                <div class="right_pane">
                    <div class="display_top">
                        <form name="search_form" class="search_form" method="POST" action="search_stu.jsp">
                            <div class="search_logo">
                                <div class="search_image"></div>
                            </div>
                            <input class="search" type="search" name="search" placeholder="  Search by Internship..">
                            <input class="search_button" type="submit" name="search_button" value="Search">
                        </form>
                    </div>
                    
                    <div class="display_bottom">
                        <div class="welcome_msg">     
                            <p class="msg">Welcome, <%=nm%></p>
                        </div>
        
                        <div class="view_profile">
                            <input class="view_button" type="submit" name="view_button" value="View Profile" onclick="location.href='view_profile-PD.jsp'">
                        </div>
                    </div>
                </div>
                
            </div>

            <!--Footer-->
            
            <%@include file="includes/footer.jsp"%>

        </div>
    </body>
</html>
