<?php
include("header.php");
if(!isset($_SESSION['employee_id']))
{
	echo "<script>window.location='index.php';</script>";
}
if(isset($_POST['submit']))
{
	$training_material_file = rand(). $_FILES['training_material_file']['name'];
	move_uploaded_file($_FILES['training_material_file']['tmp_name'],"doctrainingmaterial/".$training_material_file);
	$traning_material_banner = rand(). $_FILES['traning_material_banner']['name'];
	move_uploaded_file($_FILES['traning_material_banner']['tmp_name'],"doctrainingmaterial/".$traning_material_banner);
	if(isset($_GET['editid']))
	{
		//Update statement starts here
		$sql = "UPDATE training_material SET ";
		if($_FILES['training_material_file']['name'] != "")
		{
		$sql = $sql . "traning_material_banner='$training_material_file',";
		}
		$sql = $sql . "vehicle_type='$_POST[vehicle_type]',trainng_material_title='" . mysqli_real_escape_string($con,$_POST['trainng_material_title'])  . "',training_material_description='" . mysqli_real_escape_string($con,$_POST['training_material_description'])  . "',";

		if($_FILES['training_material_file']['name'] != "")
		{
		$sql = $sql . "training_material_file='$_POST[training_material_file]',";
		}
		$sql = $sql . "training_material_status='$_POST[training_material_status]' WHERE training_material_id ='$_GET[editid]'";	
		$qsql = mysqli_query($con,$sql);
		echo mysqli_error($con);
		if(mysqli_affected_rows($con) == 1)
		{
			echo "<script>alert('Training Material record updated successfully...');</script>";
			//echo "<script>window.location='viewtrainingmaterial.php';</script>";
		}
		//Update statement ends here
	}
	else
	{
		//INSERT statement starts here
		$sql = "INSERT INTO training_material(traning_material_banner,vehicle_type,trainng_material_title,training_material_description,training_material_file,training_material_status) values('$traning_material_banner','$_POST[vehicle_type]','" . mysqli_real_escape_string($con,$_POST['trainng_material_title'])  . "','" . mysqli_real_escape_string($con,$_POST['training_material_description'])  . "','$training_material_file','$_POST[training_material_status]')";
		$qsql = mysqli_query($con,$sql);
		echo mysqli_error($con);
		if(mysqli_affected_rows($con) == 1)
		{
			echo "<script>alert('Training Material record inserted successfully...');</script>";
			echo "<script>window.location='viewtrainingmaterial.php';</script>";
		}
		//INSERT statement starts here
	}
}
if(isset($_GET['editid']))
{
	$sqledit = "SELECT * FROM training_material WHERE training_material_id ='$_GET[editid]'";
	$qsqledit = mysqli_query($con,$sqledit);
	$rsedit = mysqli_fetch_array($qsqledit);
}
?>
<script src="https://cdn.ckeditor.com/ckeditor5/35.0.1/classic/ckeditor.js"></script>
<form method="post" action="" enctype="multipart/form-data" onsubmit="return validateform()">
	<!-- Start Services -->
	<div id="services" class="services-box">
		<div class="container">
			
			<div class="row">
				<div class="col-lg-12">
					
<div class="item">
	<div class="serviceBox">
		<h3 class="title">Add Training Material</h3>
		<p class="description">

<div class="row">
	<div class="col-md-3" style="padding-top: 7px;"	>Vehicle type</div>
	<div class="col-md-9">
		<select name="vehicle_type" id="vehicle_type" class="form-control" >
			<option value="">Select Vehicle type</option>
			<?php
			foreach($arrvehtype as $val)
			{
				
				if($val == $rsedit['vehicle_type'])
				{
				echo "<option value='$val' selected>$val</option>";
				}
				else
				{
				echo "<option value='$val'>$val</option>";
				}
			}
			?>
		</select><span id="errvehicle_type" class="errorclass" ></span>
	</div>
</div>
<br>

<div class="row">
<div class="col-md-3" style="padding-top: 7px;"	>Banner </div>
<div class="col-md-9 text-left" >
<input type="file" name="traning_material_banner" id="traning_material_banner" class="form-control">
<span id="errtraning_material_banner" class="errorclass" ></span>
<?php
	if(file_exists("doctrainingmaterial/".$rsedit['traning_material_banner']))
	{
		echo  "<img src='doctrainingmaterial/" . $rsedit['traning_material_banner'] ."' style='width: 200px;'>";
	}
?>
</div>
</div>
<br>


<div class="row">
<div class="col-md-3" style="padding-top: 7px;"	>Training Material Title </div>
<div class="col-md-9">
<input type="text" name="trainng_material_title" id="trainng_material_title" class="form-control" value="<?php echo $rsedit['trainng_material_title']; ?>" >
<span id="errtrainng_material_title" class="errorclass" ></span>
</div>
</div>
<br>

<div class="row">
<div class="col-md-3" style="padding-top: 7px;"	>Training Material Description </div>
<div class="col-md-9">
<textarea name="training_material_description" id="training_material_description" class="form-control" rows="10" ><?php echo $rsedit['training_material_description']; ?></textarea>
<span id="errtraining_material_description" class="errorclass" ></span>
</div>
</div>
<br>

<div class="row">
<div class="col-md-3" style="padding-top: 7px;"	>Upload Training Material File </div>
<div class="col-md-9 text-left">
	<input type="file" name="training_material_file" id="training_material_file" class="form-control">
	<span id="errtraining_material_file" class="errorclass" ></span>
	<?php
		if(file_exists("doctrainingmaterial/".$rsedit['training_material_file']))
		{
			echo  "<a class='btn btn-success' href='doctrainingmaterial/".$rsedit['training_material_file'] ."' download >Download</a>";
		}
	?>
</div>
</div>

<br>
<div class="row">
	<div class="col-md-3" style="padding-top: 7px;"	>Status</div>
	<div class="col-md-9">
		<select name="training_material_status" id="training_material_status" class="form-control" >
			<option value="">Select Status</option>
			<?php
			$arr = array("Active","Inactive");
			foreach($arr as $val)
			{
				
				if($val == $rsedit['training_material_status'])
				{
				echo "<option value='$val' selected>$val</option>";
				}
				else
				{
				echo "<option value='$val'>$val</option>";
				}
			}
			?>
		</select><span id="errstatus" class="errorclass" ></span>
	</div>
</div>
		</p>
		<input type="submit" class="btn btn-warning" name="submit" id="submit" value="Submit" >
	</div>
</div>

				</div>
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
	var alphaExp = /^[a-zA-Z]+$/;	//Variable to validate only alphabets
	var alphaspaceExp = /^[a-zA-Z\s]+$/;//Variable to validate only alphabets with space
	var alphanumericExp = /^[a-zA-Z0-9]+$/;//Variable to validate only alphanumerics
	var numericExpression = /^[0-9]+$/;	//Variable to validate only numbers
	var emailpattern = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/; //For email id
	$('.errorclass').html('');
	var i = 0;
	if(document.getElementById("vehicle_type").value=="")
	{
		document.getElementById("errvehicle_type").innerHTML="Vehicle Type should not be empty..";
		i=1;
	}
	if(document.getElementById("trainng_material_title").value=="")
	{
		document.getElementById("errtrainng_material_title").innerHTML="Training Material Title should not be empty..";
		i=1;
	}
	if(document.getElementById("status").value=="")
	{
		document.getElementById("errstatus").innerHTML="Kindly select status.";
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
<script>
    ClassicEditor
        .create( document.querySelector( '#training_material_description' ) )
        .catch( error => {
            console.error( error );
        } );
</script>