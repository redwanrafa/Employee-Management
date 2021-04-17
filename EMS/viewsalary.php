<?php
session_start();
    include("header.php");
include("dbconnection.php"); 
if(isset($_SESSION["emid"]))
{
$qresult=mysqli_query($con,"select * from salary where empid='$_SESSION[emid]'");
}
else
{
$qresult=mysqli_query($con,"select * from salary");
}
?>
    <div id="templatemo_content">
	
        <div id="templatemo_content_left">
            <div> 
              <p>View Salary<br />
              </p>
            </div>
   	      <table width="500" border="1">
       	      <tr>
       	        <th scope="col">Employee ID</th>
				<th scope="col">Employee Name</th>
       	        <th scope="col">Branch ID</th>
       	        <th scope="col">Month &amp; year</th>
                <th scope="col">Basic Salary</th>
                <th scope="col">Bonus Salary</th>
                <th scope="col">Provident Fund Deduction</th> 
				<th scope="col">House Rental Deduction</th>
                <th scope="col">Life Insurance Deduction</th>
                <th scope="col">Total Salary</th>
   	        </tr>
            		
			                      	<?php
			
            
			while($arrvarsal=mysqli_fetch_array($qresult))
			{
				$resultempa = mysqli_query($con,"SELECT * FROM employees where empid='$arrvarsal[empid]'");
				  $resarr = mysqli_fetch_array($resultempa);
				
			
				echo "        <tr>
              <td>&nbsp; $arrvarsal[empid]</td>
			  <td>&nbsp;$resarr[fname]	$resarr[lname]</td>
              <td>&nbsp;$arrvarsal[branchid]</td>
              <td>&nbsp;$arrvarsal[month]$arrvarsal[year]</td></td>
			  <td>&nbsp;$arrvarsal[basicsalary]</td>
			  <td>&nbsp;$arrvarsal[bonussalary]</td>
			  <td>&nbsp;$arrvarsal[pf]</td>
			  <td>&nbsp;$arrvarsal[hra]</td>
			  <td>&nbsp;$arrvarsal[lic]</td>
			  <td>&nbsp;$arrvarsal[totalsalary]</td>
            </tr>";
			}

        
               ?>
        		
		     	      <tr>
       	        <td>&nbsp;</td>
       	        <td>&nbsp;</td>
       	        <td>&nbsp;</td>
       	        <td>&nbsp;</td>
                <td>&nbsp;</td>
       	        <td>&nbsp;</td>
       	        <td>&nbsp;</td>
       	        <td>&nbsp;</td>
                <td>&nbsp;</td>
				<td>&nbsp;</td>
   	      </table>
   	      <p>&nbsp;</p>
<div class="rc_btn_02"></div>
            
            <div class="margin_bottom_40"></div>
            <div class="cleaner"></div>
        </div> <!-- end of content left -->        
        <div class="cleaner"></div>
        
    </div>
    
   <?php
   include("footer.php");
   ?>