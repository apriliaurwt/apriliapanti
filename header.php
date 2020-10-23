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
</head>

<body id="page-top">
  <div class="containe-fluid">
    <nav id="mainNav" class="navbar navbar-fixed top" style="margin-top:5px; margin-bottom: -15px;">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php" style="margin-top: -15px">
            <img src='assets/image/logo.png' width=250px/>           
          </a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li><a id="beranda" href="../panti/index.php">Beranda</a></li>
            <!-- <li class="page-scroll"><a href="#profil-panti">Profil</a></li> -->
            <li class="dropdown">
              <a id="gk" class="dropdown-toggle" data-toggle="dropdown" href="#">Tentang Kami<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="../panti/sejarah.php">Sejarah</a></li>
                <li><a href="../panti/visi.php">Visi dan Misi</a></li>                
                <li><a href="../panti/pengurus.php">Pengurus Yayasan</a></li>
              </ul>
            </li>
            <li><a id="berita" href="../panti/tampilberita.php">Berita</a></li>
            <li><a id="galeri" href="../panti/tampilgaleri.php">Galeri</a></li>
            <li><a id="donasi" href="../panti/tampildonasi.php">Donasi</a></li>
            <li><a id="kontak" href="../panti/tampilkontak.php">Hubungi Kami</a></li>
            <form class="navbar-form navbar-right" role="search" action="../panti/cari.php" method="get">
              <div class="form-group">
                <input type="search" class="form-control" placeholder="" name="q">
              </div>
              <button type="submit" class="btn btn-default">
                Cari
              </button>
            </form>
          </ul>
        </div>
      </div>
    </nav>
  </div>
