<?php
include('config.php');
include('function/fungsi2.php');
include('header.php');

$key='';	
if(isset($_POST['search'])){ 
	$key = $_POST['pencarian'];
}
$seo = $_GET['q'];
$key = $_GET['q'];

// Assign the query
$query = "SELECT a.*, k.nama_kategori FROM berita a JOIN kategori k ON a.id_kategori=k.id_kategori AND (judul LIKE '%".$key."%' OR konten_berita LIKE '%".$key."%' OR k.nama_kategori LIKE '%".$key."%') ORDER BY a.id_kategori DESC";
// Execute the query 
$result = mysqli_query($con,$query);
if (!$result){
	die ("Could not query the database: <br />". mysqli_error($con));
}
?>

<style media="screen">
#kegiatan {
	border-radius: 10px;
	background-color: #e2166e;
	color: white;
}
</style>
<!-- Page Content -->
<div class="container-fluid">
	<div class="row">
		<div class="container-section-padding">
			<div class="title-panti">
				<h1 class="title-daftar-arrodiyah">PENCARIAN
					<small>Kata : <?php echo $key; ?></small>
				</h1>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-9" style="margin-top: -20px">
					<?php
					if (mysqli_num_rows($result)==0) {
						echo '<div class="col-md-12">';
						echo "Tidak ditemukan pencarian";
						echo '</div>';
					}else{
						while ($row = $result->fetch_object()){
							echo '<div class="col-md-12">';
							echo '<h3><a href="tampilberita/">'.$row->judul.'</a></h3>';
							echo '<p style="font-size:12px;><i class="fa fa-clock-o"></i> '.$row->hari.' , '.$row->tgl.' , '.$row->jam.' WIB | <i class="fa fa-user"> Admin</i></p>';
							echo '<a href="../tampilberita/">';
							echo '<div class="col-md-5">';
							echo '<img class="img-responsive img-hover" src="admin/upload/'.$row->gambar.'" alt="">';
							echo '</div>';
							echo '</a>';
							echo '<div class="col-md-7">';
							echo '<h5 style="text-align:justify; font-size:12px;">'.wordwrap(substr($row->konten_berita,0,500)).' ...</h5>';
							echo '</div>';

							?>
							<div class="col-md-12">
								<br>
								<a class="btn btn-sm btn-primary" href="detailberita.php?id=<?php echo $row->id_berita ?>">Selengkapnya<i class="fa fa-angle-right"></i></a>
							</div>
							<?php
							echo '<div class="col-md-12">';
							echo '<hr style="opacity:.2;" class="normal">'; 
							echo '</div>'; 
							echo '</div>';
						}
					}
					?>

				</div>
			</div>

		</div>
	</div>
<?php include('footer.php'); ?>
</body>
</html>