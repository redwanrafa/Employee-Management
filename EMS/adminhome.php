<?php
session_start();
include("header.php");

include("dbconnection.php"); 
	
?>
    <div id="templatemo_content">
   	
        <div id="templatemo_content_left">
        	<div class="header_02">Admin home</div>
       	  <p class="bi_para">Administrator Home Page</p>
       	  <p class="bi_para">&nbsp;Welcome <?php echo $_SESSION["names"]; ?></p>
      
      <div class="rc_btn_02"></div>
            
            <div class="margin_bottom_40"></div>
            <div class="cleaner"></div>
        </div> <!-- end of content left -->
        
        <div id="templatemo_content_right">
        
        	<div class="content_right_section">
            	
          <?php 
		  include("adminsidebar.php"); 
		  ?>
                <div class="news_section">
                  <div class="news_image"></div>
              </div>
                
              <div class="margin_bottom_20"></div>
                <div class="margin_bottom_20"></div>
                <div class="margin_bottom_20"></div>
        	</div>
        </div> <!-- end of content right -->
        
        <div class="cleaner"></div>
        
    </div>
   <?php
   include("footer.php");
   ?>