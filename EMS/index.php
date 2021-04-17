<?php
session_start();
if(isset($_GET["logintype"]))
{
	if($_SESSION["logintype"] == "Admin")
	{
		header("Location: adminhome.php");
	}

	if($_SESSION["logintype"] == "Employee")
	{
		header("Location: employeehome.php");
	}
}
$mp=1;
    include("header.php");
	include("dbconnection.php");
	include("slider.php");
	
	
	?>

    
        
        <div class="cleaner"></div>
        
    </div>
   <?php
   include("footer.php");
   ?>