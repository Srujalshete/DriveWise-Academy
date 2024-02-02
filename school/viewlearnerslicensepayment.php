<?php
include("header.php");
if(isset($_GET['delid']))
{
	$sql = "DELETE FROM driving_class where class_id='$_GET[delid]'";
	$qsql = mysqli_query($con,$sql);
	echo mysqli_error($con);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>alert('Driving Class record deleted successfully..');</script>";
		echo "<script>window.location='viewdrivingclass.php';</script>";
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
	<a href="#"><i class="fa fa-eye"></i> <b>VIEW LEARNERS LICENSE PAYMENT REPORT</b> <i class="fa fa-eye"></i></a>
</div>
						<p>
						
<TABLE id="datatable" class="table table-striped table-bordered">
	<thead>
		<tr>
			<th>Customer</th>
			<th>Branch</th>
			<th>Vehicle Type</th>
			<th>Package detail</th>
			<th>Payment Date</th>
			<th>Paid Amount </th>
			<th>Payment Type</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody>
	<?php
	$sql = "SELECT * FROM `payment` LEFT JOIN learners_license ON learners_license.learnerlicense_id=payment.llr_id LEFT JOIN customer ON customer.customer_id=learners_license.customer_id LEFT JOIN branch ON branch.branch_id=learners_license.branch_id LEFT JOIN package ON package.package_id=learners_license.package_id WHERE payment.status='Active' ";
	if(isset($_SESSION['customer_id']))
	{
	$sql = $sql . " AND learners_license.customer_id='" . $_SESSION['customer_id'] . "'";
	}
	$qsql = mysqli_query($con,$sql);
	echo mysqli_error($con);
	while($rs = mysqli_fetch_array($qsql))
	{
		$objpayment_detail = json_decode($rs['payment_detail']);
		echo "<tr>
			<td class='text-left'><b>" . ucfirst($rs['customer_name']) ."</b><br>";
		echo $rs['customer_address']."<br>";
		echo "<b>Email - </b>" . $rs['cust_email']."<br>";
		echo "<b>Mob No.</b>" . $rs['cust_mob'];
		echo "</td>
			<td>$rs[branch_name]</td>
			<td>$rs[vehicle_type]</td>
			<td>$rs[package_title]</td>
			<td>  " . date("d-M-Y",strtotime($rs['payment_date'])) . "</td>
			<td>R$rs[package_cost]</td>
			<td>" . $objpayment_detail->card_type . "</td><td>";
			echo "<a href='learnerslicensereceipt.php?insid=$rs[0]' target='_blank' class='btn btn-danger'  style='width: 150px;'>Payment<br>Receipt</a>";	
			echo "</td></tr>";
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