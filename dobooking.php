<?php
session_start();
include("connection.php");
$tenantid=$_GET['t'];
$houseid=$_GET['h'];
$booking_date=$_GET['b'];
$price=$_GET['pr'];


if($_GET['submit'])
{
	if($tenantid!="" && $houseid!="" && $booking_date!=""  && $price!="")
	{
		$query="insert into booking(t_id,h_id,booking_date,price) values('$tenantid','$houseid','$booking_date','$price')";
		$data=mysqli_query($conn,$query);
		if($data)

			{
				echo "<script type='text/javascript'>alert('Added successfully')
        window.location.href='booking.php';
        </script>";
	        }
		else
			{
				echo "<script type='text/javascript'>alert('Unsuccessfull')
        window.location.href='booking.php';
        </script>";
			}
	}
}
?>