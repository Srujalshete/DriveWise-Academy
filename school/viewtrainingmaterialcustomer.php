<?php
include("header.php");
if(!isset($_SESSION['customer_id']))
{
	echo "<script>window.location='index.php';</script>";
}
?>
	<!-- Start About us -->
	<div id="about" class="about-box mb-0"  style="background-color: brown; ">
		<div class="about-a1">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="title-box">
							<h2 style="color: white;">	<?php echo $_GET['vehicle_type'] ?> Training Materials </h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End About us -->

	<!-- Start Blog -->
	<div id="blog" class="blog-box">
		<div class="container">

			<div class="row">
			
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="blog-inner">
						<div class="item-meta">
							<a href="#"><i class="fa fa-eye"></i> <b>View <?php echo $_GET['vehicle_type'] ?> Training Materials</b> <i class="fa fa-eye"></i></a>
						</div>

						<p>
						
<TABLE id="datatable" class="table table-striped table-bordered">
	<thead>
		<tr>
			<th>SL No.</th>
			<th>Vehicle Type</th>
			<th>Title</th>
			<th>Document</th>
			<th>View</th>
		</tr>
	</thead>
	<tbody>
	<?php
	$slno = 1;
	$sql = "SELECT * FROM training_material WHERE training_material_status!='Deleted'";
	if(isset($_GET['vehicle_type']) && $_GET['vehicle_type'] != "")
	{
		$sql .=  " and  vehicle_type='" . $_GET['vehicle_type'] . "'";
	}
	$qsql = mysqli_query($con,$sql);
	while($rs = mysqli_fetch_array($qsql))
	{
		echo "<tr>

			<td style='width: 70px;'>$slno</td>
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
		</tr>";
		$slno++;
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