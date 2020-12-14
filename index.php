<?php

$prefix = array('นาย', 'นาง', 'นางสาว');
$name = array('DevMyStyle', 'Nice Dev', 'ReSuMeYa Dev');
$thank = array('ขอบคุณครับ', 'ขอบคุณค่ะ');

$random_prefix = array_rand($prefix);
$ramdom_name = array_rand($name);
$ramdom_thank = array_rand($thank);

$message = "สวัสดีคุณ {name} {thank} ที่ใช้บริการ วันนี้มีข้อเสนอมาจาก {prefix} ทดสอบระบบ";

$message = str_replace("{prefix}", $prefix[$random_prefix], $message);
$message = str_replace("{name}", $name[$ramdom_name], $message);
$message = str_replace("{thank}", $thank[$ramdom_thank], $message);


echo $message;