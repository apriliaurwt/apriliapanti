<?php
include('config.php');
include('header.php');
$id = $_GET['id'];

?>
<style media="screen">
#kegiatan {
	border-radius: 10px;
	background-color: #e2166e;
	color: white;
}
</style>

<!DOCTYPE html>
<html lang="en">

<?php

$query = "SELECT * FROM berita WHERE id_berita='".$id."'";
$result = mysqli_query($con,$query);
while ($row = $result->fetch_object()){
	$id = $row->id_berita;
}

		// Assign the query
$query = "SELECT * FROM berita join kategori on berita.id_kategori=kategori.id_kategori where id_berita='".$id."'";

		// Execute the query
$result = mysqli_query($con,$query);
if (!$result){
	die ("Could not query the database: <br />". mysqli_error($con));
}
while ($row = $result->fetch_object()){
	?>
	<!-- Page Content -->
	<br>
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">
						<a><?php echo $row->judul; ?></a>
					</h1>
				</div>
			</div>
			<!-- /.row -->

			<div class="row">
				<!-- Blog Post Content Column -->
				<div class="col-lg-12">
					<!-- Blog Post -->
					<!-- Date/Time -->
					<p><i class="fa fa-clock-o"></i> <?php echo $row->hari; ?> , <?php echo $row->tgl; ?> , <?php echo $row->jam; ?>| <i class="fa fa-user"></i> Admin | <i class="fa fa-tag"></i> <?php echo $row->nama_kategori; ?> </p>
					<!-- Preview Image -->
					<img width="60%" class="img-responsive" src="admin/upload/<?php echo $row->gambar; ?>" alt="">
					<!-- Post Content -->
					<h5 style="text-align:justify;"><?php echo $row->konten_berita; } ?></h5>

					<hr class="normal">
					<br>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>

<?php
	include('footer.php');
?>
</html>