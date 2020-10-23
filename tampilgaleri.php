<?php include 'header.php';?>
<?php include 'config.php';?>
<?php include 'function/fungsi2.php' ?>
<?php
#------- memulai page number -------------------------------------------------------------------------------------#
$dataPerPage = 6;
if(isset($_GET['hal']))
{
	$noPage = $_GET['hal'];
}else{
	$noPage = 1;
}
$offset   = ($noPage - 1) * $dataPerPage;

$hitung_record 	= mysqli_query($con, "SELECT COUNT(*) AS jumData FROM galeri");
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
		<script type="text/javascript" src="fancyzoom/jquery.js"></script>
		<script type="text/javascript" src="fancyzoom/jquery.shadow.js"></script>
		<script type="text/javascript" src="fancyzoom/jquery.ifixpng.js"></script>
		<script type="text/javascript" src="fancyzoom/jquery.fancyzoom.min.js"></script>
		<script type="text/javascript">
			$(function(){
				$('#demo > a:first').fancyzoom({Speed:400,showoverlay:false});
				$('#demo > a:last').fancyzoom({Speed:400,showoverlay:false});
				$('#nooverlay').fancyzoom({Speed:400,showoverlay:false});
				$('img.fancyzoom').fancyzoom();
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
			<h1 class="title-daftar-arrodiyah">GALERI KEGIATAN</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<?php
				include('config/db_login.php');
				$db =new mysqli($db_host, $db_username, $db_password, $db_database);
					if ($db->connect_errno)
					{
						die("could not connect to the database: <br />".$db->connect_error);
					}
					$batas   = 6;
					$halaman = @$_GET['halaman'];
					if(empty($halaman)){
						$posisi  = 0;
						$halaman = 1;
					}
					else{
					  $posisi  = ($halaman-1) * $batas;
					}
					$no = 1;
					$query = mysqli_query($db, "SELECT * FROM galeri ORDER BY id_galeri desc limit $offset, $dataPerPage");
					while($data=mysqli_fetch_array($query)){
					?>

					<div class="col-md-4">
						<div id="demo">
							<a class="fancyzoom" href="admin/galeri/gambar/<?php echo $data['filename']; ?>"  title="<?php echo $data['nama_galeri']; ?>">
							<img  src="admin/galeri/gambar/<?php echo $data['filename']; ?>" position="fixed" width="100%" alt="<?php echo $data['nama_galeri']; ?>" class="thumbnail">
								<p align="center"> <?php echo $data['nama_galeri']; ?></p>
							</a>
						</div>
					</div>

				<?php
					if($no==3) echo"<div class='row'></div>";
					$no++;
				}
				?>

				<!-- --  menampilkan page number di bawah post ------------>
				<div class="row text-center">
					<div class="pagination-centered">
						<nav>
							<ul class="pagination pagination-xl">
								<?php
								$link = "tampilgaleri.php?hal=";
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