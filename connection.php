<?php
$servername="localhost";
$username="root";
$password="";
$dbname="house_rental";
$conn= mysqli_connect($servername,$username,$password,$dbname);
define('SERVER_PATH',$_SERVER['DOCUMENT_ROOT'].'/localhost/house_rental/');
define('SITE_PATH','http://localhost/house_rental/');
define('HOUSE_IMAGE_SERVER_PATH',SERVER_PATH.'img/');
define('HOUSE_IMAGE_SITE_PATH',SITE_PATH.'img/');
if(!$conn)
{
	die("Conection failed because".mysqli_connect_error());
}
?>