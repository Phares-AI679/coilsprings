<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<!DOCTYPE HTML>
<html>
<head>
<title>Coilspring Motors  | Product List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Ubuntu:400,700,300' rel='stylesheet' type='text/css'>
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
<!--//end-animate-->
</head>
<body>
<?php include('includes/header.php');?>
<!--- banner ---->
<div class="banner-3">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> Coilspring Motors- Product List</h1>
	</div>
</div>
<!--- /banner ---->
<!--- rooms ---->
<div class="rooms">
	<div class="container">
		
		<div class="room-bottom">
			<h3>Product List</h3>

					
<?php $sql = "SELECT * from tblspareparts";
$query = $dbh->prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{	?>
			<div class="col-md-3">
			<div class="rom-btm">
              
				<div class="room-midle wow fadeInUp animated" data-wow-delay=".5s">
                    <img src="admin/pacakgeimages/<?php echo htmlentities($result->ProductImage);?>" class="img-responsive mb-20" alt="">
					<h4><?php echo htmlentities($result->ProductName);?></h4>
					<h6>Type : <?php echo htmlentities($result->ProductType);?></h6>
					<p><b>Description :</b> <?php echo htmlentities($result->ProductDetails);?></p>
				</div>
				<div class="room-right wow fadeInLeft animated" data-wow-delay=".5s">
					<h5>Ksh. <?php echo htmlentities($result->ProductPrice);?></h5>
					<a href="Product-details.php?pkgid=<?php echo htmlentities($result->ProductId);?>" class="view">Purchase</a>
				</div>
				<div class="clearfix"></div>
                    </div>
			
</div>
<?php }} ?>
			
		
		
		</div>
	</div>
</div>
<!--- /rooms ---->

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
<!-- //write us -->
</body>
</html>