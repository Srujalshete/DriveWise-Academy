<?php
include("header.php");
?>
	<!-- Start Banner -->
	<div class="ulockd-home-slider">
		<div class="container-fluid">
			<div class="row">
				<div class="pogoSlider" id="js-main-slider">
					<div class="pogoSlider-slide" data-transition="fade" data-duration="1500" style="background-image:url(images/slader3.jpg);">
						<div class="lbox-caption pogoSlider-slide-element">
							<div class="lbox-details">
								<h1>Welcome to DriveWise Academy</h1>
							<p>Preparing You For The Highway Of Life </p>
								<a href="contact.php" class="btn">Contact Us</a>
							</div>
						</div>
					</div>
					<div class="pogoSlider-slide" data-transition="fade" data-duration="1500" style="background-image:url(images/slider2.jpg);">
						<div class="lbox-caption pogoSlider-slide-element">
							<div class="lbox-details">
								<h1>DriveWise Academy</h1>
								<p>Preparing You For The Highway Of Life </p>
								<a href="contact.php" class="btn">Contact Us</a>
							</div>
						</div>
					</div>
					<div class="pogoSlider-slide" data-transition="fade" data-duration="1500" style="background-image:url(images/slider11.jpg);">
						<div class="lbox-caption pogoSlider-slide-element">
							<div class="lbox-details">
								<h1>Welcome to DriveWise Academy</h1>
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
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="row align-items-center about-main-info">
							<div class="col-lg-6 col-md-6 col-sm-12">
								<h2> Welcome to DriveWise Academy</h2>
								<p>The DG Driving School Website deals with driving school features . The system automates the manual procedure of applying for admission in vehicle driving schools. Learners can book their time slots according to their wish. Instrcutor directly get their Learners details and slots that becomes convenient for them to visit the student directly.<br><br>
								Learner can view nearest driving class centres, available timing slots and Driving class fee packages<br><br>
								
								</p>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-12">
<div class="about-m">
	<ul id="banner">
		<li>
			<img src="images/high five.jpg" alt="" >
		</li>
		<li>
			<img src="images/high five3.jpg" alt="" >
		</li>
		<li>
			<img src="images/high five2.jpg" alt="" >
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
	
	<!-- Start Services -->
	<div id="services" class="services-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="title-box">
						<h2>Services</h2>
						<p>We provide following services in our driving school.. </p>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-lg-12">
					<div class="owl-carousel owl-theme">
						<div class="item">
							<div class="serviceBox" style="height: 350px;">
								<div class="service-icon"><i class="fa fa-h-square" aria-hidden="true"></i></div>
								<h3 class="title">Apply for Driving School</h3>
								<p class="description">
									The system automates the manual procedure of applying for admission in vehicle driving schools.
								</p>
							</div>
						</div>
						
						<div class="item">
							<div class="serviceBox" style="height: 350px;">
								<div class="service-icon"><i class="fa fa-hospital-o" aria-hidden="true"></i></div>
								<h3 class="title">Easy Payments</h3>
								<p class="description">
									The system generates invoice amount after sending driving class.
								</p>
							</div>
						</div>
						<!-- <div class="item">
							<div class="serviceBox" style="height: 350px;">
								<div class="service-icon"><i class="fa fa-stethoscope" aria-hidden="true"></i></div>
								<h3 class="title">Online test</h3>
								<p class="description">
									In this feature customer can attend practice exam after the driving course. 
								</p>
							</div>
						</div> -->
						<!-- <div class="item">
							<div class="serviceBox" style="height: 350px;">
								<div class="service-icon"><i class="fa fa-wheelchair" aria-hidden="true"></i></div>
								<h3 class="title">Daily Attendance</h3>
								<p class="description">
									In the attendance module admin can submit their customer’s attendance records.
								</p>
							</div>
						</div> -->
						<div class="item">
							<div class="serviceBox"  style="height: 350px;">
								<div class="service-icon"><i class="fa fa-thumbs-up" aria-hidden="true"></i></div>
								<h3 class="title">Customer Friendly</h3>
								<p class="description">
									Customers can choose the vehicle types for training, timing schedule,
fee packages, and guide details.
								</p>
							</div>
						</div>
						<!-- <div class="item"> 
							<div class="serviceBox"  style="height: 350px;">
								<div class="service-icon"><i class="fa fa-envelope" aria-hidden="true"></i></div>
								<h3 class="title">Email notification</h3>
								<p class="description">
									Through email customer can get the receipt.. In the billing account panel it displays
paid amount and pending amount.
								</p>
							</div>
						</div> -->
						<div class="item">
							<div class="serviceBox"  style="height: 350px;">
								<div class="service-icon"><i class="fa fa-calendar" aria-hidden="true"></i></div>
								<h3 class="title">Online Booking</h3>
								<p class="description">
									Customers can book their time slots according to their wish by selecting fee packages, and guide details. 
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>			
		</div>
	</div>
	<!-- End Services -->

	<!-- Start Gallery -->
	<div id="gallery" class="gallery-box">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="title-box">
						<h2>Our Learners</h2>
						<p>New Registered Learners</p>
					</div>
				</div>
			</div>
			
			<div class="popup-gallery row clearfix">
<?php
$sqlcustomer = "SELECT * FROM customer ORDER BY customer_id DESC limit 8";
$qsqlcustomer = mysqli_query($con,$sqlcustomer);
while($rscustomer = mysqli_fetch_array($qsqlcustomer))
{
	if(file_exists("imgcustprofile/".$rscustomer['profile_img']))
	{
		if($rscustomer['profile_img'] != "")
		{
?>
	<div class="col-md-3 col-sm-6">
		<div class="box-gallery">
			<img src="imgcustprofile/<?php echo $rscustomer['profile_img']; ?>" alt="" style="height: 280px;">
			<div class="box-content">	
				<h3 class="title"><?php echo $rscustomer['customer_name']; ?></h3>
			</div>
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
	<!-- End Gallery -->
	
	
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
	$sql = "SELECT employee.*,branch.branch_name from employee LEFT JOIN branch ON employee.branch_id=branch.branch_id WHERE employee.employee_type='Employee' LIMIT 9";
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
	
	<!-- Start Contact -->
	<div id="contact" class="contact-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="title-box">
						<h2>Contact us</h2>
					</div>
				</div>
			</div>
			<div class="row">
	
				<div class="col-lg-12 col-xs-12">
					<div class="left-contact">
						<div class="media cont-line">
							<div class="media-left icon-b">
								<i class="fa fa-location-arrow" aria-hidden="true"></i>
							</div>
							<div class="media-body dit-right">
								<h4>Address</h4>
								DriveWise Academy<br>
Vadgaon Budruk ,<br> Pune 411041
							</div>
						</div>
						<div class="media cont-line">
							<div class="media-left icon-b">
								<i class="fa fa-envelope" aria-hidden="true"></i>
							</div>
							<div class="media-body dit-right">
								<h4>Email</h4>
								<a href="#">driveWiseacademy@gmail.com</a><br>
								<a href="#">contactdriveWiseacademy@gmail.com</a>
							</div>
						</div>
						<div class="media cont-line">
							<div class="media-left icon-b">
								<i class="fa fa-volume-control-phone" aria-hidden="true"></i>
							</div>
							<div class="media-body dit-right">
								<h4>Phone Number</h4>
								<a href="#">7558358990</a><br>8459566659						</div>
						</div>
					</div>
				</div>
				
				
			</div>
		</div>
	</div>
	<!-- End Contact -->
<?php
include("footer.php");
?>