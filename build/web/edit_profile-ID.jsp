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
                        <a href="index_(login).html">Intern House</a>
                    </div>
                </div>

                <div class="header_center">
                    <ul>
                        <li class="option"><a href="edit_profile-PD.jsp">Personal Details</a></li>
                        <li class="edu_menu">
                            <a href="edit_profile-ED(X).jsp">Educational Details <span style='font-size:15px;'>&#9660</span></a>
                            <ul class="menu_content">
                                <li><a href="edit_profile-ED(X).jsp">Class X</a></li>
                                <li><a href="edit_profile-ED(XII).jsp">Class XII</a></li>
                                <li><a href="edit_profile-ED(Diploma).jsp">Diploma</a></li>
                                <li><a href="edit_profile-ED(GD).jsp">Graduation</a></li>
                                <li><a href="edit_profile-ED(PGD).jsp">Post-Graduation</a></li>
                            </ul>
                        </li>
                        <li><a href="edit_profile-ID.jsp">Internship Details</a></li>
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
                            <li><a href="home.jsp">Home</a></li>
                            <li><a href="edit_profile-PD.jsp">Edit Profile</a></li>
                            <li><a href="applied_internship.jsp">Applied Internship</a></li>
                            <li><a href="apply_internship.jsp">Apply Internship</a></li>
                            <li><a href="upload_resume.jsp">Resume Upload</a></li>
                            <li><a href="change_email.jsp">Change Email-id</a></li>
                        </ul>
                    </div>
                </div>

                <div class="right_pane">
                    <form class="internship_detail_form" name="internship_detail_form" onsubmit="return internship_validation()" method="POST" action="internship.jsp">

                        <div class="internship_detail">
                            <p class="text1">Internship Details</p>             

                            <div class="internship">
                                <div class="id_form_profile">
                                    <p class="text">Profile :</p>
                                    <input class="profile" type="text" name="profile" placeholder="Ex: Sales & Marketing">
                                </div>

                                <div class="id_form_organization">
                                    <p class="text">Organization :</p>
                                    <input class="organization" type="text" name="organization" placeholder="Ex: TCS">
                                </div>

                                <div class="id_form_location">
                                    <p class="text">Location :</p>
                                    <input class="location" type="text" name="location" placeholder="Ex: Kolkata, Delhi">
                                </div>

                                <div class="id_form_start_date">
                                    <p class="text">Start Date :</p>
                                    <input class="start_date" type="date" name="start_date">
                                </div>

                                <div class="id_form_end_date">
                                    <p class="text">End Date :</p>
                                    <input class="end_date" type="date" name="end_date">
                                </div>
                            </div>


                        </div>

                        <div class="save_next">
                            <input class="save_next_button" type="submit" name="save_next_button" value="Save">
                        </div>

                    </form> 
                </div>

            </div>

            <div class="footer">

                <div class="footer_left">
                    <div class="footer_about_list">
                        <ul class="about_list">
                            <li class="top">Intern House</li>
                            <li><a href="about_us_(login).html">About us</a></li>
                            <li><a href="terms&condition_(login).html">Terms & Conditions</a></li>
                            <li><a href="contact_us_(login).html">Contact us</a></li>
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
