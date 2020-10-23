<?php
	include "config/library.php";
   	include "config/fungsi_tgl.php";
	require_once "config/db_login.php";

	global $db;
	$db = new mysqli($db_host, $db_username, $db_password, $db_database);
		if ($db->connect_errno){
			die ("Could not connect to the database: <br />". $db->connect_error);
		}
	if(isset($_POST["submit"])){
		$pesan	= $_POST['pesan'];
		$nama_tamu = test_input($_POST['nama_tamu']);
		if ($nama_tamu == ''){
			$error_nama_tamu = "Nama harus diisi";
			$valid_nama_tamu = FALSE;
		}elseif (!preg_match("/^[a-zA-Z ]*$/",$nama_tamu)) {
		   $error_nama_tamu = "Only letters and white space allowed";
		   $valid_nama_tamu = FALSE;
		}else{
			$valid_nama_tamu = TRUE;
		}

		$subjek = test_input($_POST['subjek']);
		if ($subjek == ''){
			$error_subjek = "Subjek pesan harus diisi";
			$valid_subjek = FALSE;
		}else{
			$valid_subjek = TRUE;
		}

		$email = test_input($_POST['email']);
		if ($email == ''){
			$error_email = "Email harus diisi";
			$valid_email = FALSE;
		}elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
		   $error_email = "Hanya xxx@yyy.zzz";
		   $valid_email = FALSE;
		}else{
			$valid_email = TRUE;
		}
		//update data into database
		if ($valid_nama_tamu && $valid_subjek && $valid_email){
			//escape inputs data
			$nama_tamu = $db->real_escape_string($nama_tamu);
			$subjek = $db->real_escape_string($subjek);
			$email = $db->real_escape_string($email);

			//Asign a query
		$query = " INSERT INTO tamu (nama_tamu, email, subjek, pesan, tanggal, jam) VALUES('$nama_tamu', '$email', '$subjek', '$pesan', '$tgl_sekarang', '$jam_sekarang') ";
		// Execute the query
		$result = $db->query( $query );
		if (!$result){
			die ("Could not query the database: <br />". $db->error);
		}else{
			header('location:sen_info.php');
			$db->close();
			exit;
		}
		}
	}
	function test_input($data) {
		$data = trim($data);
		$data = stripslashes($data);
		$data = htmlspecialchars($data);
		return $data;
	}
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
        	<h1 class="title-asuhan">HUBUNGI KAMI</h1>
      	</div>
    </div>
    	<div class="kontak-detail" style="margin-bottom: 50px">
    		<div class="row">
        	<div class="col-lg-8 col-lg-offset-2 text-center">
        		<form name="form" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="POST">
							<div class="form-group">
								<label for="nama" class="control-label col-md-2">Nama</label>
								<div class="col-md-10">
									<input type="text" name="nama_tamu" id="nama_tamu" class="form-control" placeholder = "" value="<?php if(isset($nama_tamu)){echo $nama_tamu;} ?>" autofocus required="required">
									<span class="error"> <?php if(isset($error_nama_tamu)){echo $error_nama_tamu;}?></span><br />
								</div>
							</div>

							<div class="form-group">
								<label for="subjek" class="control-label col-md-2">Subjek</label>
								<div class="col-md-10">
									<input type="text" name="subjek" id="subjek" class="form-control" placeholder = "" value="<?php if(isset($subjek)){echo $subjek;} ?>"autofocus required="required">
									<span class="error"> <?php if(isset($error_subjek)){echo $error_subjek;}?></span><br />
								</div>
							</div>
							<div class="form-group">
								<label for="email" class="control-label col-md-2">Email </label>
								<div class="col-md-10">
									<input type="email" name="email" id="email" class="form-control" autofocus placeholder = "" <?php if(isset($email)){echo $email;} ?> required="required">
									<span class="error"> <?php if(isset($error_email)){echo $error_email;}?></span>
									<br />

								</div>
							</div>
							<div class="form-group">
								<label for="pesan" class="control-label col-md-2">Pesan</label>
								<div class="col-md-10">
									<textarea name="pesan" id="pesan" rows="8" class="form-control" <?php if(isset($pesan)){echo $pesan;} ?> required="required""></textarea><br />
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-8">
									<input type="submit" value="Kirim" name="submit"  style="width:25%" class="btn btn-danger">&nbsp
									<input type="reset" value="Reset" style="width:20%" class="btn btn-default-inactive">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
<?php include 'footer.php';?>