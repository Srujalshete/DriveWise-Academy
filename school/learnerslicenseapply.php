<?php
include("header.php");
if(!isset($_SESSION['customer_id']))
{
	echo "<script>window.location='index.php';</script>";
}
if(isset($_POST['submit']))
{
	//package_id totpay_amt card_type card_holder card_number cvv_number expiry_date submit
	//Insert statement starts here
	 $sqlpackage = "SELECT package.*,branch.branch_name FROM package LEFT JOIN branch on package.branch_id=branch.branch_id WHERE package.package_type='Learners License' AND package.package_id='$_GET[package_id]'";
	$qsqlpackage = mysqli_query($con,$sqlpackage);
	$rspackage = mysqli_fetch_array($qsqlpackage);
	$sql = "INSERT INTO learners_license(customer_id,reg_date,package_id, branch_id,vehicle_type,package_cost,note,status) values('$_SESSION[customer_id]','" . date("Y-m-d") . "','$_GET[package_id]','$_GET[branch_id]','$rspackage[vehicle_type]','$rspackage[package_cost]','','Active')";
	$qsql = mysqli_query($con,$sql);
	echo mysqli_error($con);
	if(mysqli_affected_rows($con) == 1)
	{
		$insid = mysqli_insert_id($con);
		$sql = "INSERT INTO payment(dl_id,class_id,llr_id,payment_date,paid_amt,payment_detail,status) values('0','0','$insid','$dt','$_POST[totpay_amt]','" . json_encode($_POST) .  "','Active')";
		$qsql = mysqli_query($con,$sql);
		$inspaymentid= mysqli_insert_id($con);
		//###############################################################################################
		//##################
		$sqlcustomer ="SELECT * FROM customer where customer_id='$_SESSION[customer_id]'";
		$qsqlcustomer = mysqli_query($con,$sqlcustomer);
		echo mysqli_error($con);
		$rscustomer = mysqli_fetch_array($qsqlcustomer);
		//##################
		$sqlbranch = "SELECT * FROM branch where branch_id='$_GET[branch_id]'";
		$qsqlbranch =  mysqli_query($con,$sqlbranch);
		$rsbranch = mysqli_fetch_array($qsqlbranch);
		//##################
		$sqlpayment = "SELECT * FROM payment where payment_id='$inspaymentid'";
		$qsqlpayment =  mysqli_query($con,$sqlpayment);
		$rspayment = mysqli_fetch_array($qsqlpayment);
		$payment = json_decode($rspayment['payment_detail']);
		//##################
		//PHP Mailer Starts here
		$subject = "Learners Licese Package - 2K Driving School";
		$message = "Hello $rscustomer[customer_name],<br>Thanks for the Payment.. Here is the detail..<br> <br>
		<table style='border: 1px solid black; border-collapse: collapse;width: 100%;'>
		  <tr style='border: 1px solid black; border-collapse: collapse;'>
			<th style='border: 1px solid black; border-collapse: collapse;'>Branch</th>
			<td style='border: 1px solid black; border-collapse: collapse;'>
			<b>$rscustomer[customer_name]</b>,<br>
			$rscustomer[customer_address],<br>
			$rscustomer[cust_email],<br>
			Ph. No. $rscustomer[cust_mob]
			</td> 
		  </tr>		  
		  <tr style='border: 1px solid black; border-collapse: collapse;'>
			<th style='border: 1px solid black; border-collapse: collapse;'>Branch</th>
			<td style='border: 1px solid black; border-collapse: collapse;'>
			$rsbranch[branch_name],<br>
			$rsbranch[branch_address],<br>
			Ph. No. $rsbranch[contact_no]
			</td> 
		  </tr>
		  <tr style='border: 1px solid black; border-collapse: collapse;'>
			<th style='border: 1px solid black; border-collapse: collapse;'>Package Detail</th>
			<td style='border: 1px solid black; border-collapse: collapse;'>
			<b>Vehicle Type :</b> $rspackage[vehicle_type]<br>
			<b>Package Title :</b> $rspackage[package_title]<br>
			</td>
		  </tr>
		  <tr style='border: 1px solid black; border-collapse: collapse;'>
			<th style='border: 1px solid black; border-collapse: collapse;'>Total Cost</th>
			<td style='border: 1px solid black; border-collapse: collapse;'>$currency$rspackage[package_cost]<br>
			</td>
		  </tr>
		</table>";
		$message = $message . "
		<br><br><hr>
		<h4>Payment Receipt</h4>
		<br>
	<table  style='border: 1px solid black; border-collapse: collapse;width: 100%;'>
		<tr style='border: 1px solid black; border-collapse: collapse;'>
			<td style='border: 1px solid black; border-collapse: collapse;'>
				<b>Bill Date:</b> " . date("d-M-Y",strtotime($rspayment['payment_date'])) . "
				<br><b>Bill no.</b> " . $rspayment['payment_id'] . "
			</td>
			<td style='border: 1px solid black; border-collapse: collapse;'>
				<b>Payment Type. - </b> " . $payment->card_type . "
				<br><b>Total Amount. </b> $currency" . $rspayment['paid_amt']. "</td></tr></table>	<hr>";
	$message = $message. "
	<table  style='border: 1px solid black; border-collapse: collapse;width: 100%;'>
		<tr style='border: 1px solid black; border-collapse: collapse;'>
			<th style='border: 1px solid black; border-collapse: collapse;'>Transaction details</th>
			<th style='border: 1px solid black; border-collapse: collapse;width: 250px;'>Cost</th>
		</tr>
		<tr>
			<td  style='border: 1px solid black; border-collapse: collapse;'>";
		$message = $message. "<b>Vehicle Type : </b>";
		if($rspackage['vehicle_type'] =="Both")
		{
			$message = $message. " Code 8 & Code 10";
		}
		else
		{
			$message = $message. " ". $rspackage['vehicle_type'];
		}
		$message = $message . "<br>";
		$message = $message . "<b>Package Title : </b>" . $rspackage['package_title'] . "<br>";

		$message = $message . "</td>
			<td  style='border: 1px solid black; border-collapse: collapse;'>$currency $rspayment[paid_amt]</td>
		</tr>
		<tr>
			<th  style='border: 1px solid black; border-collapse: collapse;'>Total Paid Amount -</th>
			<th  style='border: 1px solid black; border-collapse: collapse;'>$currency $rspayment[paid_amt]</th>
		</tr>
	</table>
	<table style='border: 1px solid black; border-collapse: collapse;width: 100%;'>
		<tr>
			<th  style='border: 1px solid black; border-collapse: collapse;'><b>Payment Detail :- </b>
			<br><b>Payment Type - </b>" . $payment->card_type . "
			</th>
		</tr>
	</table>";
		include("phpmailer.php");
		sendmail($rscustomer['cust_email'], $rscustomer['customer_name'] , $subject, $message,'');
		//PHP Mailer Ends here
		echo "<script>alert('Payment done for Learners License Material...');</script>";
		echo "<script>window.location='learnerslicensereceipt.php?insid=$inspaymentid';</script>";
	}
	//Insert statement ends here
}
if(isset($_GET['editid']))
{
	$sqledit = "SELECT * FROM driving_class WHERE package_id='$_GET[editid]'";
	$qsqledit = mysqli_query($con,$sqledit);
	echo mysqli_error($con);
	$rsedit = mysqli_fetch_array($qsqledit);
}
$sql_learners_license_package = "SELECT * FROM package WHERE package_id='$_GET[package_id]'";
$qsql_learners_license_package = mysqli_query($con,$sql_learners_license_package);
$rs_learners_license_package = mysqli_fetch_array($qsql_learners_license_package);
?>
	<!-- Start About us -->
	<div id="about" class="about-box  pb-4" style="background-color: brown; ">
		<div class="about-a1">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="title-box">
