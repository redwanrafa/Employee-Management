<?php
$logindt = date("Y-m-d");

if($_SESSION["emplogin"] == "SET")
{
?>

<div class="header_02"><a href="employeehome.php"><strong>Employee Home</strong></a></div> 
<div class="header_02"><strong><a href="viewsalary.php">Salary report</a></strong></div>
<div class="header_02"><strong><a href="logout.php">Logout</a></strong></div> 
<?php
}
?>