<?php
include("header.php");
if(!isset($_SESSION['employee_id']) && !isset($_SESSION['customer_id']))
{
	echo "<script>window.location='index.php';</script>";
}
include("sidebar.php");
?>
	<!-- Start Blog -->
	<div id="blog" class="blog-box">
		<div class="container">

			<div class="row">
			
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="blog-inner">
<div class="item-meta">
	<a href="#"><i class="fa fa-eye"></i> <b>View Test Result</b> <i class="fa fa-eye"></i></a>
</div>
						<p>
						
<table id="datatable"  class="table table-striped table-bordered" >
	<thead>
		<tr>	
			<th>Customer</th>
			<th>Vehicle Type</th>
			<th>Test date</th>
			<th>Total Scored</th>			
			<th>Pass Mark (in %)</th>			
			<th>Scored (in %)</th>			
			<th>Result</th>			
			<th>Action</th>
		</tr>
	</thead>
	<tbody>
	<?php
	$sql = "SELECT * FROM examination WHERE examinationid!=0 ";
	if(isset($_SESSION['customer_id']))
	{
		$sql  = $sql . " AND customer_id='$_SESSION[customer_id]'";
	}
	$sql =$sql . " GROUP BY attend_date ";	
	$qsql = mysqli_query($con,$sql);
	echo mysqli_error($con);
	while($rs = mysqli_fetch_array($qsql))
	{
		$sqlcustomer ="SELECT * FROM customer where customer_id='$rs[customer_id]'";
		$qsqlcustomer = mysqli_query($con,$sqlcustomer);
		echo mysqli_error($con);
		$rscustomer = mysqli_fetch_array($qsqlcustomer);		
		echo "<tr>	
			<td>$rscustomer[customer_name]</td>
			<td>$rs[vehicle_type]</td>
			<td>"  . date("d-M-Y h:i A",strtotime($rs['attend_date'])) . "</td>";
		$sqlqz ="SELECT * FROM examination WHERE attend_date='$rs[attend_date]' AND customer_id='$rscustomer[customer_id]' and selectedanswer != ''";
		$qsqlqz  = mysqli_query($con,$sqlqz);
		$sqlqz ="SELECT * FROM examination WHERE attend_date='$rs[attend_date]' AND customer_id='$rscustomer[customer_id]' and selectedanswer = ''";
		$qsqlqz  = mysqli_query($con,$sqlqz);
		$sqlqz ="SELECT * FROM examination WHERE attend_date='$rs[attend_date]' AND customer_id='$rscustomer[customer_id]' and selectedanswer = correctanswer ";
		$qsqlqz  = mysqli_query($con,$sqlqz);
		$correctanswer= mysqli_num_rows($qsqlqz);
		$sqlqz ="SELECT * FROM examination WHERE attend_date='$rs[attend_date]' AND customer_id='$rscustomer[customer_id]' and selectedanswer != correctanswer ";
		$qsqlqz  = mysqli_query($con,$sqlqz);
		$wronganswer =  mysqli_num_rows($qsqlqz);
				echo "<td>";
		$sqlquiz_result ="SELECT * FROM examination WHERE attend_date='$rs[attend_date]' AND customer_id='$rscustomer[customer_id]'";
		$qsqlquiz_result  = mysqli_query($con,$sqlquiz_result);
		$rsquiz_result = mysqli_fetch_array($qsqlquiz_result);
		echo $scoredmarks = ($correctanswer);			
			echo " / 25</td>
			<td>$passmarkpercentage%</td>
			<td>";
			echo $totperc = 100 * $scoredmarks / 25;
		echo "%</td>
		<td>";
		if($totperc >= $passmarkpercentage)
		{
			echo "Pass";
		}
		else
		{
			echo "Failed";
		}
		echo "</td>	
			<td><a href='quiz_result.php?dttim=$rs[attend_date]&customer_id=$rscustomer[customer_id]' class='btn btn-info'>View Result</a></td>
			</tr>";
	}
	?>
	</tbody>
</table>
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