<h2 style="color: white;">Learners License Package - Payment Panel</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End About us -->
			<div class="row">
				<div class="col-lg-12">
					<div class="">
<?php
$sqlpackage = "SELECT * FROM `package` where package_type='Learners License' AND branch_id='$_GET[branch_id]' AND package_id='$_GET[package_id]'";
$qsqlpackage = mysqli_query($con,$sqlpackage);
$rspackage = mysqli_fetch_array($qsqlpackage);
?>
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
		<h3 class="title"><?php echo $rspackage['package_title']; ?></h3>
		<p class="description">			
			<b>Vehile Type:</b> <?php echo $rspackage['vehicle_type']; ?> <br>
			<?php echo $rspackage['note']; ?>
			<hr>
			<b>Cost - R<?php echo $rspackage['package_cost']; ?></b>
			
		</p>
	</div>
</div>
					</div>
				</div>
			</div>	

<form method="post" action="" enctype="multipart/form-data"  onsubmit="return validateform()" >
	<!-- Start Services -->
	<div id="services" class="services-box">
		<div class="container">
			
			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-8">
					
<div class="item">
	<div class="serviceBox">
		<h3 class="title">Make payment</h3><hr>
		<p class="description">

<br>
<div class="row pb-3">
	<div class="col-md-4" style="padding-top: 7px;"	>Total amount</div>
	<div class="col-md-8 text-left">
		<input type="text" name="totpay_amt" id="totpay_amt" class="form-control" value="<?php echo intval($rs_learners_license_package['package_cost']); ?>" readonly>
		<span id="errtotpay_amt" class="errorclass" ></span>
	</div>
