<?php
include 'conn.php';

// prefix
$sql_prefix = "SELECT * FROM prefix";
$query_prefix = $conn->query($sql_prefix);
while ($result_prefix = $query_prefix->fetch_object()) {
    $prefix[] = $result_prefix->prefix_value;
}
// name
$sql_name = "SELECT * FROM name";
$query_name = $conn->query($sql_name);
while ($result_name = $query_name->fetch_object()) {
    $name[] = $result_name->name_value;
}
// thank
$sql_thank = "SELECT * FROM thank";
$query_thank = $conn->query($sql_thank);
while ($result_thank = $query_thank->fetch_object()) {
    $thank[] = $result_thank->thank_value;
}

$random_prefix = array_rand($prefix);
$ramdom_name = array_rand($name);
$ramdom_thank = array_rand($thank);

// message
$sql_message = "SELECT * FROM message";
$query_message = $conn->query($sql_message);
while ($result_message = $query_message->fetch_object()) {

    $message = $result_message->message_value;

    $message = str_replace("{prefix}", $prefix[$random_prefix], $message);
    $message = str_replace("{name}", $name[$ramdom_name], $message);
    $message = str_replace("{thank}", $thank[$ramdom_thank], $message);

    echo $result_message->message_id.' => '.$message.'<br>';
}
