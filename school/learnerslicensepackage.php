<?php
include("header.php");
if(!isset($_SESSION['employee_id']))
{
	echo "<script>window.location='index.php';</script>";
}
if(isset($_POST['submit']))
{
	if(isset($_GET['editid']))
	{
		//Update statement starts here
		$sql = "UPDATE package set branch_id='$_POST[branch_id]',vehicle_type='$_POST[vehicle_type]',package_title='$_POST[package_title]',package_cost='$_POST[package_cost]',total_km='$_POST[total_km]', package_type='Learners License',note='$_POST[note]',status='$_POST[status]',no_of_days='$_POST[no_of_days]' WHERE package_id='$_GET[editid]'";
		$qsql = mysqli_query($con,$sql);
		echo mysqli_error($con);
		if(mysqli_affected_rows($con) == 1)
		{
			echo "<script>alert('Learners License Package updated successfully...');</script>";
			echo "<script>window.location='viewlearnerslicensepackage.php';</script>";
		}
		//Update statement ends here
	}
	else
	{
		//INSERT statement starts here
		$sql = "INSERT INTO package(branch_id,vehicle_type,package_title,package_cost,total_km, package_type,note,status,no_of_days) values('$_POST[branch_id]','$_POST[vehicle_type]','$_POST[package_title]','$_POST[package_cost]','$_POST[total_km]','Learners License','$_POST[note]','$_POST[status]','$_POST[no_of_days]')";
		$qsql = mysqli_query($con,$sql);
		echo mysqli_error($con);
		if(mysqli_affected_rows($con) == 1)
		{
			echo "<script>alert('Learners License Package record inserted successfully...');</script>";
			echo "<script>window.location='viewlearnerslicensepackage.php';</script>";
		}
		//INSERT statement ends here
	}
}
if(isset($_GET['editid']))
{
	$sqledit = "SELECT * FROM package WHERE package_id='$_GET[editid]'";
	$qsqledit = mysqli_query($con,$sqledit);
	$rsedit = mysqli_fetch_array($qsqledit);
}
?>
<form method="post" action="" enctype="multipart/form-data" onsubmit="return validateform()"> 
	<!-- Start Services -->
	<div id="services" class="services-box">
		<div class="container">
			
			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-8">
					
<div class="item">
	<div class="serviceBox">
		<h3 class="title">Learners Package</h3>
		<p class="description">
		
		<div class="row">
	<div class="col-md-4" style="padding-top: 7px;"	>Branch </div>
	<div class="col-md-8">
	<select name="branch_id" id="branch_id" class="form-control">
	<option value="">Select Branch</option>
	<?php
	$sqlbranch = "SELECT * FROM branch where status='Active'";
	$qsqlbranch=  mysqli_query($con,$sqlbranch);
	while($rsbranch = mysqli_fetch_array($qsqlbranch))
	{
		if($rsbranch['branch_id'] == $rsedit['branch_id'])
		{
		echo "<option value='$rsbranch[branch_id]' selected>$rsbranch[branch_name]</option>";
		}
		else
		{
		echo "<option value='$rsbranch[branch_id]'>$rsbranch[branch_name]</option>";
		}
	}
	?>
	</select><span id="errbranch_id" class="errorclass" ></span>
	</div>
</div>
<br>

<div class="row">
	<div class="col-md-4" style="padding-top: 7px;"	>Vehicle type</div>
	<div class="col-md-8">
		<select name="vehicle_type" id="vehicle_type" class="form-control" >
			<option value="">Select Vehicle type</option>
			<?php
			foreach($arrvehtype as $val)
			{
				
				if($val == $rsedit['vehicle_type'])
				{
				echo "<option value='$val' selected>$val</option>";
				}
				else
				{
				echo "<option value='$val'>$val</option>";
				}
			}
			?>
		</select>
		<span id="errvehicle_type" class="errorclass" ></span>
	</div>
</div>
<br>

<div class="row">
	<div class="col-md-4" style="padding-top: 7px;"	>Package Title</div>
	<div class="col-md-8">

<input type="text" name="package_title" id="package_title" class="form-control" value="<?php echo $rsedit['package_title']; ?>"><span id="errpackage_title" class="errorclass" ></span>
	</div>
</div>
<br>

<div class="row">
	<div class="col-md-4" style="padding-top: 7px;"	>Learners License Package Cost</div>
	<div class="col-md-8">

<input type="text" name="package_cost" id="package_cost" class="form-control" value="<?php echo intval($rsedit['package_cost']); ?>"><span id="errpackage_cost" class="errorclass" ></span>
	</div>
</div>
<br>


<div class="row">
	<div class="col-md-4" style="padding-top: 7px;"	>Any Note or Description</div>
	<div class="col-md-8">
	<textarea name="note" id="note" class="form-control"><?php echo $rsedit['note']; ?></textarea>
	<span id="errnote" class="errorclass" ></span>
	</div>
</div>

<br>

<div class="row">
	<div class="col-md-4" style="padding-top: 7px;"	>Status</div>
	<div class="col-md-8">
		<select name="status" id="status" class="form-control" >
			<option value="">Select Status</option>
			<?php
			$arr = array("Active","Inactive");
			foreach($arr as $val)
			{
				
				if($val == $rsedit['status'])
				{
				echo "<option value='$val' selected>$val</option>";
				}
				else
				{
				echo "<option value='$val'>$val</option>";
				}
			}
			?>
		</select><span id="errstatus" class="errorclass" ></span>
	</div>
</div>
<hr>

		</p>
		<input type="submit" class="btn btn-warning" name="submit"  value="Submit" >
	</div>
</div>

				</div>
				<div class="col-lg-2"></div>
			</div>			
		</div>
	</div>
	<!-- End Services -->
</form>
<?php
include("footer.php");
?>
<script>
function validateform()
{
	$('.errorclass').html('');
	var i = 0;
	if(document.getElementById("branch_id").value=="")
	{
		document.getElementById("errbranch_id").innerHTML="Kindly select Branch id";
		i=1;
	}
	if(document.getElementById("vehicle_type").value=="")
	{
		document.getElementById("errvehicle_type").innerHTML="Kindly select Vehicle type";
		i=1;
	}
	if(document.getElementById("package_title").value=="")
	{
		document.getElementById("errpackage_title").innerHTML="Package title should not be empty..";
		i=1;
	}
	if(document.getElementById("package_cost").value=="")
	{
		document.getElementById("errpackage_cost").innerHTML="Package cost should not be empty..";
		i=1
	}
	if(document.getElementById("note").value=="")
	{
		document.getElementById("errnote").innerHTML="Note should not be empty..";
		i=1;
	}
	if(document.getElementById("status").value=="")
	{
		document.getElementById("errstatus").innerHTML="Kindly select status.";
		i=1;
	}
	if(i==0)
	{
		return true;
	}
	else
	{
		return false;
	}
}
</script>