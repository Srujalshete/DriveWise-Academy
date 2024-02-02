<?php
include("header.php");
if(!isset($_SESSION['customer_id']))
{
	echo "<script>window.location='index.php';</script>";
}
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
							<h2 style="color: white;">	Select Package to Attend Exam </h2>
							<h4 style="color: white;">Make sure whether you completed all study material and ganed knowledge...</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End About us -->


	
	<!-- Start Services -->
	<div id="services" class="services-box">
		<div class="container">
			<div class="row">
<?php
$sqlpackage = "SELECT * FROM `package` where package_type='Learners License' GROUP BY vehicle_type ORDER BY vehicle_type asc";
$qsqlpackage = mysqli_query($con,$sqlpackage);
while($rspackage = mysqli_fetch_array($qsqlpackage))
{
	$sqllearnerpurchasedpackage = "SELECT * FROM `learners_license` WHERE customer_id='"  . $_SESSION['customer_id'] . "' AND vehicle_type='$rspackage[vehicle_type]'";
	$qsqllearnerpurchasedpackage = mysqli_query($con,$sqllearnerpurchasedpackage);
	if(mysqli_num_rows($qsqllearnerpurchasedpackage) >=1)
	{
			$sqlexaminationresultrec = "SELECT (SELECT count(*) FROM `examination` WHERE attend_date=examinationrec.attend_date AND customer_id=examinationrec.customer_id AND correctanswer=selectedanswer) totalmark FROM `examination` as examinationrec WHERE examinationrec.customer_id='" . $_SESSION['customer_id'] . "'  AND examinationrec.vehicle_type='" . $rspackage['vehicle_type'] . "' GROUP BY examinationrec.attend_date ORDER BY (SELECT count(*) FROM `examination` WHERE attend_date=examinationrec.attend_date AND customer_id=examinationrec.customer_id AND correctanswer=selectedanswer) DESC limit 1";
				$qsqlexaminationresultrec = mysqli_query($con,$sqlexaminationresultrec);
				$rsexaminationresultrec = mysqli_fetch_array($qsqlexaminationresultrec);
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
					<b>Vehicle Type:</b> <?php echo $rspackage['vehicle_type']; ?>
				</p>
				<?php
				if($rsexaminationresultrec['totalmark'] >= 20)
				{
				?>
				<b style='color: green;'>Congrats. you have completed your test.. Book for Driving class.</b><br>
				<a href="#" class="new-btn-d br-2">Attend Test</a>
				<?php
				}
				else
				{
				?>
				<a href="quizboard.php?vehicle_type=<?php echo $rspackage['vehicle_type']; ?>" class="new-btn-d br-2">Attend Test</a>
				<?php	
				}
				?>
			</div>
		</div>
	</div>
<?php
	}
}
?>
			</div>	

			
		</div>
	</div>
	<!-- End Services -->

<?php
include("footer.php");
?>