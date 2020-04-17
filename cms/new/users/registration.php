<?php
include('includes/config.php');
error_reporting(0);
if(isset($_POST['submit']))
{
	$fullname=mysqli_real_escape_string($con,$_POST['fullname']);
	$email=mysqli_real_escape_string($con,$_POST['email']);
	$password=md5(mysqli_real_escape_string($con,$_POST['password']));
	$contactno=mysqli_real_escape_string($con,$_POST['contactno']);
	$regno=mysqli_real_escape_string($con,$_POST['reg_no']);
	$status=1;
	//check registration no exists
	$query=mysqli_query($con,"SELECT * FROM reg_no WHERE reg_no='$regno' ");
	$rows=mysqli_num_rows($query);
	if($rows<1){
		exit("Unknown registration number");
	}
	//end check
	$query=mysqli_query($con,"INSERT INTO users(fullName,userEmail,password,contactNo,status,reg_no) VALUES('$fullname','$email','$password','$contactno','$status','$regno')");
	$msg="Registration successfull. Now You can login !";
}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>CMS | User Registration</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    	<script>
function userAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'email='+$("#email").val(),
type: "POST",
success:function(data){
$("#user-availability-status1").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>
  </head>

  <body>
	  <div id="login-page">
	  	<div class="container">
	<h3 align="center" style="color:#fff">Student Grievance Support System</h3>
	<hr />
		      <form class="form-login" method="post">
		        <h2 class="form-login-heading">User Registration</h2>
		        <p style="padding-left: 1%; color: green">
		        	<?php if($msg){
echo htmlentities($msg);
		        		}?>


		        </p>
		        <div class="login-wrap">
		         <input type="text" class="form-control" placeholder="Full Name" name="fullname" required="required" autofocus>
		            <br>
		            <input type="email" class="form-control" placeholder="Email ID" id="email" onBlur="userAvailability()" name="email" required="required">
		             <span id="user-availability-status1" style="font-size:12px;"></span>
		            <br>
		            <input type="password" class="form-control" placeholder="Password" required="required" name="password"><br >
		            <input type="text" class="form-control" maxlength="12" name="reg_no" placeholder="Registration no." required="required" autofocus>
		            <br>
		             <input type="text" class="form-control" maxlength="10" name="contactno" placeholder="Contact no" required="required" autofocus>
		            <br>
		            
		            <button class="btn btn-theme btn-block"  type="submit" name="submit" id="submit"><i class="fa fa-user"></i> Register</button>
		            
		            <hr>
		            
		            <div class="registration">
		                Already Registered<br/>
		                <a class="" href="index.php">
		                   Sign in
		                </a>
		            </div>

		
		        </div>
		
		      
		
		      </form>	  	
	  	
	  	</div>
	  </div>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("assets/img/login-bg.jpg", {speed: 500});
    </script>

<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.7.0/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.7.0/firebase-analytics.js"></script>

<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyAf3eSzTyr1TjxXVqxvTHau_X03qypYfXM",
    authDomain: "student-support-system.firebaseapp.com",
    databaseURL: "https://student-support-system.firebaseio.com",
    projectId: "student-support-system",
    storageBucket: "student-support-system.appspot.com",
    messagingSenderId: "768315609168",
    appId: "1:768315609168:web:ea780d5ec8a33ba11c8155",
    measurementId: "G-SFHJYTZ27K"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
</script>
  </body>
</html>
