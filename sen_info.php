<?php
	include "config/library.php";
  include "config/fungsi_tgl.php";
	require_once "config/db_login.php";
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Rumah Yatim Ar-rodiyah</title>
  <link href='assets/image/iconar.png' rel='shortcut icon'>
  <!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
  <link rel="stylesheet" href="css/styleBaru.css"/>
  <link rel="stylesheet" href="css/main.css"/>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="../panti/font-awesome/css/font-awesome.min.css" type="text/css">
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css" rel="stylesheet">
  <style>
    a {
      color: black;
      text-decoration: none;
    }
  </style>
  <script type="text/javascript">
			$(function(){
				$('#formkontak').validity(function(){
					$('#nama')
							.require(' Nama tidak boleh kosong!');
					$('#email')
							.require(' Email tidak boleh kosong!')
							.match('email',' Email tidak valid!');
					$('#pesan')
							.require(' Pesan tidak boleh kosong');
				});
			});
	</script>
</head>
<div class="container-fluid">
	<?php include('header.php');?>
    <div class="container-section-padding">
    	<div class="title-panti text-center">
        	<h2 class="title-asuhan">Konfirmasi Pengiriman Pesan</h2>
      	</div>
    </div>
    	<div class="kontak-detail">
    		<div class="row">
        	<div class="col-lg-8 col-lg-offset-2 text-center">
        		<div class="panel-body">
                    <div class="alert alert-success fade in">
                    	<button data-dismiss="alert" class="close close-sm" type="button">
                        	<i class="icon-remove"></i>
                        </button>
                        <strong>Pesan Anda Telah Terkirim!</strong> Pesan anda telah ditambahkan ke sistem.
                        </br>
                    </div>
                    <button class="btn btn-default-inactive" ><strong><a href="tampilkontak.php">Kembali Ke Halaman Hubungi Kami</a></strong></button>
				</div>
			</div>
		</div>
<?php include 'footer.php';?>