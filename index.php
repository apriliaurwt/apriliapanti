<?php include 'header.php'; ?>

<style media="screen">
  #beranda {
    border-radius: 5px;
    background-color: #008B8B;
    color: white;
  }
</style>
        
        <div class="container-fluid" style="margin-top: 50px">
          <div class="row">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
              <!-- deklarasi carousel -->
                  <div class="carousel-inner" role="listbox">
                    <div class="item active">
                      <img src="assets/image/DSC00229.jpg" alt="" width="100%" height="500px">
                    </div>
                    <div class="item">
                      <img src="assets/image/DSC04720.jpg" alt="" >
                    </div>
                  </div>

                  <!-- membuat panah next dan previous -->
                  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
            </div>
          </div>
        </div>
  
    <div class="container-fluid">
        <div class="row">
              <div class="col-lg-8 col-lg-offset-2">
                <center><h2>BERITA TERBARU</h2></center>
                <hr class="primary">
              </div>
              <?php
                  require_once('config/db_login.php');
                      include 'config/fungsi_tgl.php';
                      include 'config/library.php';
            $db = new mysqli($db_host, $db_username, $db_password, $db_database);
            if ($db->connect_errno){
              die ("Could not connect to the database: <br />". $db->connect_error);
            }

            $terkini=mysqli_query($db, "SELECT * FROM berita WHERE headline='Y' ORDER BY id_berita DESC LIMIT 3");
            while($t=mysqli_fetch_array($terkini)){
            $tgl = tgl_indo($t['tgl']);
            if($t['gambar']!='') {
          ?>
          <div class="col-sm-4 col-xs-12 article-front" style="padding:24px;">
            <div class="carousel" data-ride="carousel" >
              <div class="item">
                <div class="carousel-inner" >
                  <a href="detailberita.php?id=<?php echo $t['id_berita']; ?>">
                  <img  src="admin/upload/<?php echo $t['gambar']; ?>" class="attachment-front_thumb size-front_thumb wp-post-image lazy-loaded"
                  height="240" width="100%" alt="<?php echo $t['judul']; ?>"></a>
                  <div class="carousel-caption">
                    <a href="detailberita.php?id=<?php echo $t['id_berita']; ?>">
                    <p style="font-size:18px; background:rgba(255,255,255,.8); text-align:left; margin-left:-75px; margin-bottom:-52px; margin-right:-58px;"><?php echo $t['judul']; ?></p>
                    </a>
                  </div>
                </div>
              </div>

            </div>

          </div>
        <?php
          }
        }
        ?>
             </div>
        </div>
  </div>
<?php include 'footer.php'; ?>
