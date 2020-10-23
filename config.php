<?php

	$db_host		="localhost";
	$db_database	="db_arrodiyah";
	$db_username	="root";
	$db_password	="";

	// Koneksi dan memilih database di server
	mysqli_connect($db_host,$db_username,$db_password) or die("Koneksi gagal");

	$con = mysqli_connect($db_host, $db_username,$db_password, $db_database);

	if (mysqli_connect_errno()){
		die ("Could not connect to the database: <br/>". mysqli_connect_error());
	}

	$url='/gempita';
?>
