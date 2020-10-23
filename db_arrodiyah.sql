-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2017 at 09:07 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_arrodiyah`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `nama`, `password`) VALUES
(2, 'adminpanti', 'Admin Lia', '3d32c3d0e1b0a15a281b356beca225ca');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `headline` enum('Y','N') NOT NULL DEFAULT 'Y',
  `konten_berita` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `hari` varchar(7) NOT NULL,
  `tgl` date NOT NULL,
  `jam` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `id_kategori`, `headline`, `konten_berita`, `gambar`, `hari`, `tgl`, `jam`) VALUES
(25, 'IKHLAS', 2, 'Y', '<p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"=""><span style="font-size: 14pt;"><strong>S</strong></span>yarat paling utama suatu amalan diterima di sisi Allah adalah ikhlas. Tanpanya, amalan seorang muslim akan sia-sia bak debu tertiup angin. Setan tidak pernah lelah dalam usahanya memalingkan manusia agar menjauhkan mereka dari keikhlasan.</p><p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"="">Salah satunya ialah melalui pintu riyaâ€™ yang banyak tidak disadari kaum muslimin. Dengan dalih berbagi inspirasi kepada sesama, seseorang dengan mudahnya terjebak dalam riyaâ€™.</p><p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"="">Memasang foto profil sedang membaca Al-Quran, update status tent<span class="text_exposed_show">ang amalan keseharian pribadi, sampai kepada hal-hal seharusnya tidak disebarkan ke publik, tanpa disadari membuat amalan seorang muslim menjadi sia-sia belaka.</span></p><div class="text_exposed_show" style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;"=""><p style="text-align: justify;">Ini bukan sedang mencela salah satu pihak, namun ini adalah PR bagi kaum muslimin yang aktif di media sosial, agar setiap amalan yang telah dilakukannya tidak sia-sia atau parahnya justru berujung dosa.</p><p style="text-align: justify;">Biarlah ibadah yang kita laksanakan setiap waktu menjadi catatan amalan pribadi kita. Evaluasi diri bukanlah memajangnya di hadapan publik untuk kemudian mendapat komentar-komentar yang beragam dari orang lain.</p><p style="text-align: justify;">Tidakkah cukup curahan hati kita kepada Yang Maha Kuasa serta curahan hati kita kepada orang-orang yang kita sayangi? Relakah kita, apabila kita telah berlelah-lelah beribadah, tetapi tidak dinilai ibadah oleh Allah, bahkan dicap dosa oleh-Nya? Tutuplah kebaikan diri kita, sebagaimana kita menutup aib-aib kita di hadapan orang lain.</p><p style="text-align: justify;">Hal ini adalah yang dikhawatirkan oleh Rasulullah shallallahu â€˜alaihi wasallam berabad-abad silam. Beliau bersabda, â€œSesuatu yang aku khawatirkan menimpa kalian adalah perbuatan syirik asghar. Ketika beliau ditanya tentang maksudnya, beliau menjawab: â€˜(contohnya) adalah riyaâ€™.â€ (HR. Ahmad).</p><p style="text-align: justify;">Gunakanlah media sosial yang ada dengan sebaik-baiknya. Senantiasa perbaiki niat agar jangan terjerumus ke dalam jurang riyaâ€™, yang dapat menghapus amalan-amalan yang telah kita lakukan.</p><p style="text-align: justify;">Niatkan hati kita aktif di media sosial untuk memberi manfaat kepada yang lain, dengan saling menasihati dalam kebenaran, kesabaran, dan kasih sayang. Bukan dengan menghina kekurangan ibadah orang lain, atau memamerkan ibadah-ibadah kita. Semoga kita terbebas dari sifat riyaâ€™ dan munafik.</p></div>																																				', 'ilmu-ikhlas.jpg', 'Jumat', '2017-10-20', '19:19:43'),
(26, 'BUJUK RAYU DUNIA', 1, 'Y', '			<p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"=""><span style="font-size: 14pt;"><strong>B</strong></span>arangsiapa membawa amal yang baik, maka baginya (pahala) sepuluh kali lipat amalnya; dan barangsiapa yang membawa perbuatan jahat maka dia tidak diberi pembalasan melainkan seimbang dengan kejahatannya, sedang mereka sedikitpun tidak dianiaya (dirugikan). (Al Anâ€™am :160)<br><br>Siapapun yang selama hidupnya hanya memikirkan dunia, maka kelak akan Allah akan buat dia terletih-letih dalam mengejarnya. Berbeda dengan orang menjadikan akhirat sebagai prioritas utamanya, maka dunia dengan sendirinya akan melayaninya.<br><br>Bukan berarti kita tidak boleh memiliki banyak harta, akan tetapi kekayaan yang kita miliki justru harus bisa menjadi pemberat amalan baik kita di akhirat nanti. Bukan seperti yang terjadi pada saat ini, ketika banyak orang berlomba-lomba ingin menjadi kaya raya, maka mereka melakukan segala cara, termasuk hal-hal yang diharamkan oleh agama. Termasuk menyekutukan Allah dengan meminta bantuan makhluk-Nya yang lain, yakni dari golongan Jin.<br><br>Dunia, adalah tempat bercocok tanam, untuk kemudian kita dapati hasilnya ketika kita meninggalkannya. Di akhirat itulah masa panen kita, disana tak akan ada lagi amal ibadah yang bisa kita kerjakan, karena disanalah negeri akhir yang selamanya akan kita tempati.</p><p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"="">Janganlah sampai kita diperbudak dunia, hingga kita lupa dengan negeri akhirat yang kelak kita akan tinggal disana untuk selamanya. Ingatlah, bahwa kehidupan dunia ini hanya sementara, dan kita akan dipisahkan olehnya dengan kematian.<br><br>Sadarilah, dunia ini semakin dikejar maka akan semakin lelahllah kita dalam mengejarnya. Sementara, bila kita terus-menerus mengejarnya tanpa memeperhatikan urusan akhirat kita, sungguh kita akan termasuk orang-orang yang merugi.<br><br>Semoga, kita selalu dikuatkan iman islamnya, agar dalam menjalani kehidupan ini kita tak terjebak oleh bujuk rayu dunia yang sementara.</p>																																																																																													', '316b92f5-ec91-4cbf-ac24-aa5a27e2536c.jpg', 'Selasa', '2017-10-24', '16:59:03'),
(27, 'ALHAMDULILLAH', 2, 'N', '<p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"=""><span style="font-size: 14pt;"><strong>S</strong></span>usah memang pada awalnya, dihina kok alhamdulillah? Yang jelas, tak perlu merasa terhina saat dihina orang lain, karena orang yang mudah menghina orang lain adalah bukan orang yang mulia. Jangan-jangan lebih hina dari orang yang sedang dihina.</p><p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"="">Lagi pula, Tuhan dalam firmanNya mengatakan&nbsp;<strong>â€Hai orang-orang yang beriman, janganlah suatu kaum mengolok-olokan kaum yang lain (karena) boleh jadi mereka (yang diolok-olokan) lebih baik dari mereka yang mengolok-olokanâ€</strong>&nbsp;(QS Al Huj<span class="text_exposed_show">urot, 49:11).</span></p><div class="text_exposed_show" style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;"=""><p style="text-align: justify;">Jelas sekali kan firmanNya itu. Jadi mengapa perlu bersedih atau sakit hati bila dihina orang lain ? EGP aja, Emangnya Gue Pikirin! Lagi pula hinaan itu ibarat kawah candradimuka, hati itu digodok sedemikian rupa, agar tak mudah goyah, tabah dan sabar. Jadilah ilalang yang diinjak-injak orang masih tetap hidup atau jadilah seperti baja yang makin di tempa, makin di palu makin kuat.</p><p style="text-align: justify;">Namun bila dihadapi dengan hati yang jernih, saat di hina, justru â€œalhamdulillahâ€ karena saat itulah kita dapat mengetahui kualitas akhlak orang lain, saat itulah kita dapat mengetahui siapa sesungguhnya orang yang sedang menghina itu.</p><p style="text-align: justify;">Dan jangan lupa, orang yang suka sekali menghina orang lain, sebenarnya sedang menghina dirinya sendiri, satu telunjuk dia arahkan pada orang lain, ke empat jarinya yang lain sedang mengarah pada dirinya sendiri.</p></div>																								', 'yKwlKg.jpg', 'Jumat', '2017-10-20', '19:20:18'),
(29, 'ISLAM', 2, 'Y', '<p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"=""><span style="font-size: 14pt;"><strong>P</strong></span>ernah terjadi dalam satu peperangan, Rasulullah mendapati seorang wanita yang terbunuh. Rasulullah pun marah dan memperingatkan pasukannya agar jangan sampai membunuh wanita dan anak-anak meskipun dalam kondisi perang.</p><p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"="">Rasulullah juga berpesan kepada setiap panglima perang yang diutusnya. Ketika melawan orang-orang kafir, terlebih dahulu mereka diberikan tawaran sebelum perang; apakah mau masuk Islam, atau membayar jizyah, atau tetap berperang.</p><p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"="">Pesan ini selalu dipegang tegu<span class="text_exposed_show">h para panglima perang Islam dari generasi ke generasi. Sehingga musuh mengetahui bahwa Islam datang tak pernah ingin merampas apapun milik mereka.</span></p><div class="text_exposed_show" style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;"=""><p style="text-align: justify;">Ketika perang selesai dan dimenangkan oleh umat Islam, Islam tak pernah memaksa penduduk di negeri itu untuk masuk Islam. Mereka bebas beribadah sesuai keyakinannya masing-masing. Namun justru dengan tolerasi dan kebebasan yang diberikan Islam ini dan setelah menyaksikan kemuliaan akhlak Islam, penduduk Yerusalem berbondong-bondong masuk Islam setelah ditaklukkan oleh Umar bin Khattab dan kemudian ditaklukkan kembali oleh Shalahuddin Al Ayyubi. Penduduk Andalusia berbondong-bondong masuk Islam setelah ditaklukkan Thariq bin Ziyad. Penduduk Konstantinopel berbondong-bondong masuk Islam setelah ditaklukkan oleh Muhammad Al Fatih.</p><p style="text-align: justify;">Bahkan yang lebih mencengangkan, Muhammad Al Fatih kemudian mengutus wali songo angkatan pertama ke tanah Jawa. Tanpa peperangan, penduduk Pulau Jawa kemudian berbondong masuk Islam.</p><p style="text-align: justify;">Sungguh jika ada pelaku terorisme yang mengatasnamakan Islam, mereka belum memahami inti ajaran Islam. Bahwa Islam selain bermakna menyerahkan diri kepada Allah (aslama), juga bermakna damai (as silmu). Dan Islam senantiasa menyebarkan keselamatan (salam).</p></div>																								', '16262376-21164683.jpg', 'Minggu', '2017-12-17', '15:11:03'),
(31, 'Dunia', 1, 'N', '<p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"=""><span style="font-size: 18.6667px;">D</span>unia tempat persinggahan sementara dan sebagai ladang akhirat tempat kita mengumpulkan bekal untuk menempuh perjalanan menuju negeri yang kekal abadi itu.</p><p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"="">Barangsiapa yang mengumpulkan bekal yang cukup maka dengan izin Allah dia akan sampai ke tujuan dengan selamat, dan barang siapa yang bekalnya kurang maka dikhawatirkan dia tidak akan sampai ke tujuan.</p><p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"="">Rasulullah shallallahu â€˜alaihi wa sallam mengajarkan kepada kita sikap yang benar dalam kehidupan di dunia dalam sabda bel<span class="text_exposed_show">iau shallallahu â€˜alaihi wa sallam: â€œJadilah kamu di dunia seperti orang asing atau orang yang sedang melakukan perjalanan.â€ (HR. Al Bukhari no. 6053)</span></p><div class="text_exposed_show" style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;"=""><p style="text-align: justify;">Hadits ini merupakan bimbingan bagi orang yang beriman tentang bagaimana seharusnya dia menempatkan dirinya dalam kehidupan di dunia.</p><p style="text-align: justify;">Karena orang asing (perantau) atau orang yang sedang melakukan perjalanan adalah orang yang hanya tinggal sementara dan tidak terikat hatinya kepada tempat persinggahannya, serta terus merindukan untuk kembali ke kampung halamannya.</p><p style="text-align: justify;">Demikianlah keadaan seorang mukmin di dunia yang hatinya selalu terikat dan rindu untu kembali ke kampung halamannya yang sebenarnya, yaitu surga tempat tinggal pertama kedua orang tua kita, Adam â€˜alaihis salam dan istrinya Hawa, sebelum mereka berdua diturunkan ke dunia.</p><p style="text-align: justify;">Dalam sebuah nasehat tertulis yang disampaikan Imam Hasan Al Bashri kepada Imam Umar bin Abdul Azizi, beliau berkata: â€œâ€¦Sesungguhnya dunia adalah negeri perantauan dan bukan tempat tinggal (yang sebenarnya), dan hanyalah Adam â€˜alaihis salam diturunkan ke dunia ini untuk menerima hukuman (akibat perbuatan dosanya)â€¦â€ (Dinukil oleh Ibnul Qayyim dalam kitab beliau Ighaatsatul Lahfaan (hal. 84 â€“ Mawaaridul Amaan.</p></div>																																				', 'dunia-ilustrasi-_140219111430-216.jpg', 'Selasa', '2017-12-19', '18:22:53'),
(32, 'Tentang Adab dan Akhlak', 1, 'N', '<p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"="">Ini adalah tentang adab dan akhlak kita sebagai seorang muslim terkait hubungan kita dengan pemeluk agama lain.</p><p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"="">Larangan Bagi MUSLIM Menghina Agama Lain:</p><p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"="">ï»­ï»» ïº—ïº´ïº’ï»®ïº ïºï»Ÿïº¬ï»³ï»¦ ï»³ïºªï»‹ï»®ï»¥ ï»£ï»¦ ïº©ï»­ï»¥ ïºï»Ÿï» ï»ª ï»“ï»´ïº´ïº’ï»®ïº ïºï»Ÿï» ï»ª ï»‹ïºªï»­ïº ïº‘ï»ï»´ïº® ï»‹ï» ï»¢<span class="text_exposed_show"><br>ï»›ïº¬ï»Ÿï»š ïº¯ï»³ï»¨ïºŽ ï»Ÿï»œï»ž ïºƒï»£ïº” ï»‹ï»¤ï» ï»¬ï»¢ ïº›ï»¢ ïº‡ï»Ÿï»° ïº­ïº‘ï»¬ï»¢ ï»£ïº®ïºŸï»Œï»¬ï»¢ ï»“ï»´ï»¨ïº’ïºŒï»¬ï»¢ ïº‘ï»¤ïºŽ ï»›ïºŽï»§ï»®ïº<br>ï»³ï»Œï»¤ï» ï»®ï»¥</span></p><div class="text_exposed_show" style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;"=""><p style="text-align: justify;">â€ dan janganlah kamu memaki sembahan-sembahan yang mereka sembah selain Allah, karena mereka nanti akan memaki Allah dengan melampaui batas tanpa pengetahuan. Demikianlah Kami jadikan Setiap umat menganggap baik pekerjaan mereka. kemudian kepada Tuhan merekalah kembali mereka, lalu Dia memberitakan kepada mereka apa yang dahulu mereka kerjakan.â€(QS AL Anâ€™am:108)</p><p style="text-align: justify;">Al-Imam Ibnu Katsir rahimahullah berkata tentang ayat tersebut : Allah SWT melarang Rasul-Nya, Muhammad SAW, dan orang-orang yang beriman mencaci Tuhan-tuhan kaum musyrikin, meskipun cacian itu mengandung kemaslahatan, hal itu menimbulkan kerusakan yang lebih besar daripada kemaslahatan itu sendiri, yaitu balasan orang-orang musyrik dengan cacian terhadap Tuhan orang-orang mukmin, padahal Allah adalah â€œRabb, yang tiada ilah selain Diaâ€¦.(Tafsiir Ibnu Katsiir Juz 7, Hal. 268, tahqiq :Syaikh Abdullah bin Muhammad Alu Syaikh.)</p><p style="text-align: justify;">Islam melarang ummatnya mencerca, atau mencaci penyembahan agama orang lain. menghina adalah sifat manusia yang mengikutkan hawa nafsu. Islam melarang kita memaksa orang lain agama untuk memeluk Islam.</p><p style="text-align: justify;">Islam agama yang benar, kewajibaan kita hanyalah menyampaikan,ataupun memanggil manusia kejalan yang benar, bukan dengan paksaan, tapi dengan kerelaan. Sebab paksaan akan menimbulkan hal-hal yang tidak baik, dan mengakibatkan hilangnya sifat ikhlas.</p></div>												', 'Adab-lebih-Utama-Ketimbang-Ilmu.jpg', 'Selasa', '2017-12-19', '01:12:04'),
(33, 'Bersikap Jujur dalam Berdagang', 2, 'N', '<p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"="">Dalam Al Qurâ€™an, keharusan bersikap jujur dalam berdagang, berniaga dan atau jual beli, sudah diterangkan dengan sangat jelas dan tegas yang antara lain kejujuran tersebu â€“di beberapa ayatâ€“ dihuhungkan dengan pelaksanaan timbangan, sebagaimana firman Allah SWT: â€œDan sempurnakanlah takaran dan timbangan dengan adilâ€. (Q.S Al Anâ€™aam(6): 152)</p><p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"="">Firman Allah SWT:</p><p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"="">â€œSempurnakanlah takaran dan janganlah kamu termasuk orang-orang yang merugikan, dan timbanglah dengan timbangan yang lur<span class="text_exposed_show">us. Dan janganlah kamu merugikan manusia pada hak-haknya dan janganlah kamu merajalela di muka bumi ini dengan membuat kerusakan.â€ (Q.S AsySyuâ€™araa(26): 181-183)</span></p><div class="text_exposed_show" style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;"=""><p style="text-align: justify;">â€œDan sempurnakanlah takaran apabila kamu menakar, dan timbanglah dengan neraca yang benar. ItuIah yang lebih utama (bagimu) dan lebih baik akibatnya.â€ (Q.S Al lsraa(17): 35)</p><p style="text-align: justify;">â€œDan tegakkanlah timbangan itu dengan adil dan janganlah kamu mengurangi neraca itu.â€ (Q.S Ar Rahmaan(55): 9)</p><p style="text-align: justify;">Dengan hanya menyimak ketiga ayat tersebut di atas, maka kita sudah dapat mengambil kesimpulan bahwa; sesungguhnya Allah SWT telah menganjurkan kepada seluruh ummat manusia pada umumnya, dan kepada para pedagang khususnya untuk berlaku jujur dalam menimbang, menakar dan mengukur barang dagangan.</p><p style="text-align: justify;">Penyimpangan dalam menimbang, menakar dan mengukur yang merupakan wujud kecurangan dalam perdagangan, sekalipun tidak begitu nampak kerugian dan kerusakan yang diakibatkannya pada manusia ketimbang tindak kejahatan yang lehih besar lagi seperti; perampokan, perampasan, pencu rian, korupsi, manipulasi, pemalsuan dan yang lainnya, nyatanya tetap diharamkan oleh Allah SWT dan Rasul-Nya. Mengapa?</p><p style="text-align: justify;">Jawabnya adalah; karena kebiasaan melakukan kecurangan menimbang, menakar dan mengukur dalam dunia perdagangan, akan menjadi cikal baka! dari bentuk kejahatan lain yang jauh lebih besar. Sehingga nampak pula bahwa adanya pengharaman serta larangan dari Islam tersebut, merupakan pencerminan dan sikap dan tindakan yang begitu bijak yakni, pencegahan sejak dini dari setiap bentuk kejahatan manusia yang akan merugikan manusia itu sendiri.</p></div>												', 'adab-adab-aturan-berdagang-dalam-islam.jpg', 'Selasa', '2017-12-19', '12:47:08'),
(34, 'Tanda Akhir Zaman', 1, 'N', '<p style="color: rgb(19, 19, 19); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">HIDUP di dunia ini hanyalah sementara. Ada saatnya kita akan merasakan kehancuran. Entah itu pada diri kita sendiri atau pun menimpa orang banyak, yang juga dapat kita rasakan. Ya, suatu kehancuran yang menimpa orang banyak, bahkan seluruh dunia ini, itulah yang kita ketahui sebagai akhir zaman. Di mana seluruh isi di bumi akan lenyap. Tak akan ada lagi kehidupan di muka bumi ini.</p><p style="color: rgb(19, 19, 19); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Sebelum hari yang entah kapan datangnya, akan ada tanda-tanda yang dapat kita rasakan menjelang akhir zaman. Salah satunya ialah tatanan masyarakat Islami yang hancur. Benarkah?</p><p style="color: rgb(19, 19, 19); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Ya, salah satu tanda-tanda akhir zaman adalah merebaknya penyakit jiwa yang menghancurkan tatanan masyarakat Islami. Di antaranya adalah sifat kikir.</p><p style="color: rgb(19, 19, 19); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Abu Hurairah Radhiyallahu â€˜Anhu menuturkan, bahwa Rasulullah ï·º bersabda, â€œDi balik tanda-tanda hari kiamat adalah menyebarnya sifat kikir,â€ (HR. Thabrani dalam Al-Awsath).</p><p style="color: rgb(19, 19, 19); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Anas Radhiyallahu â€˜Anhu menuturkan, bahwa Rasulullah ï·º bersabda, â€œKelak semua urusan akan bertambah sulit, dan manusia pun kian bertambah kikir,â€ (HR. Ibnu Majah dari sahabat Anas Radhiyallahu â€˜Anhu. Sanad hadis ini lemah, karena di dalam mata rantai periwayatannya terdapat nama Muhammad al-Jundi. Periwayatannya munkar (ditentang), sebagaimana dijelaskan oleh Nasaâ€™i dan yang lainnya).</p><p style="color: rgb(19, 19, 19); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Rasulullah ï·º juga bersabda, â€œZaman semakin terasa berdekatan, amal ibadah berkurang, sifat kikir bermunculan dan pembunuhan semakin merajalela,â€ (HR. Bukhari dan Muslim).</p><p style="color: rgb(19, 19, 19); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Sifat kikir adalah sifat pelit yang disertai ketamakan kepada harta dan segala sesuatu yang menghalangi jiwa agar tidak mengeluarkan harta, melakukan kebaikan atau melakukan ketaatan.</p><p style="color: rgb(19, 19, 19); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Rasulullah ï·º bersabda, â€œHari kiamat belum akan terjadi sampai nanti perbuatan nista merebak, orang saling berkata kotor, pemutusan hubungan tali silaturahmi dan buruknya kehidupan bertetangga,â€ (HR. Ahmad dan Hakim dalam Al-Mustadrak. Hadis ini oleh Imam Hakim dinilai sah).</p><p style="color: rgb(19, 19, 19); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Abu Hurairah meriwayatkan, bahwa Rasulullah ï·º bersabda, â€œDemi jiwa Muhammad yang berada di tangan-Nya, hari kiamat belum akan terjadi hingga perbuatan nista dan sifat kikir merebak, orang jujur dikatakan pengkhianat dan pengkhianat dipercaya, Al-Wuâ€™ul tidak ada lagi dan At-Tuhut bermunculan.â€</p><p style="color: rgb(19, 19, 19); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Para sahabat lalu bertanya, â€œWahai Rasulullah, apa yang dimaksud dengan Al-Wuâ€™ul dan At-Tuhut?â€</p><p style="color: rgb(19, 19, 19); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Beliau menjawab, â€œAl-Wuâ€™ul adalah para pemuka dan orang terpandang dalam satu masyarakat, sedangkan At-Tuhut adalah orang-orang hina yang tak terhormat dalam masyarakat dan tidak dikenal sebelumnya,â€ (HR. Hakim dalam Al-Mustadrak, dan Thabrani dalam Al-Awsath. Syaikh Al-Albani dalam As-Silsilah Ash-Shahihah dalam penjelasannya atas hadis no. 3211 menilainya shahih).</p><p style="color: rgb(19, 19, 19); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Apa yang diwartakan oleh Nabi benar-benar sudah terjadi. Kita dapat menyaksikan sendiri berbagai kerusakan yang muncul di tengah-tengah masyarakat. Kita bisa melihat semakin banyak tali silaturahmi yang putus, kehidupan bertetangga yang semakin buruk, orang mulai saling membenci dan saling menghindari satu sama lain. Padahal sebelumnya mereka saling mencintai, berhubungan dan berkasih sayang.</p><p style="color: rgb(19, 19, 19); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: justify;">Bahkan, seseorang sampai tidak tahu dengan siapa ia bertetangga, seseorang tidak tahu siapa saudaranya, dan apakah saudaranya sendiri masih hidup ataukah sudah meninggal.</p>', 'Tanda-Tanda-kiamat-menurut-Alquran-dan-Hadits.jpg', 'Minggu', '2017-12-17', '16:23:41'),
(35, 'Shalat Merupakan Pembeda', 2, 'N', '<p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"="">Rasulullah shallallahu alaihi wa salam bersabda,â€œSesungguhnya batasan antara seseorang dengan kekafiran dan kesyirikan adalah shalat. Barangsiapa meninggalkan shalat, maka ia kafirâ€ [3]. Salah seorang tabiâ€™in bernama Abdullah bin Syaqiqrahimahullah berkata, â€œDulu para shahabat Muhammad shallallahu â€˜alaihi wa sallam tidaklah pernah menganggap suatu amal yang apabila ditinggalkan menyebabkan kafir kecuali shalat.â€[4]</p><p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"="">Shalat adal<span class="text_exposed_show">ah tiang agama dan agama seseorang tidak tegak kecuali dengan menegakkan shalat</span></p><div class="text_exposed_show" style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;"=""><p style="text-align: justify;">Diriwayatkan dari Muâ€™adz bin Jabal, Nabi shallallahu â€˜alaihi wa sallam bersabda, â€Inti (pokok) segala perkara adalah Islam dan tiangnya (penopangnya) adalah shalat.â€[5]</p><p style="text-align: justify;">Amalan yang pertama kali akan dihisab pada hari kiamat</p><p style="text-align: justify;">Nabi shallallahu â€˜alaihi wa sallam bersabda, â€œSesungguhnya amal hamba yang pertama kali akan dihisab pada hari kiamat adalah shalatnya. Apabila shalatnya baik, dia akan mendapatkan keberuntungan dan keselamatan. Apabila shalatnya rusak, dia akan menyesal dan merugi. Jika ada yang kurang dari shalat wajibnya, Allah Tabaroka wa Taâ€™ala mengatakan,â€™Lihatlah apakah pada hamba tersebut memiliki amalan shalat sunnah?â€™ Maka shalat sunnah tersebut akan menyempurnakan shalat wajibnya yang kurang. Begitu juga amalan lainnya seperti itu.â€ Dalam riwayat lainnya, â€Kemudian zakat akan (diperhitungkan) seperti itu. Kemudian amalan lainnya akan dihisab seperti itu pula.â€</p></div>												', 'gerakan-shalat-ilustrasi-_140508163513-719.jpg', 'Minggu', '2017-12-17', '16:20:58'),
(42, 'Wanita', 2, 'N', '<p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"=""><span style="font-size: 18.6667px;">B</span>etapa hebat menjadi wanita. Lembut, penuh kasih, dilindungi, dihormati dan dihargai. Kehadirannya diperlukan oleh setiap manusia di semua peringkat usia. Sebagai anak dia menyenangkan. Sebagai saudara, dia menenteramkan. Sebagai isteri, dia menginspirasi. Sebagai ibu, dia pendidik ulung dan sebagai teman, dia dikenal sebagai penasihat yang ikhlas.</p><p style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" text-align:="" justify;"="">Di sebalik kekurangannya dari sisi akal dan agama, dalam banyak situasi, wanitalah pemeran utama di belakang layar. Baik pendidik<span class="text_exposed_show">an yang diterimanya, baiklah pula pengaruh yang dibawanya.</span></p><div class="text_exposed_show" style="color: rgb(19, 19, 19); font-family: " helvetica="" neue",="" helvetica,="" arial,="" sans-serif;"=""><p style="text-align: justify;">Boleh dikatakan, wanita adalah penentu jatuh atau tegaknya pria. Malah dalam banyak kisah dari seluruh dunia , dialah yang membangunkan pria, memberikan motivasi dan buah fikiran yang tak dapat ditepikan.</p><p style="text-align: justify;">Hal yang sama berlaku kepada keluarga Muslim-mukmin yang cinta li ilah li kalimatillah, jihad fi sabilillah.</p><p style="text-align: justify;">Dalam sebuah keluarga, posisi paling penting adalah sebagai isteri, karena dialah orang yang paling dekat dan paling mengerti suaminya. Di sinilah letaknya makna syarikatul hayah (pasangan kehidupan), yang setia menjadi sayap suami dalam keadaan suaminya hadir dan sewaktu ketiadaannya. Bersungguh-sungguh berusaha membantu secara hakiki dan maknawi dalam mencapai cita-cita hidup mulia atau mati syahid.</p><p style="text-align: justify;">Firman Allah Subhanahu wa-taâ€™ala (Ø³Ø¨Ø­Ø§Ù†Ù‡ Ùˆ ØªØ¹Ø§Ù„Ù‰â€Ž) di dalam surah At-Taubah, ayat 71;</p><p style="text-align: justify;">ÙˆÙŽØ§Ù„Ù’Ù…ÙØ¤Ù’Ù…ÙÙ†ÙÙˆÙ†ÙŽ ÙˆÙŽØ§Ù„Ù’Ù…ÙØ¤Ù’Ù…ÙÙ†ÙŽØ§ØªÙ Ø¨ÙŽØ¹Ù’Ø¶ÙÙ‡ÙÙ…Ù’ Ø£ÙŽÙˆÙ’Ù„ÙÙŠÙŽØ§Ø¡ Ø¨ÙŽØ¹Ù’Ø¶Ù ÙŠÙŽØ£Ù’Ù…ÙØ±ÙÙˆÙ†ÙŽ Ø¨ÙØ§Ù„Ù’Ù…ÙŽØ¹Ù’Ø±ÙÙˆÙÙ ÙˆÙŽÙŠÙŽÙ†Ù’Ù‡ÙŽÙˆÙ’Ù†ÙŽ Ø¹ÙŽÙ†Ù Ø§Ù„Ù’Ù…ÙÙ†ÙƒÙŽØ±Ù ÙˆÙŽÙŠÙÙ‚ÙÙŠÙ…ÙÙˆÙ†ÙŽ Ø§Ù„ØµÙŽÙ‘Ù„Ø§ÙŽØ©ÙŽ ÙˆÙŽÙŠÙØ¤Ù’ØªÙÙˆÙ†ÙŽ Ø§Ù„Ø²ÙŽÙ‘ÙƒÙŽØ§Ø©ÙŽ ÙˆÙŽÙŠÙØ·ÙÙŠØ¹ÙÙˆÙ†ÙŽ Ø§Ù„Ù„Ù‘Ù‡ÙŽ ÙˆÙŽØ±ÙŽØ³ÙÙˆÙ„ÙŽÙ‡Ù Ø£ÙÙˆÙ’Ù„ÙŽÙ€Ø¦ÙÙƒÙŽ Ø³ÙŽÙŠÙŽØ±Ù’Ø­ÙŽÙ…ÙÙ‡ÙÙ…Ù</p><p style="text-align: justify;">Ø§Ù„Ù„Ù‘Ù‡Ù Ø¥ÙÙ†ÙŽÙ‘ Ø§Ù„Ù„Ù‘Ù‡ÙŽ Ø¹ÙŽØ²ÙÙŠØ²ÙŒ Ø­ÙŽÙƒÙÙŠÙ…ÙŒ</p><p style="text-align: justify;"><strong>â€œDan orang-orang yang mukmin pria dan wanita, sebahagian daripada mereka adalah penolong bagi sebahagian yang lain, mereka menyuruh kepada yang makruf dan mencegah dari yang munkar, mereka mendirikan shalat, mengeluarkan zakat dan taâ€™at kepada Allah dan Rasulnya. Mereka itu akan dirahmati Allah. Sesungguhnya Allah Maha Kuat lagi Maha Bijaksana.â€</strong></p></div>																								', 'hipwee-1363261337496160472-750x422.jpg', 'Minggu', '2017-12-17', '16:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `nama_galeri` varchar(100) DEFAULT NULL,
  `filename` varchar(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `nama_galeri`, `filename`, `deskripsi`) VALUES
(18, 'Acara Khitanan Masal', 'dikhitan.jpg', 'Khitanan masal ratusan anak pesantren ar-rodiyah'),
(22, 'Penerimaan Santunan', 'IMG20170612172031-816x612.jpg', 'Murid panti asuhan yatim piatu ar-rodiyah saat menerima santunan.'),
(23, 'Makan Bersama', 'makanbersama.png', ''),
(25, 'Anak Santri', 'foto0081.jpg', '																								'),
(27, 'Tasmiyahan', 'Tasmiyahan-2.jpg', 'Tasmiyahan untuk Han Omar Muhajir'),
(28, 'Keluarga Besar Ar-rodiyah', '4.jpg', ''),
(39, 'Ketua dan Wakil Panti', 'b.jpg', ''),
(40, 'Santri Laki', 'e.jpg', 'foto bersama anggota TNI												'),
(41, 'Seluruh anak asuh', '1.jpg', ''),
(42, 'Rapat Besar', 'a.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'umum'),
(2, 'agama'),
(4, 'pendidikan');

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id_tamu` int(11) NOT NULL,
  `nama_tamu` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subjek` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `balas` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `nama_tamu`, `email`, `subjek`, `pesan`, `tanggal`, `jam`, `balas`) VALUES
(3, 'awesome', 'awesome@gmail.com', 'hallo', 'hehe', '2017-12-06', '20:24:47', 'ftghyhjgukhikj'),
(6, 'hallo', 'am@gmail.com', 'hallo', 'hallo', '2017-12-17', '16:54:40', ''),
(10, 'hallo', 'am@gmail.com', 'hallo', 'hallo', '2017-12-19', '01:20:49', ''),
(11, 'hallo', 'awesome@gmail.com', 'hallo', 'hallo', '2017-12-19', '13:15:59', ''),
(15, 'hallo', 'am@gmail.com', 'hallo', 'ggg', '2017-12-19', '22:19:56', 'ggg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `id_tamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
