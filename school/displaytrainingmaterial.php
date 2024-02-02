<?php
include("header.php");
if(!isset($_SESSION['employee_id']) && !isset($_SESSION['customer_id']))
{
	echo "<script>window.location='index.php';</script>";
}
$sqltraining_material = "SELECT * FROM training_material WHERE training_material_id='$_GET[viewid]'";
$qsqltraining_material = mysqli_query($con,$sqltraining_material);
$rstraining_material = mysqli_fetch_array($qsqltraining_material);
?>
	<!-- Start Blog -->
	<div id="blog" class="blog-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="title-box">
						<h2>
							<?php echo $rstraining_material['trainng_material_title'] ?><br>
							<b style='font-size: 22px;'>Course :- <?php echo $rstraining_material['vehicle_type']; ?></b>
						</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4">
						<img src="<?php 
									if(file_exists("doctrainingmaterial/".$rstraining_material['traning_material_banner']))
									{
										echo "doctrainingmaterial/" . $rstraining_material['traning_material_banner'];
									}
									else
									{
										echo "images/default-image.jpg";
									}
								?>" style="width: 100%;">
					</div>
					<div class="col-lg-8">
							<p><?php echo $rstraining_material['training_material_description']; ?></p>
							<p>
								<?php 
									if(file_exists("doctrainingmaterial/".$rstraining_material['training_material_file']))
									{
								?>
										<table class="table table-bordered">
											<tr>
												<th>Download Training Material:<br>
												<?php echo "<a class='btn btn-success' href='doctrainingmaterial/".$rstraining_material['training_material_file'] ."' download >Download</a>"; ?>
												</th>
											</tr>
										</table>
								<?php
									}
								?>
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