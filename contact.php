<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(isset($_POST['submit1']))
{
$fname=$_POST['fname'];
$email=$_POST['email'];	
$mobile=$_POST['mobileno'];
$subject=$_POST['subject'];	
$description=$_POST['description'];
$sql="INSERT INTO  tblenquiry(FullName,EmailId,MobileNumber,Subject,Description) VALUES(:fname,:email,:mobile,:subject,:description)";
$query = $dbh->prepare($sql);
$query->bindParam(':fname',$fname,PDO::PARAM_STR);
$query->bindParam(':email',$email,PDO::PARAM_STR);
$query->bindParam(':mobile',$mobile,PDO::PARAM_STR);
$query->bindParam(':subject',$subject,PDO::PARAM_STR);
$query->bindParam(':description',$description,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
$msg="Enquiry  Successfully submited";
}
else 
{
$error="Something went wrong. Please try again";
}

}

?>
<!DOCTYPE HTML>
<html>
<head>
<title>Coilspring Motors</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet">
<!-- Custom Theme files -->
<script src="js/jquery-1.12.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
  <style>
		.errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
		</style>
</head>
<body>
<!-- top-header -->
<div class="top-header">
<?php include('includes/header.php');?>
<div class="banner-1 ">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">Coilspring Motors</h1>
	</div>
</div>
<!--- /banner-1 ---->
<!--- privacy ---->
<div class="privacy">
	<div class="container">
										<?php 
$pagetype=$_GET['type'];
$sql = "SELECT type,detail from tblpages where type=:pagetype";
$query = $dbh -> prepare($sql);
$query->bindParam(':pagetype',$pagetype,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{		

?>



<?php } }?>
	
<h3>Talk to Us</h3>

<p>Have inquiries? Need assistance? We are exceptionally responsive to our users’ requests and we value your questions.

    Have a specific query? <a href="#" data-toggle="modal" data-target="#myModal3">Click Here</a> to Submit your issue to us.</p>
        
        <h4>Prefer other options? Get in touch with us:</h4>

<p><b>Phone:</b> 0799479607 <br> <b>Location:</b> ABC Place Westlands</p>
        
        
       <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.854287784712!2d36.77463691444954!3d-1.2595507359521048!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182f19c174362111%3A0x4d5393a8a0bbe73c!2sAbc%20Place!5e0!3m2!1sen!2ske!4v1583792699980!5m2!1sen!2ske" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe> 
        
        
	</div>
</div>
<!--- /privacy ---->
<!--- footer-top ---->
<!--- /footer-top ---->
<?php include('includes/footer.php');?>
<!-- signup -->
<?php include('includes/signup.php');?>			
<!-- //signu -->
<!-- signin -->
<?php include('includes/signin.php');?>			
<!-- //signin -->
<!-- write us -->
<?php include('includes/write-us.php');?>
</body>
</html>