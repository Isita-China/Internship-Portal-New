<!--Footer-->

<div class="footer">

    <div class="footer_left">
        <div class="footer_about_list">
            <ul class="about_list">
                <li class="top">Intern House</li>
                <li><a href="about_us.html">About us</a></li>
                <li><a href="terms&condition.html">Terms & Conditions</a></li>
                <li><a href="contact_us.html">Contact us</a></li>
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
        
        <%
            //  Check if there is an existing session
            
            if (((String)session.getAttribute("stu_mail")== null))
            {
        %>
                <div class="admin">
                    <p class="admin_text">**<a href="Admin_login.html">Admin Login</a></p>
                </div>
        <%
            }
        %>  
        
    </div>

    <div class="footer_right">
        <div class="footer_text">&copy; Copyright 
            <script>
                var dt = new Date();
                document.write(dt.getFullYear());
            </script> 
            Intern House
        </div>
    </div>
    
</div>