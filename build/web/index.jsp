<!--<!DOCTYPE html>-->
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link type="text/css" rel="stylesheet" href="sheet.css">
    </head>
    <body>
        <div class="container">
            <div class="header">

                <div class="header_left">
                    <div class="header_text">
                        <a href="index.jsp">Intern House</a>
                    </div>
                </div>

                <div class="header_center">

                </div>

                <div class="header_right">
                    <div class="log_reg">
                        <ul class="list_log_reg">
                            <li>
                                <a href="login.html">Login</a>
                            </li>	
                            <li class="reg">		
                                <a href="">Register</a>
                                <ul>
                                    <li>
                                        <a href="register_student.html">as a Student</a>
                                    </li>
                                    <li>
                                        <a href="register_employer.html">as a Employer</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>

            <div class="display">

                <div class="display_top">
                    <div class="text1">1000+ Internships. Find Better. Find Fast.</div>

                    <form name="search_form" class="search_form" method="POST" action="search.jsp">
                        <div class="search_logo">
                            <div class="search_image"></div>
                        </div>
                        <input class="search" type="search" name="search" placeholder="  Search by Internship..">
                        <input class="search_button" type="submit" name="search_button" value="Search">
                    </form>
                </div>

                <div class="display_bottom">
                    <div class="text2">Internships in popular cities</div>

                    <div class="city_logo">
                        <div class="kolkata_logo"><a href="">KOLKATA</a></div>
                        <div class="delhi_logo"><a href="">DELHI</a></div>
                        <div class="bangalore_logo"><a href="">BANGALORE</a></div>
                        <div class="mumbai_logo"><a href="">MUMBAI</a></div>
                        <div class="hyderabad_logo"><a href="">HYDERABAD</a></div>
                        <div class="chennai_logo"><a href="">CHENNAI</a></div>
                        <div class="international_logo"><a href="">INTERNATIONAL</a></div>
                    </div>

                    <div class="text2">Internships in popular categories</div>

                    <div class="category_logo">
                        <div class="engineering_logo"><a href="">ENGINEERING</a></div>
                        <div class="ngo_logo"><a href="">NGO</a></div>
                        <div class="mba_logo"><a href="">MBA</a></div>
                        <div class="design_logo"><a href="">DESIGN</a></div>
                        <div class="science_logo"><a href="">SCIENCE</a></div>
                        <div class="media_logo"><a href="">MEDIA</a></div>
                        <div class="humanities_logo"><a href="">HUMANITIES</a></div>
                    </div>
                </div>

            </div>

            <!--Footer-->
            
            <%@include file="includes/footer.jsp"%>

        </div>
    </body>
</html>