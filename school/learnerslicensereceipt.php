<?php
include("header.php");
$sqlpayment = "SELECT * FROM payment WHERE payment_id='$_GET[insid]'";
$qsqlpayment = mysqli_query($con,$sqlpayment);
$rspayment = mysqli_fetch_array($qsqlpayment);
$paymenttype= json_decode($rspayment['payment_detail']);
$sqldriving_class = "SELECT learners_license.*,customer.customer_name,branch.branch_name,package.vehicle_type FROM learners_license LEFT JOIN customer on learners_license.customer_id=customer.customer_id LEFT JOIN branch ON branch.branch_id=learners_license.branch_id LEFT JOIN package ON package.package_id=learners_license.package_id WHERE learners_license.learnerlicense_id='$rspayment[llr_id]'";
$qsqldriving_class = mysqli_query($con,$sqldriving_class);
echo mysqli_error($con);
$rsdriving_class = mysqli_fetch_array($qsqldriving_class);
//driving class package starts here
$sqlpackage = "SELECT package.*,branch.* FROM package LEFT JOIN branch on package.branch_id=branch.branch_id WHERE package.package_id='$rsdriving_class[package_id]'";
$qsqlpackage = mysqli_query($con,$sqlpackage);
echo mysqli_error($con);
$rspackage = mysqli_fetch_array($qsqlpackage);
//driving class package ends here
?>
	<!-- Start Blog -->
	<div id="blog" class="blog-box">
		<div class="container">
		<div id="printableArea">
<div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12">
		<div class="blog-inner">
<div class="item-meta">
	<a href="#"> <b>Learners License Package Receipt</b> </a>
</div>
<p>
	<table  id="datatable" class="table table-bordered">
		<tr>
			<td style="text-align: left;">
				<img src="images/drivinglogo.png" >
			</td>
			<td style="text-align: right;">
				<?php
				echo $rspackage['branch_name'] . "<br>";
				echo $rspackage['branch_address']. "<br>";
				echo "<b>Ph. No. -</b> ".$rspackage['contact_no'];
				?>
			</td>
		</tr>
		<tr>
			<td style="width: 50%;text-align: left;">
			<b>- Customer -</b><br>
<?php
	$sqlcustomer ="SELECT * FROM customer where customer_id='$rsdriving_class[customer_id]'";
	$qsqlcustomer = mysqli_query($con,$sqlcustomer);
	$rscustomer = mysqli_fetch_array($qsqlcustomer);
	echo $rscustomer['customer_name'] . "<br>";
	echo $rscustomer['customer_address'] . "<br>";
	echo $rscustomer['cust_email'] . "<br>";
	echo "<b>Ph No.</b> " .$rscustomer['cust_mob'] . "<br>";
?>		
			</td>
			<td style="width: 50%;text-align: right;">
				<b>Bill Date:</b> <?php echo date("d-M-Y",strtotime($rspayment['payment_date'])); ?>
				<br><b>Bill no.</b>  <?php echo $rspayment['payment_id']; ?>
				<br><b>Payment Type. - </b> <?php echo $paymenttype->card_type; ?>
				<br><b>Total Amount. </b> R<?php echo $rsdriving_class['package_cost']; ?>
			</td>
		</tr>
	</table>
	<hr>
	<table class="table table-bordered">
		<tr style="background-color: #f8f9fa;">
			<th style="text-align: left;">Transaction details</th>
			<th style="text-align: right; width: 250px;">Cost</th>
		</tr>
		<tr>
			<td style="text-align: left;">
<?php
echo "<b>Vehicle Type : </b>";
if($rspackage['vehicle_type'] =="Both")
{
	echo "Code 8 & Code 10";
}
else
{
	echo $rspackage['vehicle_type'];
}
echo "<br>";
echo "<b>Package Title : </b>" . $rspackage['package_title'] . "<br>";
?>
			</td>
			<td style="text-align: right;">R<?php echo $rspayment['paid_amt']; ?></td>
		</tr>
		<tr>
			<th style="text-align: right;">Total Paid Amount -</th>
			<th style="text-align: right;">R<?php echo $rspayment['paid_amt']; ?></th>
		</tr>
	</table>
	<table class="table table-bordered">
		<tr>
			<th style="text-align: left;"><b>Payment Detail :- </b>
			<br><b>Payment Type - </b> <?php echo $paymenttype->card_type; ?>
			</th>
		</tr>
	</table>
	
</p>
		</div>
<hr>
<center><input type="button" name="btnprint" id="btnprint" class="btn btn-primary" value="Print" onclick="printDiv('printableArea')"></center>
	</div>
</div>
</div>
		</div>
	</div>
<?php
include("footer.php");
?>
<script>
function printDiv(divName) {
     var printContents = document.getElementById(divName).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
}
</script>