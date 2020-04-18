<?php 
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
require 'PHPMailer-master/src/Exception.php';
require 'PHPMailer-master/src/PHPMailer.php';
require 'PHPMailer-master/src/SMTP.php';


$mail = new PHPMailer();
$mail->IsSMTP();
$mail->Mailer = "smtp";

$mail->SMTPDebug  = 0;  
$mail->SMTPAuth   = TRUE;
$mail->SMTPSecure = "tls";
$mail->Port       = 587;
$mail->Host       = "smtp.gmail.com";
$mail->Username   = "cobrakai0007@gmail.com";
$mail->Password   = "nsb12345";

$mail->IsHTML(true);
//$mail->AddAddress("matatashadrack45@gmail.com", "Kisamba");
$mail->SetFrom("cobrakai0007@gmail.com", "Complain System");
$mail->AddReplyTo("cobrakai0007@gmail.com", "DONT REPLY");
//$mail->AddCC("smgroupinc254@gmail.com", "kisamba2");
$mail->Subject = "Verification Code";

?>