<?php
session_start();
include("header.php");
include("dbconnection.php");
$result = mysqli_query($con,"SELECT * FROM branch");
$resultemp = mysqli_query($con,"SELECT * FROM employees where empid!='100'");
$resultattendence = mysqli_query($con,"SELECT * FROM attendance");
if(isset($_POST["submit"]))
{
$resultatt = mysqli_query($con,"SELECT * FROM attendance where empid='$_POST[employeename]'");
}
if(isset($_POST["submit2"]))
{
	$resulta = mysqli_query($con,"select * from branch where branchid='$_POST[branchid]' ");
		$resultb = mysqli_query($con,"select * from employees where branchid='$_POST[branchid]'");
}
else
{
	$resulta = mysqli_query($con,"select * from branch");
}

?>
<div id="templatemo_content">
    
    <div id="templatemo_content_left">
        	<div class="header_02">Employees Attendance report</div>
       	  <form action="" method="post" enctype="multipart/form-data" name="form1" id="form1">

          <table width="409" border="1">
            <tr>
                <th width="181" scope="row"><label for="branchname2">Branch Name</label>                </th>
                <td width="212"><select name="branchid" id="branchid">
          
              <option></option>
              <?php
              while($row = mysqli_fetch_array($result))
  {
echo "<option value='". $row['branchid'] . "'>" . $row['branchname']. "</option>";
  }
?>
      </select><input type="submit" name="submit2" id="submit2" value="Load Employees" /></td>
              </tr>
              <tr>
                <th scope="row"><label for="employeename">Employee Name</label>                </th>
                <td><select name="employeename" id="employeename">
                   <?php
              while($row = mysqli_fetch_array($resultb))
  {
		echo "<option value='". $row['empid'] . "'>" . $row['fname']. " ". $row['lname']  ."</option>";
  }
?>
                </select></td>
              </tr>
              <tr>
                <th scope="row">&nbsp;</th>
                <td><input type="submit" name="submit" id="submit" value="Submit" /></td>
              </tr>
            </table>
       <br />            
            <table width="614" border="1">
              <tr>
                <th width="108" scope="row"><strong>Employee ID</strong></th>
                <th width="181"><strong> Employe Name</strong></th>
                <th width="155"><strong>Login Time</strong></th>
                <th width="142"><strong>Logout Time</strong></th>
                <th width="142">&nbsp;Working hours</th>
              </tr>
              <?php
			  if(isset($_POST["submit"]))
			  {while($rwarray = mysqli_fetch_array($resultatt))
			  {
				  $resultempa = mysqli_query($con,"SELECT * FROM employees where empid='$rwarray[empid]'");
				  $resarr = mysqli_fetch_array($resultempa);
			
			$resulatt = mysqli_query($con,"SELECT TIMEDIFF(  '$rwarray[logout]',  '$rwarray[logintime]' )");
			  $resarra = mysqli_fetch_array($resulatt);
              echo "<tr>			
                <td>&nbsp;$rwarray[empid]</td>
                <td>&nbsp;$resarr[fname]	$resarr[lname]</td>
                <td>&nbsp;$rwarray[logintime]</td>
                <td>&nbsp;$rwarray[logout]</td>
				   <td>&nbsp;$resarra[0]</td>
              </tr>";
			  
			  }
			  }
			  else
			  {
				  while($rwarray = mysqli_fetch_array($resultattendence))
			  {
				  $resultempa = mysqli_query($con,"SELECT * FROM employees where empid='$rwarray[empid]'");
				  $resarr = mysqli_fetch_array($resultempa);
			
			$resulatt = mysqli_query($con,"SELECT TIMEDIFF(  '$rwarray[logout]',  '$rwarray[logintime]' )");
			  $resarra = mysqli_fetch_array($resulatt);
              echo "<tr>			
                <td>&nbsp;$rwarray[empid]</td>
                <td>&nbsp;$resarr[fname]	$resarr[lname]</td>
                <td>&nbsp;$rwarray[logintime]</td>
                <td>&nbsp;$rwarray[logout]</td>
				   <td>&nbsp;$resarra[0]</td>
              </tr>";
			  
			  }
			  }
			  ?>
            </table>
            <p>&nbsp;</p>
          </form>
          <p>&nbsp;</p>
      <div class="rc_btn_02"></div>
            
            <div class="margin_bottom_40"></div>
            <div class="cleaner"></div>
        </div> <!-- end of content left -->
        
        <div id="templatemo_content_right">
        
        	<div class="content_right_section">
            	
                <div class="header_02">Admin Menu</div> 
                
                          <?php
			 if($_SESSION["logintype"] = "Admin")
			 {
				include("adminsidebar.php");
			 }
			 else
			 {
				 include("empsidebar.php");
			 }
				?>
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