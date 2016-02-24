<?php  
function Send_Mail($to,$subject,$body)  
{  
require 'class.phpmailer.php';  
  
$mail       = new PHPMailer();  
$mail->SMTPDebug = 1;  
$mail->IsSMTP(true);              
$mail->IsHTML(true);  
$mail->SMTPAuth   = true;                    
$mail->Host       = "mail.smtp2go.com";   
$mail->Port       =  2525;                     
$mail->Username   = "info@my-desk.co.in";    
$mail->Password   = "p123456@";    
$mail->SetFrom("info@my-desk.co.in",'ALT T LABS');  
$mail->AddReplyTo("info@my-desk.co.in");  
$mail->Subject    = $subject;  
$mail->MsgHTML($body);  
$address = $to;  
$mail->AddAddress($address, $to);  
$mail->Send();     
}  
?>
