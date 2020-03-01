<?php

// Get vars
$replyTo = $_POST['replyto'];
$nameTo = $_POST['nameTo'];
$subject = $_POST['subject'];

$body = $_POST['message'] . "\r\n\r\n" . '$nameTo';

$myMail  = 'jmuk06@gmail.com';
$headers = 'From: {{ site.url }}' . "\r\n" .
    'Reply-To: $replyTo' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();

// Send mail
mail($myMail, $subject, $body, $headers);
?>
