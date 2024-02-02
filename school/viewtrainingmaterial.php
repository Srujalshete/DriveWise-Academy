<?php
include("header.php");
if(!isset($_SESSION['employee_id']))
{
	echo "<script>window.location='index.php';</script>";
}
if(isset($_GET['delid']))
{
	$sql = "DELETE FROM training_material where training_material_id='$_GET[delid]'";
	$qsql = mysqli_query($con,$sql);
	echo mysqli_error($con);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>alert('Traning Material record deleted successfully..');</script>";
		echo "<script>window.location='viewtrainingmaterial.php';</script>";
	}
}
?>

	<!-- Start Blog -->
	<div id="blog" class="blog-box">
		<div class="container">

			<div class="row">
			
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="blog-inner">
						<div class="item-meta">
							<a href="#"><i class="fa fa-eye"></i> <b>VIEW Training Materials</b> <i class="fa fa-eye"></i></a>
						</div>
						<br>
<form method="get" action="">
	<div class="row">
		<div class="col-md-4" style="padding-top: 7px;"	><b>Select Vehicle type to Filter records:</b></div>
		<div class="col-md-6">
			<select name="vehicle_type" id="vehicle_type" class="form-control" >
				<option value="">All Records</option>
				<?php
				foreach($arrvehtype as $val)
				{				
					if($val == $_GET['vehicle_type'])
					{
					echo "<option value='$val' selected>$val</option>";
					}
					else
					{
					echo "<option value='$val'>$val</option>";
					}
				}
				?>
			</select><span id="errvehicle_type" class="errorclass" ></span>
		</div>
		<div class="col-md-2" style="padding-top: 7px;"	><b><button type="submit" class="btn btn-info">Filter</button></b></div>
	</div>
</form>

						<hr>
						<p>
						
<TABLE id="datatable" class="table table-striped table-bordered">
	<thead>
		<tr>
			<th>Vehicle Type</th>
			<th>Title</th>
			<th>Document</th>
			<th>View More</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody>
	<?php
	$sql = "SELECT * FROM training_material WHERE training_material_status!='Deleted'";
	if(isset($_GET['vehicle_type']) && $_GET['vehicle_type'] != "")
	{
		$sql .=  " and  vehicle_type='" . $_GET['vehicle_type'] . "'";
	}
	$qsql = mysqli_query($con,$sql);
	while($rs = mysqli_fetch_array($qsql))
	{
		echo "<tr>

			<td style='width: 70px;'>$rs[vehicle_type]</td>
			<td style='width: 70px;'>$rs[trainng_material_title]</td>
			<td style='width: 70px;'>";			
			if(file_exists("doctrainingmaterial/".$rs['training_material_file']))
			{
				echo  "<a class='btn btn-success' href='doctrainingmaterial/".$rs['training_material_file'] ."' download >Download</a>";
			}
		echo "</td>
			<td style='width: 100px;'><a  href='displaytrainingmaterial.php?viewid=$rs[0]' target='_blank' class='btn btn-primary' style='width: 100px;'>View</a>			
			</td>
			<td style='width: 100px;'><a  href='trainingmaterial.php?editid=$rs[0]' class='btn btn-info' style='width: 100px;'>Edit</a>
			<a href='viewtrainingmaterial.php?delid=$rs[0]' class='btn btn-danger'
			onclick='return confirm2delete()' style='width: 100px;'>Delete</a>
			
			</td>
		</tr>";
	}
	?>

	</tbody>
</TABLE>						
						
						</p> 
					</div>
				</div>
				
				
			</div>
		</div>
	</div>
	<!-- End Blog -->
	
<?php
include("footer.php");
?>
<script>
function confirm2delete()
{
	if(confirm("Are you sure want to delete this record?") == true)
	{
		return true;	
	}
	else
	{
		return false;
	}
}
</script>