<?php
include("header.php");
?>
	<!-- Start Banner -->
	<div class="ulockd-home-slider">
		<div class="container-fluid">
			<div class="row">
				<div class="pogoSlider" id="js-main-slider">
					<div class="pogoSlider-slide" data-transition="fade" data-duration="1500" style="background-image:url(images/slider11.jpg);">
						<div class="lbox-caption pogoSlider-slide-element">
							<div class="lbox-details">
								<h1>Welcome to DriveWise academy</h1>
							<p>Preparing You For The Highway Of Life </p>
								<a href="contact.php" class="btn">Contact Us</a>
							</div>
						</div>
					</div>
					<div class="pogoSlider-slide" data-transition="fade" data-duration="1500" style="background-image:url(images/slider2.jpg);">
						<div class="lbox-caption pogoSlider-slide-element">
							<div class="lbox-details">
								<h1>DriveWise academy</h1>
								<p>Preparing You For The Highway Of Life </p>
								<a href="contact.php" class="btn">Contact Us</a>
							</div>
						</div>
					</div>
					<div class="pogoSlider-slide" data-transition="fade" data-duration="1500" style="background-image:url(images/slader3.jpg);">
						<div class="lbox-caption pogoSlider-slide-element">
							<div class="lbox-details">
								<h1>Welcome to DriveWise academy</h1>
								<p> Preparing You For The Highway Of Life </p>
								<a href="contact.php" class="btn">Contact Us</a>
							</div>
						</div>
						
					</div>
				</div><!-- .pogoSlider -->
			</div>
		</div>
	</div>
	<!-- End Banner -->
	
	<!-- Start About us -->
	<div id="about" class="about-box">
		<div class="about-a1">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="title-box">
							<h2>About Us</h2>
							<p>About DriveWise academy ... </p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="row align-items-center about-main-info">
							<div class="col-lg-6 col-md-6 col-sm-12">
								<h2> Welcome to DriveWise academy.</h2>
								<p>The DriveWise academy Website deals with driving school features and driving license features. The system automates the manual procedure of applying for admission in vehicle driving schools. Customers can book their time slots according to their wish.  It notifies customers about next session via email so no need of manually informing them. Employees directly get their customer details and slots that becomes convenient for them to visit the student directly.<br>
								Customers can view nearest driving class centres, available timing slots and Driving class fee packages.<br>
								</p>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="about-m">
									<ul id="banner">
										<li>
											<img src="images/high five.jpg" alt="">
										</li>
										<li>
											<img src="images/high five3.jpg" alt="">
										</li>
										<li>
											<img src="images/high five2.jpg" alt="">
										</li>
									</ul>
								</div>
							</div>
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
				<div class="col-lg-12">
					<div class="title-box">
						<h2>Trainers</h2>
						<p>View Trainers Gallery</p>
					</div>
				</div>
			</div>
			<div class="row">
<?php
	$sql = "SELECT employee.*,branch.branch_name from employee LEFT JOIN branch ON employee.branch_id=branch.branch_id WHERE employee.employee_type='Employee' LIMIT 8";
	$qsql = mysqli_query($con,$sql);
	while($rsemployee = mysqli_fetch_array($qsql))
	{
		if(file_exists("imgemployee/".$rsemployee['profile_img']))
		{
			if($rsemployee['profile_img'] != "")
			{
?>			
				<div class="col-lg-3 col-md-6 col-sm-12">
					<div class="blog-inner">
						<div class="blog-img">
							<img class="img-fluid" src="<?php echo "imgemployee/".$rsemployee['profile_img']; ?>" alt="" style="height: 225px;" />
						</div>
						<div class="item-meta">
							<a href="#"><i class="fa fa-user"></i> <?php echo $rsemployee['employee_name']; ?> </a>
						</div>
						<h2><?php echo $rsemployee['branch_name']; ?></h2>
						<?php
						/*
						<a class="new-btn-d br-2" href="#">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
						*/
						?>
					</div>
				</div>
<?php
			}
		}
	}
?>				
				

			</div>
		</div>
	</div>
	<!-- End Blog -->
<?php
include("footer.php");
?>