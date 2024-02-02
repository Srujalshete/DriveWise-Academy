<?php
include("header.php");
$sqlbranch = "SELECT * FROM branch where branch_id='$_GET[branch_id]'";
$qsqlbranch = mysqli_query($con,$sqlbranch);
$rsbranch = mysqli_fetch_array($qsqlbranch);
?>
	<!-- Start About us -->
	<div id="about" class="about-box" style="background-color: brown; ">
		<div class="about-a1">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="title-box">
							<h2 style="color: white;"> Training Packages </h2>
						</div>
<?php
if(isset($_GET['branch_id']))
{
?>
<?php

?>
<div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12">
		<div class="blog-inner">
			<div class="item-meta">
				<a href="#"><i class="fa fa-address-card"></i> <b><?php echo $rsbranch['branch_name']; ?></b> </a>
			</div>
			<b><?php echo $rsbranch['branch_address']; ?></b><br>
			<b>Contact No. <?php echo $rsbranch['contact_no']; ?></b>
		</div>
	</div>
</div>
<?php
}
else
{
?>
			<div class="row">
				<div class="col-lg-12">
					<div class="title-box">
						<h2>Select Branch</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<?php
				$sqlbranch = "SELECT * FROM branch where status='Active'";
				$qsqlbranch = mysqli_query($con,$sqlbranch);
				while($rsbranch = mysqli_fetch_array($qsqlbranch))
				{
				?>
				<div class="col-lg-4 col-md-6 col-sm-12">
					<div class="blog-inner">
						<div class="item-meta">
							<a href="#"><i class="fa fa-address-card"></i> <b><?php echo $rsbranch['branch_name']; ?></b> </a>
						</div>
						<b><?php echo $rsbranch['branch_address']; ?></b><br>
						<b>Contact No. <?php echo $rsbranch['contact_no']; ?></b><br>
						<a class="new-btn-d br-2" href="customeraccount.php?branch_id=<?php echo $rsbranch['branch_id']; ?>">Select Branch <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
					</div>
				</div>
				<?php
				}
				?>
			</div>
<?php
}
?>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End About us -->


	<hr>
	
	<!-- Start Services -->
	<div id="services" class="services-box">
		<div class="container">
			<div class="row">
<?php
$sqlpackage = "SELECT * FROM `package` where package_type='Learners License' AND branch_id='" . $_GET['branch_id'] . "'";
$qsqlpackage = mysqli_query($con,$sqlpackage);
while($rspackage = mysqli_fetch_array($qsqlpackage))
{
?>
<div class="col-lg-6">
	<div class="item">
		<div class="serviceBox">
			<div class="service-icon">
			<?php
			if($rspackage['vehicle_type'] == "Code 8")
			{
			?>
			<i class="fa fa-motorcycle" aria-hidden="true"></i>
			<?php
			}
			if($rspackage['vehicle_type']== "Code 10")
			{
			?>
			<i class="fa fa-car" aria-hidden="true"></i>
			<?php
			}
			if($rspackage['vehicle_type']== "Both")
			{
			?>
			<i class="fa fa-motorcycle" aria-hidden="true"></i><i class="fa fa-car" aria-hidden="true"></i>
			<?php
			}
			?>
			</div>
			<h3 class="title"> <?php echo $rspackage['package_title']; ?></h3>
			<p class="description">			
				<b>Vehicle Type:</b> <?php echo $rspackage['vehicle_type']; ?><br>
				
				<?php echo $rspackage['note']; ?>
				<hr>
				<b>Cost - <?php echo $currency; ?><?php echo $rspackage['package_cost']; ?></b>
				
			</p>
			<a href="learnerslicenseapply.php?branch_id=<?php echo $_GET['branch_id']; ?>&package_id=<?php echo $rspackage[0]; ?>" class="new-btn-d br-2">Click here to Buy</a>
		</div>
	</div>
</div>
<?php
}
?>
			</div>	

			
		</div>
	</div>
	<!-- End Services -->

<?php
include("footer.php");
?>