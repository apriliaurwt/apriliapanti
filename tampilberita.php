<?php include 'header.php';?>
<?php include 'config.php';?>
<?php include 'function/fungsi2.php' ?>
<?php
#------- memulai page number -------------------------------------------------------------------------------------#
$dataPerPage = 5;
if(isset($_GET['hal']))
{
	$noPage = $_GET['hal'];
}else{
	$noPage = 1;
}
$offset   = ($noPage - 1) * $dataPerPage;

$hitung_record 	= mysqli_query($con, "SELECT COUNT(*) AS jumData FROM berita");
$data          	= mysqli_fetch_array($hitung_record);
$jumData       	= $data['jumData'];
$jumPage  		= ceil($jumData/$dataPerPage);
# ceil digunakan untuk membulatkan hasil pembagian
#------- akhir page number -------------------------------------------------------------------------------------#
?>

<style>
.question {font-weight:bold;background-color:#FFF;padding:7px 0px  0px 15px;}
.answer{font-style:italic;background-color:#FFF;padding:0px 0px 7px 15px;}
#faq-result{margin: -10px auto 0px;width:50%;line-height:30px;border-radius:5px;min-height:300px;}
#loader-icon {position: fixed;top: 50%;width:100%;height:100%;text-align:center;display:none;}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.2.6.pack.js"></script>
<script>
$(document).ready(function(){
	function getresult(url) {
		$.ajax({
			url: url,
			type: "GET",
			data:  {rowcount:$("#rowcount").val()},
			beforeSend: function(){
			$('#loader-icon').show();
			},
			complete: function(){
			$('#loader-icon').hide();
			},
			success: function(data){
			$("#faq-result").append(data);
			},
			error: function(){}
	   });
	}
	$(window).scroll(function(){
		if ($(window).scrollTop() == $(document).height() - $(window).height()){
			if($(".pagenum:last").val() <= $(".total-page").val()) {
				var pagenum = parseInt($(".pagenum:last").val()) + 1;
				getresult('getresult.php?page='+pagenum);
			}
		}
	});
});
</script>

<style media="screen">
#kegiatan {
	border-radius: 10px;
	background-color: #e2166e;
	color: white;
}
</style>

	<div class="container-section-padding">
		<div class="title-panti text-center">
			<h1 class="title-daftar-arrodiyah">BERITA</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">

			<!-- Articles Entries Column -->
			<div class="col-md-9">
				<?php

			// Assign the query
				$query = "SELECT * FROM berita ORDER BY id_berita DESC LIMIT $offset, $dataPerPage";

					// Execute the query
				$result = mysqli_query($con,$query);
				if (!$result){
					die ("Could not query the database: <br />". mysqli_error($con));
				}

				while ($row = $result->fetch_object()){
					echo '<div class="col-md-12">';
					echo '<h3><a href="detailberita.php?id= '.$row->id_berita.'">'.$row->judul.'</a></h3>';
					echo '<p style="font-size:12px;><i class="fa fa-clock-o"></i> '.$row->hari.' , '.$row->tgl.' , '.$row->jam.' WIB | <i class="fa fa-user"> Admin</i></p>';
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

				?>
				<!-- --  menampilkan page number di bawah post ------------>
				<div class="row text-center">
					<div class="pagination-centered">
						<nav>
							<ul class="pagination pagination-xl">
								<?php
								$link = "tampilberita.php?hal=";
								# menampilkan link previous
								if ($noPage > 1) echo  "<li><a href='".$link."".($noPage-1)."'>&larr; Prev</a></li>";
								# memunculkan nomor halaman dan linknya
								for($jml_hal = 1; $jml_hal <= $jumPage; $jml_hal++)
								{
									if($noPage == $jml_hal){
										echo "<li class='disabled'><a href='#' style='cursor'>".$jml_hal."</a></li> ";
									}else{
										echo "<li><a href='".$link."".$jml_hal."'>".$jml_hal."</a></li> ";}
									}
									# menampilkan link next
									if ($noPage < $jumPage) echo "<li><a href='".$link."".($noPage+1)."'>Next &rarr;</a></li>";
									?>
								</ul>
							</nav>
						</div>
					</div>
				</div>

			</div>
		</div>
		<?php include 'footer.php';?>