</div>
<hr>
<div class="row pb-3">
	<div class="col-md-4" style="padding-top: 7px;"	>Card Type </div>
	<div class="col-md-8 text-left">
		<select name="card_type" id="card_type" class="form-control">
			<option value="">Select card type</option>
			<?php
			$arr = array("VISA","Master Card","Rupay","American Express");
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
		</select>
		<span id="errcard_type" class="errorclass" ></span>
	</div>
</div>

<div class="row pb-3">
	<div class="col-md-4" style="padding-top: 7px;"	>Card Holder</div>
	<div class="col-md-8 text-left">
	<input type="text" name="card_holder" id="card_holder" class="form-control"value="<?php echo $rsedit['card_holder']; ?>">
	<span id="errcard_holder" class="errorclass" ></span>
	</div>
</div>


<div class="row pb-3">
	<div class="col-md-4" style="padding-top: 7px;"	>Card Number</div>
	<div class="col-md-8 text-left">
	<input type="number" name="card_number" id="card_number" class="form-control"value="<?php echo $rsedit['card_number']; ?>">
	<span id="errcard_number" class="errorclass" ></span>
	</div>
</div>


<div class="row pb-3">
	<div class="col-md-4" style="padding-top: 7px;"	>CVV Number</div>
	<div class="col-md-8 text-left">
	<input type="number" name="cvv_number" id="cvv_number" class="form-control"value="<?php echo $rsedit['cvv_number']; ?>">
	<span id="errcvv_number" class="errorclass" ></span>
	</div>
</div>

<div class="row">
	<div class="col-md-4" style="padding-top: 7px;"	>Expiry date </div>
	<div class="col-md-8 text-left">
		<input type="month" name="expiry_date" id="expiry_date" class="form-control" value="<?php echo $rsedit['expiry_date']; ?>" min="<?php echo date("Y-m"); ?>">
		<span id="errexpiry_date" class="errorclass" ></span>
	</div>
</div>
<hr>
		<center><input type="submit" class="btn btn-warning" name="submit" id="submit"  value="Make Payment" ></center>
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
	
	if(document.getElementById("totpay_amt").value=="")
	{
		document.getElementById("errtotpay_amt").innerHTML="Total Amount Should not be empty..";
		i=1;
	}
	if(document.getElementById("card_type").value=="")
	{
		document.getElementById("errcard_type").innerHTML="Kindly select card type..";
		i=1;
	}   
	if(document.getElementById("card_holder").value=="")
	{
		document.getElementById("errcard_holder").innerHTML="Card Holder should not be empty..";
		i=1;
	}
	if(document.getElementById("card_number").value=="")
	{
		document.getElementById("errcard_number").innerHTML="Card Number should not be empty..";
		i=1;
	}
	if(document.getElementById("cvv_number").value=="")
	{
		document.getElementById("errcvv_number").innerHTML="CVV Number should not be empty..";
		i=1;
	}
	if(document.getElementById("expiry_date").value=="")
	{
		document.getElementById("errexpiry_date").innerHTML="Expiry Date should not be empty..";
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